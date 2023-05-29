/* Local dependencies */
import 'package:bilimapp/features/app/data/models/user.dart';
import 'package:bilimapp/features/auth/models/token.dart';

abstract class AuthRepository {
  Future<UserCreateResponse> createUser(User user);

  Future<Token> checkUserToken(
      {required String email, required String password});
}
