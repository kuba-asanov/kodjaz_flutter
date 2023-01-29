/* External dependencies */
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kodjaz/core/client/interceptor.dart';

/* Local dependencies */
import 'package:kodjaz/core/constants/app/app_constants.dart';
import 'package:kodjaz/core/helpers/cache/cache.dart';
import 'package:kodjaz/core/injection/injection.dart';
import 'package:kodjaz/features/app/data/models/user.dart';
import 'package:kodjaz/features/auth/bloc/auth_bloc.dart';
import 'package:kodjaz/features/auth/models/token.dart';
import 'package:kodjaz/features/models/track.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/lesson/model/run_code.dart';

part 'client.g.dart';

class Api {
  RestClient createClient() {
    final Token? token = getIt<AuthBloc>().state.token;
    var dio = Dio(BaseOptions(
      receiveTimeout: 15000, // 15 seconds
      connectTimeout: 15000,
      sendTimeout: 15000,
    ));

    if (token != null) {
      dio.options.headers["X-CSRFToken"] = Cache.getSession()?.access;
    }

    dio.interceptors.addAll({AppInterceptors(dio)});

    return RestClient(dio);
  }
}

@RestApi(baseUrl: ApplicationConstants.endpoint)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST("/token/obtain/")
  Future<Token> checkUserToken(@Body() SignInInfo signInInfo);

  @POST("/token/refresh/")
  Future<Token> refreshToken(@Body() Map<String, dynamic> refreshToken);

  @POST("/registration/")
  Future<UserCreateResponse> createUser(@Body() User user);

  @GET("/v1/tracks/")
  Future<List<Track>> listTracks();

  @POST("/v1/user/submissions/")
  Future runCode(@Body() RunCode code);

  @GET("/v1/user/tracks/")
  Future<List<Track>> myListTracks();
}
