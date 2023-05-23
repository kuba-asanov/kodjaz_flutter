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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:kodjaz/features/app/presentation/navigation_page.dart' as _i2;
import 'package:kodjaz/features/articles/data/models/article.dart' as _i11;
import 'package:kodjaz/features/articles/presentation/article_detail_page.dart'
    as _i7;
import 'package:kodjaz/features/auth/presentation/login/login_page.dart' as _i5;
import 'package:kodjaz/features/auth/presentation/signup/sign_up_page.dart'
    as _i6;
import 'package:kodjaz/features/courses/presentation/course_detail_page.dart'
    as _i3;
import 'package:kodjaz/features/lesson/presentation/exercise_page.dart' as _i4;
import 'package:kodjaz/features/models/track.dart' as _i10;
import 'package:kodjaz/features/splash_screen/splash_screen_page.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreenPage(),
      );
    },
    NavigationRoute.name: (routeData) {
      final args = routeData.argsAs<NavigationRouteArgs>(
          orElse: () => const NavigationRouteArgs());
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.NavigationPage(key: args.key),
      );
    },
    CourseDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CourseDetailRouteArgs>();
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.CourseDetailPage(
          course: args.course,
          key: args.key,
        ),
      );
    },
    ExerciseRoute.name: (routeData) {
      final args = routeData.argsAs<ExerciseRouteArgs>();
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i4.ExercisePage(
          key: args.key,
          exercise: args.exercise,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.SignUpPage(),
      );
    },
    ArticleDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ArticleDetailRouteArgs>();
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i7.ArticleDetailPage(
          key: args.key,
          article: args.article,
        ),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          NavigationRoute.name,
          path: '/navigation-page',
        ),
        _i8.RouteConfig(
          CourseDetailRoute.name,
          path: '/course-detail-page',
        ),
        _i8.RouteConfig(
          ExerciseRoute.name,
          path: '/exercise-page',
        ),
        _i8.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i8.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
        _i8.RouteConfig(
          ArticleDetailRoute.name,
          path: '/article-detail-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreenPage]
class SplashScreenRoute extends _i8.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.NavigationPage]
class NavigationRoute extends _i8.PageRouteInfo<NavigationRouteArgs> {
  NavigationRoute({_i9.Key? key})
      : super(
          NavigationRoute.name,
          path: '/navigation-page',
          args: NavigationRouteArgs(key: key),
        );

  static const String name = 'NavigationRoute';
}

class NavigationRouteArgs {
  const NavigationRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'NavigationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.CourseDetailPage]
class CourseDetailRoute extends _i8.PageRouteInfo<CourseDetailRouteArgs> {
  CourseDetailRoute({
    required _i10.Track course,
    _i9.Key? key,
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

  final _i10.Track course;

  final _i9.Key? key;

  @override
  String toString() {
    return 'CourseDetailRouteArgs{course: $course, key: $key}';
  }
}

/// generated route for
/// [_i4.ExercisePage]
class ExerciseRoute extends _i8.PageRouteInfo<ExerciseRouteArgs> {
  ExerciseRoute({
    _i9.Key? key,
    required _i10.Exercise exercise,
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

  final _i9.Key? key;

  final _i10.Exercise exercise;

  @override
  String toString() {
    return 'ExerciseRouteArgs{key: $key, exercise: $exercise}';
  }
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i6.SignUpPage]
class SignUpRoute extends _i8.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i7.ArticleDetailPage]
class ArticleDetailRoute extends _i8.PageRouteInfo<ArticleDetailRouteArgs> {
  ArticleDetailRoute({
    _i9.Key? key,
    required _i11.Article article,
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

  final _i9.Key? key;

  final _i11.Article article;

  @override
  String toString() {
    return 'ArticleDetailRouteArgs{key: $key, article: $article}';
  }
}
