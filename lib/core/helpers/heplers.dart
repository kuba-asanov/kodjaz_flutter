import 'dart:developer';

import '../../features/auth/models/token.dart';
import '../client/client.dart';
import '../injection/injection.dart';
import 'cache/cache.dart';

Future<Token> refreshToken() async {
  final token = Cache.getSession();
  final client = getIt<Api>().client;

  try {
    final data = await client.refreshToken({"refresh": token?.refresh ?? ''});

    log('=====Token refreshed==== \n$data');

    Cache.putSession(data);

    return data;
  } catch (e) {
    rethrow;
  }
}
