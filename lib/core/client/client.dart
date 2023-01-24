import 'package:injectable/injectable.dart';
import 'package:kodjaz/core/constants/app/app_constants.dart';
import 'package:kodjaz/features/models/track.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

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

    dio.options.headers["X-CSRFToken"] =
        "rq7kQoqTtTNFYsvWd8qbYYNQgWlSkPjWh0YzQEa7hivt94AAfbHbtDp6LnLeDhNk";

    // dio.interceptors.addAll({
    //   AppInterceptors(dio),
    // });

    return RestClient(dio);
  }
}

@RestApi(baseUrl: ApplicationConstants.endpoint)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/tracks")
  Future<List<Track>> getTracks();

  @GET("/track/{id}")
  Future<Track> getTrack(@Path("id") String id);
}
