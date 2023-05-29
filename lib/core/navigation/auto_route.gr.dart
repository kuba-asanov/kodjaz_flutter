// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:kodjaz/core/utils/timer/cubit/timer_cubit.dart' as _i13;
import 'package:kodjaz/features/app/presentation/navigation_page.dart' as _i2;
import 'package:kodjaz/features/articles/data/models/article.dart' as _i15;
import 'package:kodjaz/features/articles/presentation/article_detail_page.dart'
    as _i9;
import 'package:kodjaz/features/auth/presentation/login/login_page.dart' as _i5;
import 'package:kodjaz/features/auth/presentation/signup/sign_up_page.dart'
    as _i6;
import 'package:kodjaz/features/courses/presentation/course_detail_page.dart'
    as _i3;
import 'package:kodjaz/features/lesson/presentation/exercise_page.dart' as _i4;
import 'package:kodjaz/features/models/track.dart' as _i12;
import 'package:kodjaz/features/quiz/models/quiz.dart' as _i14;
import 'package:kodjaz/features/quiz/presentation/quiz_instruction_page.dart'
    as _i7;
import 'package:kodjaz/features/quiz/presentation/quiz_page.dart' as _i8;
import 'package:kodjaz/features/splash_screen/splash_screen_page.dart' as _i1;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreenPage(),
      );
    },
    NavigationRoute.name: (routeData) {
      final args = routeData.argsAs<NavigationRouteArgs>(
          orElse: () => const NavigationRouteArgs());
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.NavigationPage(key: args.key),
      );
    },
    CourseDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CourseDetailRouteArgs>();
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.CourseDetailPage(
          course: args.course,
          key: args.key,
        ),
      );
    },
    ExerciseRoute.name: (routeData) {
      final args = routeData.argsAs<ExerciseRouteArgs>();
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i4.ExercisePage(
          key: args.key,
          exercise: args.exercise,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.SignUpPage(),
      );
    },
    QuiaInstructionRoute.name: (routeData) {
      final args = routeData.argsAs<QuiaInstructionRouteArgs>();
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i7.QuiaInstructionPage(
          quizId: args.quizId,
          key: args.key,
        ),
      );
    },
    TestRoute.name: (routeData) {
      final args =
          routeData.argsAs<TestRouteArgs>(orElse: () => const TestRouteArgs());
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i8.TestPage(
          key: args.key,
          timerCubitForTest: args.timerCubitForTest,
          quiz: args.quiz,
        ),
      );
    },
    ArticleDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ArticleDetailRouteArgs>();
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i9.ArticleDetailPage(
          key: args.key,
          article: args.article,
        ),
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          SplashScreenRoute.name,
          path: '/splash-screen-page',
        ),
        _i10.RouteConfig(
          NavigationRoute.name,
          path: '/navigation-page',
        ),
        _i10.RouteConfig(
          CourseDetailRoute.name,
          path: '/course-detail-page',
        ),
        _i10.RouteConfig(
          ExerciseRoute.name,
          path: '/exercise-page',
        ),
        _i10.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i10.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
        _i10.RouteConfig(
          QuiaInstructionRoute.name,
          path: '/quia-instruction-page',
        ),
        _i10.RouteConfig(
          TestRoute.name,
          path: '/test-page',
        ),
        _i10.RouteConfig(
          ArticleDetailRoute.name,
          path: '/article-detail-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreenPage]
class SplashScreenRoute extends _i10.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/splash-screen-page',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.NavigationPage]
class NavigationRoute extends _i10.PageRouteInfo<NavigationRouteArgs> {
  NavigationRoute({_i11.Key? key})
      : super(
          NavigationRoute.name,
          path: '/navigation-page',
          args: NavigationRouteArgs(key: key),
        );

  static const String name = 'NavigationRoute';
}

class NavigationRouteArgs {
  const NavigationRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'NavigationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.CourseDetailPage]
class CourseDetailRoute extends _i10.PageRouteInfo<CourseDetailRouteArgs> {
  CourseDetailRoute({
    required _i12.Track course,
    _i11.Key? key,
  }) : super(
          CourseDetailRoute.name,
          path: '/course-detail-page',
          args: CourseDetailRouteArgs(
            course: course,
            key: key,
          ),
        );

  static const String name = 'CourseDetailRoute';
}

class CourseDetailRouteArgs {
  const CourseDetailRouteArgs({
    required this.course,
    this.key,
  });

  final _i12.Track course;

  final _i11.Key? key;

  @override
  String toString() {
    return 'CourseDetailRouteArgs{course: $course, key: $key}';
  }
}

/// generated route for
/// [_i4.ExercisePage]
class ExerciseRoute extends _i10.PageRouteInfo<ExerciseRouteArgs> {
  ExerciseRoute({
    _i11.Key? key,
    required _i12.Exercise exercise,
  }) : super(
          ExerciseRoute.name,
          path: '/exercise-page',
          args: ExerciseRouteArgs(
            key: key,
            exercise: exercise,
          ),
        );

  static const String name = 'ExerciseRoute';
}

class ExerciseRouteArgs {
  const ExerciseRouteArgs({
    this.key,
    required this.exercise,
  });

  final _i11.Key? key;

  final _i12.Exercise exercise;

  @override
  String toString() {
    return 'ExerciseRouteArgs{key: $key, exercise: $exercise}';
  }
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i6.SignUpPage]
class SignUpRoute extends _i10.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i7.QuiaInstructionPage]
class QuiaInstructionRoute
    extends _i10.PageRouteInfo<QuiaInstructionRouteArgs> {
  QuiaInstructionRoute({
    required String quizId,
    _i11.Key? key,
  }) : super(
          QuiaInstructionRoute.name,
          path: '/quia-instruction-page',
          args: QuiaInstructionRouteArgs(
            quizId: quizId,
            key: key,
          ),
        );

  static const String name = 'QuiaInstructionRoute';
}

class QuiaInstructionRouteArgs {
  const QuiaInstructionRouteArgs({
    required this.quizId,
    this.key,
  });

  final String quizId;

  final _i11.Key? key;

  @override
  String toString() {
    return 'QuiaInstructionRouteArgs{quizId: $quizId, key: $key}';
  }
}

/// generated route for
/// [_i8.TestPage]
class TestRoute extends _i10.PageRouteInfo<TestRouteArgs> {
  TestRoute({
    _i11.Key? key,
    _i13.TimerCubit? timerCubitForTest,
    _i14.Quiz? quiz,
  }) : super(
          TestRoute.name,
          path: '/test-page',
          args: TestRouteArgs(
            key: key,
            timerCubitForTest: timerCubitForTest,
            quiz: quiz,
          ),
        );

  static const String name = 'TestRoute';
}

class TestRouteArgs {
  const TestRouteArgs({
    this.key,
    this.timerCubitForTest,
    this.quiz,
  });

  final _i11.Key? key;

  final _i13.TimerCubit? timerCubitForTest;

  final _i14.Quiz? quiz;

  @override
  String toString() {
    return 'TestRouteArgs{key: $key, timerCubitForTest: $timerCubitForTest, quiz: $quiz}';
  }
}

/// generated route for
/// [_i9.ArticleDetailPage]
class ArticleDetailRoute extends _i10.PageRouteInfo<ArticleDetailRouteArgs> {
  ArticleDetailRoute({
    _i11.Key? key,
    required _i15.Article article,
  }) : super(
          ArticleDetailRoute.name,
          path: '/article-detail-page',
          args: ArticleDetailRouteArgs(
            key: key,
            article: article,
          ),
        );

  static const String name = 'ArticleDetailRoute';
}

class ArticleDetailRouteArgs {
  const ArticleDetailRouteArgs({
    this.key,
    required this.article,
  });

  final _i11.Key? key;

  final _i15.Article article;

  @override
  String toString() {
    return 'ArticleDetailRouteArgs{key: $key, article: $article}';
  }
}
