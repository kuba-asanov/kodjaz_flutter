import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:kodjaz/core/client/client.dart';
import 'package:kodjaz/core/constants/app/app_constants.dart';
import 'package:kodjaz/core/helpers/cache/cache.dart';
import 'package:kodjaz/core/injection/injection.dart';
import 'package:kodjaz/features/auth/bloc/auth_bloc.dart';
import 'package:kodjaz/features/auth/models/token.dart';

import '../helpers/exceptions.dart';

class AppInterceptors extends Interceptor {
  final Dio dio;

  AppInterceptors(this.dio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO: implement onRequest
    super.onRequest(options, handler);
  }

  // @override
  // void onRequest(
  //     RequestOptions options, RequestInterceptorHandler handler) async {
  //   var accessToken = await TokenRepository().getAccessToken();

  //   if (accessToken != null) {
  //     var expiration = await TokenRepository().getAccessTokenRemainingTime();

  //     if (expiration.inSeconds < 60) {
  //       dio.interceptors.requestLock.lock();

  //       // Call the refresh endpoint to get a new token
  //       await UserService()
  //           .refresh()
  //           .then((response) async {
  //         await TokenRepository().persistAccessToken(response.accessToken);
  //         accessToken = response.accessToken;
  //       }).catchError((error, stackTrace) {
  //         handler.reject(error, true);
  //       }).whenComplete(() => dio.interceptors.requestLock.unlock());
  //     }

  //     options.headers['Authorization'] = 'Bearer $accessToken';
  //   }

  //   return handler.next(options);
  // }

  Future<Token> refreshToken() async {
    final token = Cache.getSession();
    final client = Api().createClient();

    print(token?.refresh);

    try {
      final data = await client.refreshToken({"refresh": token?.refresh ?? ''});

      log('=====Token refreshed==== \n$data');

      Cache.putSession(data);

      return data;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final Dio _dio = Dio();

    return await _dio
        .fetch<Map<String, dynamic>>(requestOptions)
        .onError((error, stackTrace) {
      log('on AppInterceptors _retry  ${error.toString()}');
      throw Exception();
    });
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    log('onError ==== ${err.error}   ||||  ${err.response?.data} |||| on Request: ${err.requestOptions.path}, request headers: ${err.requestOptions.headers}');

    switch (err.type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        throw DeadlineExceededException(err.requestOptions);
      case DioErrorType.response:
        switch (err.response?.statusCode) {
          case 400:
            if (err.response?.data != null) {
              if (err.response?.data["email"] != null &&
                  err.response?.data["email"][0] ==
                      'A user is already registered with this e-mail address.') {
                throw UserAlerdySignUpException(err.requestOptions);
              }

              if (err.response?.data["password1"] != null &&
                  err.response?.data["password1"][0] ==
                      'This password is entirely numeric.') {
                throw OnlyNumbersException(err.requestOptions);
              }
              if (err.response?.data["password1"] != null &&
                  err.response?.data["password1"][0] ==
                      'This password is too common.') {
                throw PasswordIsTooCommonException(err.requestOptions);
              }
            }
            {}
            throw BadRequestException(err.requestOptions);
          case 401:
            if (err.response?.data['detail'] ==
                'Authentication credentials were not provided.') {
              // await refreshToken().then((value) => _retry);
              await _retry(err.requestOptions);
            }
            throw UnauthorizedException(err.requestOptions);
          case 404:
            throw NotFoundException(err.requestOptions);
          case 409:
            throw ConflictException(err.requestOptions);
          case 500:
            throw InternalServerErrorException(err.requestOptions);
        }
        break;
      case DioErrorType.cancel:
        break;
      case DioErrorType.other:
        throw NoInternetConnectionException(err.requestOptions);
    }

    return handler.next(err);
  }
}
