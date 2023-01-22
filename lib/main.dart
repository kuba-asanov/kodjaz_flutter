/* External dependencies */
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/* Local dependencies */
import 'core/constants/app/app_constants.dart';
import 'core/init/lang/codegen_loader.g.dart';
import 'core/init/lang/language_manager.dart';
import 'core/injection/injection.dart';
import 'core/navigation/auto_route.gr.dart';
import 'core/navigation/navigation.dart';
import 'package:kodjaz/core/helpers/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await configureInjection();
  await ScreenUtil.ensureScreenSize();

  runApp(
    EasyLocalization(
      supportedLocales: LanguageManager.instance.supportedLocales,
      path: ApplicationConstants.languageAssetPath,
      saveLocale: true,
      assetLoader: const CodegenLoader(),
      fallbackLocale: LanguageManager.instance.supportedLocales.first,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = Navigation.router;

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
      title: 'Kodjaz app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          foregroundColor: KodJazColors.black,
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        primarySwatch: Colors.blue,
      ),
    );
  }
}
