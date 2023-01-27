/* Local dependencies */
import 'package:kodjaz/features/auth/models/token.dart';

abstract class AuthRepository {
  Future<void> createUser();
  Future<Token> checkUserToken({required String email, required String password});
}
