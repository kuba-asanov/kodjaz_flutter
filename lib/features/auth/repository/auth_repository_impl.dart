/* External dependencies */
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

/* Local dependencies */
import 'package:kodjaz/core/client/client.dart';
import 'package:kodjaz/features/auth/models/token.dart';
import 'package:kodjaz/features/auth/repository/auth_repository.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final Api _api;

  AuthRepositoryImpl(this._api);

  @override
  Future<Token> checkUserToken(
      {required String email, required String password}) async {
    try {
      final data = await _api.client
          .checkUserToken(SignInInfo(email: email, password: password))
          .catchError((Object obj) {
        // non-200 error goes here.
        switch (obj.runtimeType) {
          case DioError:
            // Here's the sample to get the failed response error code and message
            final res = (obj as DioError).response;
            log("Got error : ${res?.statusCode} -> ${res?.statusMessage}");
            break;
          default:
            break;
        }
      });

      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> createUser() {
    // TODO: implement createUser
    throw UnimplementedError();
  }
}
