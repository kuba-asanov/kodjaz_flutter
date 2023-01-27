/* External dependencies */
import 'package:hive/hive.dart';

/* Local dependencies */
import 'package:kodjaz/features/app/data/models/user.dart';

class Cache {
  static User? getUser() {
    final userInfoBox = Hive.box('userInfo');
    final String? email = userInfoBox.get('email');
    final String? password = userInfoBox.get('password');
    if (email == null && password == null) {
      return null;
    }
    return User(email: email, password: password);
  }
}
