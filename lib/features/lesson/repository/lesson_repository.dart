/* Local dependencies */
import '../model/run_code.dart';

abstract class LessonRepository {
  Future<CodeAnswer> runCode(RunCode code);
}
