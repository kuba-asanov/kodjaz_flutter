/* External dependencies */
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:bilimapp/core/client/interceptor.dart';

/* Local dependencies */
import 'package:bilimapp/core/constants/app/app_constants.dart';
import 'package:bilimapp/features/app/data/models/user.dart';
import 'package:bilimapp/features/auth/models/token.dart';
import 'package:bilimapp/features/models/track.dart';
import 'package:path_provider/path_provider.dart';
import 'package:retrofit/retrofit.dart' as retro;

import '../../features/lesson/model/run_code.dart';

part 'client.g.dart';

@singleton
class Api {
  late RestClient client;

  Future<void> getCsrftoken(String accessToken, Dio dio) async {
    try {
      final Directory appDocDir = await getApplicationDocumentsDirectory();
      final String appDocPath = appDocDir.path;

      final PersistCookieJar persistentCookies = PersistCookieJar(
        ignoreExpires: true,
        storage: FileStorage("$appDocPath/.cookies/"),
      );

      persistentCookies.deleteAll();
      dio.interceptors.add(CookieManager(persistentCookies));
      dio.options = BaseOptions(
        baseUrl: ApplicationConstants.endpoint,
        contentType: "application/json",
        responseType: ResponseType.plain,
        connectTimeout: 5000,
        receiveTimeout: 100000,
      );
      dio.interceptors.add(AppInterceptors(
        dio,
        accessToken: accessToken,
        persistentCookies: persistentCookies,
      ));

      await dio.get("/csrf/");

      return;
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");

      return;
    }
  }

  Future<void> initClient({String? accessToken}) async {
    final Dio dio = Dio();

    if (accessToken != null) {
      await getCsrftoken(accessToken, dio);
    } else {
      dio.interceptors.add(AppInterceptors(dio));
    }

    client = RestClient(dio);
  }
}

@retro.RestApi(baseUrl: ApplicationConstants.endpoint)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @retro.GET("/csrf/")
  Future getCsrf();

  @retro.POST("/token/obtain/")
  Future<Token> checkUserToken(@retro.Body() SignInInfo signInInfo);

  @retro.POST("/token/refresh/")
  Future<Token> refreshToken(@retro.Body() Map<String, dynamic> refreshToken);

  @retro.POST("/registration/")
  Future<UserCreateResponse> createUser(@retro.Body() User user);

  @retro.GET("/v1/tracks/")
  Future<List<Track>> listTracks();

  @retro.POST("/v1/user/submissions/")
  Future<CodeAnswer> runCode(@retro.Body() RunCode code);

  @retro.GET("/v1/user/tracks/")
  Future<List<Track>> myListTracks();
}
