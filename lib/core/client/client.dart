/* External dependencies */
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kodjaz/core/client/interceptor.dart';

/* Local dependencies */
import 'package:kodjaz/core/constants/app/app_constants.dart';
import 'package:kodjaz/features/app/data/models/user.dart';
import 'package:kodjaz/features/auth/models/token.dart';
import 'package:kodjaz/features/models/track.dart';
import 'package:retrofit/retrofit.dart';

part 'client.g.dart';

@singleton
class Api {
  final client = createClient();

  static RestClient createClient() {
    var dio = Dio(BaseOptions(
      receiveTimeout: 15000, // 15 seconds
      connectTimeout: 15000,
      sendTimeout: 15000,
    ));

    // dio.options.headers["X-CSRFToken"] =
    //     "rq7kQoqTtTNFYsvWd8qbYYNQgWlSkPjWh0YzQEa7hivt94AAfbHbtDp6LnLeDhNk";
    dio.options.headers["X-CSRFToken"] =
        "hjUSFfQCAvSuHxhoD4xY4DfRNcRt81NgFvnIJ0CljaBCgQQUbuyQAxgTGFTFMjtU";

    dio.interceptors.addAll({AppInterceptors(dio)});

    return RestClient(dio);
  }
}

@RestApi(baseUrl: ApplicationConstants.endpoint)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST("/token/obtain/")
  Future<Token> checkUserToken(@Body() SignInInfo signInInfo);

  @POST("/registration/")
  Future<UserCreateResponse> createUser(@Body() User user);

  @GET("/v1/track/{id}")
  Future<Track> getTrack(@Path("id") String id);

  @GET("/v1/tracks")
  Future<List<Track>> getTracks();
}
