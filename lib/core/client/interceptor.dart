import 'dart:developer';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:kodjaz/core/client/client.dart';
import 'package:kodjaz/core/constants/app/app_constants.dart';
import 'package:kodjaz/core/injection/injection.dart';

import '../helpers/exceptions.dart';
import '../helpers/heplers.dart';

class AppInterceptors extends Interceptor {
  final Dio dio;
  final String? accessToken;
  final PersistCookieJar? persistentCookies;

  AppInterceptors(
    this.dio, {
    this.accessToken,
    this.persistentCookies,
  });

  Future<Response<dynamic>> _retry(
      RequestOptions requestOptions, Dio dio) async {
    return await dio
        .fetch<Map<String, dynamic>>(requestOptions)
        .onError((error, stackTrace) {
      log('on AppInterceptors _retry  ${error.toString()}');
      throw Exception();
    });
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (persistentCookies != null) {
      List<Cookie?> cookies = await persistentCookies!
          .loadForRequest(Uri.parse(ApplicationConstants.endpoint));

      if (cookies.isNotEmpty) {
        final String? csrfTokenValue =
            cookies.firstWhere((c) => c?.name == 'csrftoken')?.value;

        if (csrfTokenValue != null) {
          dio.options.headers['Authorization'] = "Bearer $accessToken";
          dio.options.headers['X-CSRFToken'] =
              csrfTokenValue; //setting the csrftoken from the response in the headers
        }

        log("csrfTokenValue: $csrfTokenValue");
      }
    }

    return handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log('onError ==== ${err.error}   ||||  ${err.response?.data} |||| on Request: ${err.requestOptions.path}, request headers: ${err.requestOptions.headers}, body:${err.requestOptions.data}');

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

              if (err.response?.data["detail"] != null &&
                  err.response?.data["detail"] ==
                      'User is not subscribed to any tracks') {
                throw NotFoundException(err.requestOptions);
              }
            }
            {}
            throw BadRequestException(err.requestOptions);
          case 401:
            if (err.response?.data['detail'] ==
                'Authentication credentials were not provided.') {
              if (accessToken != null) {
                getIt<Api>()
                    .getCsrftoken(accessToken!, dio)
                    .then((_) => _retry(err.requestOptions, dio));

                return;
              }
            }

            if (err.response?.data['detail'] == 'Given token not valid for any token type') {
              refreshToken().then((token) {
                getIt<Api>()
                    .getCsrftoken(token.access!, dio)
                    .then((_) => _retry(err.requestOptions, dio));
              });

              return;
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
