import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kodjaz/core/client/client.dart';
import 'package:kodjaz/core/client/interceptor.dart';
import 'package:kodjaz/core/helpers/exceptions.dart';
import 'package:kodjaz/core/injection/injection.dart';
import 'package:kodjaz/features/app/data/models/user.dart';
import 'package:kodjaz/features/auth/bloc/auth_bloc.dart';
import 'package:kodjaz/features/auth/models/token.dart';
import 'package:kodjaz/features/auth/repository/auth_repository.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<UserCreateResponse> createUser(User user) async {
    final client = Api().createClient();

    try {
      final data = await client.createUser(user);

      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Token> checkUserToken(
      {required String email, required String password}) async {
    final client = Api().createClient();

    try {
      final data = await client
          .checkUserToken(SignInInfo(email: email, password: password));

      return data;
    } catch (e) {
      rethrow;
    }
  }
}
