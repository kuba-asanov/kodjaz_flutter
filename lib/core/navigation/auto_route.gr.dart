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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:kodjaz/features/app/presentation/navigation_page.dart' as _i2;
import 'package:kodjaz/features/auth/presentation/login/login_page.dart' as _i5;
import 'package:kodjaz/features/auth/presentation/signup/sign_up_page.dart'
    as _i6;
import 'package:kodjaz/features/courses/presentation/course_detail_page.dart'
    as _i3;
import 'package:kodjaz/features/lesson/presentation/lesson_page.dart' as _i4;
import 'package:kodjaz/features/models/track.dart' as _i9;
import 'package:kodjaz/features/splash_screen/splash_screen_page.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreenPage(),
      );
    },
    NavigationRoute.name: (routeData) {
      final args = routeData.argsAs<NavigationRouteArgs>(
          orElse: () => const NavigationRouteArgs());
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.NavigationPage(key: args.key),
      );
    },
    CourseDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CourseDetailRouteArgs>();
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.CourseDetailPage(
          course: args.course,
          key: args.key,
        ),
      );
    },
    LessonRoute.name: (routeData) {
      final args = routeData.argsAs<LessonRouteArgs>();
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i4.LessonPage(
          key: args.key,
          lesson: args.lesson,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.SignUpPage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i7.RouteConfig(
          NavigationRoute.name,
          path: '/navigation-page',
        ),
        _i7.RouteConfig(
          CourseDetailRoute.name,
          path: '/course-detail-page',
        ),
        _i7.RouteConfig(
          LessonRoute.name,
          path: '/lesson-page',
        ),
        _i7.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i7.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreenPage]
class SplashScreenRoute extends _i7.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.NavigationPage]
class NavigationRoute extends _i7.PageRouteInfo<NavigationRouteArgs> {
  NavigationRoute({_i8.Key? key})
      : super(
          NavigationRoute.name,
          path: '/navigation-page',
          args: NavigationRouteArgs(key: key),
        );

  static const String name = 'NavigationRoute';
}

class NavigationRouteArgs {
  const NavigationRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'NavigationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.CourseDetailPage]
class CourseDetailRoute extends _i7.PageRouteInfo<CourseDetailRouteArgs> {
  CourseDetailRoute({
    required _i9.Track course,
    _i8.Key? key,
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

  final _i9.Track course;

  final _i8.Key? key;

  @override
  String toString() {
    return 'CourseDetailRouteArgs{course: $course, key: $key}';
  }
}

/// generated route for
/// [_i4.LessonPage]
class LessonRoute extends _i7.PageRouteInfo<LessonRouteArgs> {
  LessonRoute({
    _i8.Key? key,
    required _i9.Lesson lesson,
  }) : super(
          LessonRoute.name,
          path: '/lesson-page',
          args: LessonRouteArgs(
            key: key,
            lesson: lesson,
          ),
        );

  static const String name = 'LessonRoute';
}

class LessonRouteArgs {
  const LessonRouteArgs({
    this.key,
    required this.lesson,
  });

  final _i8.Key? key;

  final _i9.Lesson lesson;

  @override
  String toString() {
    return 'LessonRouteArgs{key: $key, lesson: $lesson}';
  }
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i6.SignUpPage]
class SignUpRoute extends _i7.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}
