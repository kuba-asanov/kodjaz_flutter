import 'package:auto_route/auto_route.dart';

import '../../features/app/presentation/navigation_page.dart';
import '../../features/splash_screen/splash_screen_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashScreenPage,
      initial: true,
    ),
    AutoRoute(page: NavigationPage),
    // RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
