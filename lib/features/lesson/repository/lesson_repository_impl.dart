/* External dependencies */
import 'package:injectable/injectable.dart';

/* Local dependencies */
import 'package:kodjaz/core/client/client.dart';
import 'package:kodjaz/features/models/track.dart';
import '../model/run_code.dart';
import 'lesson_repository.dart';

@Injectable(as: LessonRepository)
class LessonRepositoryImpl implements LessonRepository {
  @override
  Future runCode(RunCode code) {
    final client = Api().createClient();
    try {
      return client.runCode(code);
    } catch (e) {
      rethrow;
    }
  }
}
