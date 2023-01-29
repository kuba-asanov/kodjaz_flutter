import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kodjaz/core/client/client.dart';
import 'package:kodjaz/core/client/interceptor.dart';
import 'package:kodjaz/core/helpers/exceptions.dart';
import 'package:kodjaz/features/app/data/models/user.dart';
import 'package:kodjaz/features/auth/models/token.dart';
import 'package:kodjaz/features/auth/repository/auth_repository.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final Api _api;

  AuthRepositoryImpl(this._api);

  @override
  Future<UserCreateResponse> createUser(User user) async {
    try {
      final data = await _api.client.createUser(user);

      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Token> checkUserToken(
      {required String email, required String password}) async {
    try {
      final data = await _api.client
          .checkUserToken(SignInInfo(email: email, password: password));

      return data;
    } catch (e) {
      rethrow;
    }
  }
}
