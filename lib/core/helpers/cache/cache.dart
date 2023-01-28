/* External dependencies */
import 'package:hive/hive.dart';

/* Local dependencies */
import 'package:kodjaz/features/app/data/models/user.dart';
import 'package:kodjaz/features/auth/models/token.dart';

class Cache {
  static Token? getSession() {
    final userInfoBox = Hive.box('session');
    final String? accessToken = userInfoBox.get('accessToken');
    final String? refreshToken = userInfoBox.get('refreshToken');
    if (accessToken == null && refreshToken == null) {
      return null;
    }
    return Token(access: accessToken, refresh: refreshToken);
  }

  static void putSession(Token token) {
    final userInfoBox = Hive.box('session');
    userInfoBox.put('accessToken', token.access);
    userInfoBox.put('refreshToken', token.refresh);
  }

  static void clearSession() {
    final userInfoBox = Hive.box('session');
    userInfoBox.deleteAll(['accessToken', 'refreshToken']);
  }
}
