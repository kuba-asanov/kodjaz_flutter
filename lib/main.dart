/* External dependencies */
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:kodjaz/core/client/client.dart';

/* Local dependencies */
import 'core/constants/app/app_constants.dart';
import 'core/init/lang/codegen_loader.g.dart';
import 'core/init/lang/language_manager.dart';
import 'core/injection/injection.dart';
import 'core/navigation/auto_route.gr.dart';
import 'core/navigation/navigation.dart';
import 'package:kodjaz/core/helpers/colors.dart';
import 'package:kodjaz/core/utils/hive_init.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await configureInjection();
  await ScreenUtil.ensureScreenSize();
  await initHive();
  await getIt<Api>().initClient();

  runApp(
    EasyLocalization(
      supportedLocales: LanguageManager.instance.supportedLocales,
      path: ApplicationConstants.languageAssetPath,
      saveLocale: true,
      startLocale: LanguageManager.instance.kyLocale,
      assetLoader: const CodegenLoader(),
      fallbackLocale: LanguageManager.instance.supportedLocales.first,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = Navigation.router;

  MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(
        initialRoutes: [const SplashScreenRoute()],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'bilimapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          foregroundColor: KodJazColors.black,
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        primaryColor: KodJazColors.PrimaryColor,
        // primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xffF8F9FD),
      ),
      builder: FlutterSmartDialog.init(),
    );
  }
}
