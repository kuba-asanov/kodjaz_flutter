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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:kodjaz/features/app/presentation/navigation_page.dart' as _i2;
import 'package:kodjaz/features/auth/presentation/login/login_page.dart' as _i4;
import 'package:kodjaz/features/auth/presentation/signup/sign_up_page.dart'
    as _i5;
import 'package:kodjaz/features/courses/presentation/course_detail_page.dart'
    as _i3;
import 'package:kodjaz/features/models/track.dart' as _i8;
import 'package:kodjaz/features/splash_screen/splash_screen_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreenPage(),
      );
    },
    NavigationRoute.name: (routeData) {
      final args = routeData.argsAs<NavigationRouteArgs>(
          orElse: () => const NavigationRouteArgs());
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.NavigationPage(key: args.key),
      );
    },
    CourseDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CourseDetailRouteArgs>();
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.CourseDetailPage(
          course: args.course,
          key: args.key,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.SignUpPage(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i6.RouteConfig(
          NavigationRoute.name,
          path: '/navigation-page',
        ),
        _i6.RouteConfig(
          CourseDetailRoute.name,
          path: '/course-detail-page',
        ),
        _i6.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i6.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreenPage]
class SplashScreenRoute extends _i6.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.NavigationPage]
class NavigationRoute extends _i6.PageRouteInfo<NavigationRouteArgs> {
  NavigationRoute({_i7.Key? key})
      : super(
          NavigationRoute.name,
          path: '/navigation-page',
          args: NavigationRouteArgs(key: key),
        );

  static const String name = 'NavigationRoute';
}

class NavigationRouteArgs {
  const NavigationRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'NavigationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.CourseDetailPage]
class CourseDetailRoute extends _i6.PageRouteInfo<CourseDetailRouteArgs> {
  CourseDetailRoute({
    required _i8.Track course,
    _i7.Key? key,
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

  final _i8.Track course;

  final _i7.Key? key;

  @override
  String toString() {
    return 'CourseDetailRouteArgs{course: $course, key: $key}';
  }
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i5.SignUpPage]
class SignUpRoute extends _i6.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}
