/* External dependencies */
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/* Local dependencies */
import 'package:kodjaz/core/helpers/cache/cache.dart';
import 'package:kodjaz/features/auth/models/token.dart';

import '../../core/constants/app/app_constants.dart';
import '../../core/navigation/auto_route.gr.dart';
import '../../core/navigation/navigation.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  final Token? token = Cache.getSession();

  @override
  void initState() {
    _navigation();
    super.initState();
  }

  void _navigation() {
    Timer(const Duration(seconds: 3), () {
      if (token != null) {
        Navigation.router.replace(NavigationRoute());
      } else {
        Navigation.router.replace(const LoginRoute());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: Center(
              child: SvgPicture.asset(
                ApplicationConstants.appLogo,
              ),
            ),
          ),
          const Spacer(flex: 4)
        ],
      ),
    );
  }
}
