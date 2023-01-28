/* Local dependencies */
import 'package:kodjaz/features/app/data/models/user.dart';
import 'package:kodjaz/features/auth/models/token.dart';

abstract class AuthRepository {
  Future<UserCreateResponse> createUser(User user);

  Future<Token> checkUserToken(
      {required String email, required String password});
}
