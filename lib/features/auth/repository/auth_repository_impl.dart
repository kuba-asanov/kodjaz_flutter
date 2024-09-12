
import 'package:injectable/injectable.dart';
import 'package:bilimapp/core/client/client.dart';

import 'package:bilimapp/core/injection/injection.dart';
import 'package:bilimapp/features/app/data/models/user.dart';

import 'package:bilimapp/features/auth/models/token.dart';
import 'package:bilimapp/features/auth/repository/auth_repository.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<UserCreateResponse> createUser(User user) async {
    final client = getIt<Api>().client;

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
    final client = getIt<Api>().client;

    try {
      final data = await client
          .checkUserToken(SignInInfo(email: email, password: password));

      return data;
    } catch (e) {
      rethrow;
    }
  }
}
