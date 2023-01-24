/* External dependencies */
import 'package:injectable/injectable.dart';

/* Local dependencies */
import 'package:kodjaz/core/client/client.dart';
import 'package:kodjaz/features/models/track.dart';
import 'home_repository.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final Api _api;

  HomeRepositoryImpl(this._api);

  @override
  Future<List<Track>> listTracks() {
    try {
      return _api.client.getTracks();
    } catch (e) {
      rethrow;
    }
  }
}
