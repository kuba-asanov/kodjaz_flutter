/* External dependencies */
import 'package:auto_route/auto_route.dart';

/* Local dependencies */
import 'package:bilimapp/features/auth/presentation/login/login_page.dart';
import 'package:bilimapp/features/auth/presentation/signup/sign_up_page.dart';
import 'package:bilimapp/features/books/presentation/books_detail_page.dart';
import 'package:bilimapp/features/courses/presentation/course_detail_page.dart';

import '../../features/app/presentation/navigation_page.dart';
import '../../features/articles/presentation/article_detail_page.dart';
import '../../features/books/presentation/widgets/pdf_page.dart';
import '../../features/lesson/presentation/exercise_page.dart';
import '../../features/quiz/presentation/quiz_instruction_page.dart';
import '../../features/quiz/presentation/quiz_page.dart';
import '../../features/splash_screen/splash_screen_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreenPage),
    AutoRoute(page: NavigationPage),
    AutoRoute(page: CourseDetailPage),
    AutoRoute(page: ExercisePage),
    AutoRoute(page: LoginPage),
    AutoRoute(page: SignUpPage),
    AutoRoute(page: QuiaInstructionPage),
    AutoRoute(page: TestPage),
    AutoRoute(page: ArticleDetailPage),
    AutoRoute(page: BooksDetailPage),
    AutoRoute(page: PdfPage)

    // RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
