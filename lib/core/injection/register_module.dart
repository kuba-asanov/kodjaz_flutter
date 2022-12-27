import 'package:injectable/injectable.dart';

import '../navigation/auto_route.gr.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  AppRouter get router => AppRouter();

  // @preResolve
  // @lazySingleton
  // Future<Box> get openBox async {
  //   final appDocumentDir = await getApplicationDocumentsDirectory();
  //   Hive.init(appDocumentDir.path);

  //   return HiveStore.openBox(graphQLBox);
  // }

}
