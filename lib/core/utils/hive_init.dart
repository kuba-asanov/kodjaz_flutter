// ignore_for_file: depend_on_referenced_packages

/* External dependencies */
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';

/* Local dependencies */
import 'package:bilimapp/core/constants/app/app_constants.dart';

Future<void> initHive({
  String? subDir,
  Iterable<String> boxes = const [
    ApplicationConstants.session,
  ],
}) async {
  if (!kIsWeb) {
    var appDir = await getApplicationDocumentsDirectory();
    var path = appDir.path;

    if (subDir != null) {
      path = join(path, subDir);
    }

    Hive.init(path);
  }

  for (var box in boxes) {
    await Hive.openBox(box);
  }
}
