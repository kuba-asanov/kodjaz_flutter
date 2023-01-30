/* External dependencies */
import 'package:injectable/injectable.dart';

/* Local dependencies */
import 'package:kodjaz/core/client/client.dart';
import '../model/run_code.dart';
import 'lesson_repository.dart';

@Injectable(as: LessonRepository)
class LessonRepositoryImpl implements LessonRepository {
  LessonRepositoryImpl(this.api);

  final Api api;

  @override
  Future<CodeAnswer> runCode(RunCode code) {
    try {
      return api.client.runCode(code);
    } catch (e) {
      rethrow;
    }
  }
}
