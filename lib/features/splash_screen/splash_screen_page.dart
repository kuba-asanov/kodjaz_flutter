import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants/app/app_constants.dart';
import '../../core/navigation/auto_route.gr.dart';
import '../../core/navigation/navigation.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() {
    Timer(
      const Duration(seconds: 3),
      () => Navigation.router.replace(NavigationRoute()),
    );
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
