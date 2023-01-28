/* External dependencies */
import 'package:injectable/injectable.dart';

/* Local dependencies */
import 'package:kodjaz/core/client/client.dart';
import 'package:kodjaz/features/models/track.dart';
import 'lesson_repository.dart';

@Injectable(as: LessonRepository)
class LessonRepositoryImpl implements LessonRepository {
  final Api _api;

  LessonRepositoryImpl(this._api);

  // @override
  // Future<List<Track>> listTracks() {
  //   try {
  //     return _api.client.listTracks();
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
