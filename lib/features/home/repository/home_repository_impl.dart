/* External dependencies */
import 'package:injectable/injectable.dart';

/* Local dependencies */
import 'package:bilimapp/core/client/client.dart';
import 'package:bilimapp/features/models/track.dart';
import '../../../core/injection/injection.dart';
import 'home_repository.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl();

  @override
  Future<List<Track>> listTracks() {
    final client = getIt<Api>().client;
    try {
      return client.listTracks();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Track>> myListTracks() {
    final client = getIt<Api>().client;
    try {
      return client.myListTracks();
    } catch (e) {
      rethrow;
    }
  }
}
