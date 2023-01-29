/* External dependencies */
import 'package:auto_route/auto_route.dart';

/* Local dependencies */
import 'package:kodjaz/features/auth/presentation/login/login_page.dart';
import 'package:kodjaz/features/auth/presentation/signup/sign_up_page.dart';
import 'package:kodjaz/features/courses/presentation/course_detail_page.dart';

import '../../features/app/presentation/navigation_page.dart';
import '../../features/lesson/presentation/exercise_page.dart';
import '../../features/splash_screen/splash_screen_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashScreenPage,
      initial: true,
    ),
    AutoRoute(page: NavigationPage),
    AutoRoute(page: CourseDetailPage),
    AutoRoute(page: ExercisePage),
    AutoRoute(page: LoginPage),
    AutoRoute(page: SignUpPage),
    // RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
