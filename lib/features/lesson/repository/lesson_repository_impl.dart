/* External dependencies */
import 'package:injectable/injectable.dart';

/* Local dependencies */
import 'package:kodjaz/core/client/client.dart';
import 'package:kodjaz/features/models/track.dart';
import '../model/run_code.dart';
import 'lesson_repository.dart';

@Injectable(as: LessonRepository)
class LessonRepositoryImpl implements LessonRepository {
  final Api _api;

  LessonRepositoryImpl(this._api);

  @override
  Future runCode(RunCode code) {
    try {
      return _api.client.runCode(code);
    } catch (e) {
      rethrow;
    }
  }
}
