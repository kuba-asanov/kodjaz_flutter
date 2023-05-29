/* External dependencies */
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

/* Local dependencies */
import 'package:kodjaz/core/helpers/cache/cache.dart';
import 'package:kodjaz/core/injection/injection.dart';
import 'package:kodjaz/features/auth/bloc/auth_bloc.dart';
import 'package:kodjaz/features/auth/models/token.dart';

import '../../core/client/client.dart';
import '../../core/constants/app/app_constants.dart';
import '../../core/helpers/screen_util.dart';
import '../../core/navigation/auto_route.gr.dart';
import '../../core/navigation/navigation.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  late Token? token;

  @override
  void initState() {
    token = Cache.getSession();
    _navigation();
    super.initState();
  }

  void _navigation() {
    Timer(const Duration(seconds: 3), () async {
      if (token?.access != null) {
        await getIt<Api>().initClient(accessToken: token!.access!);

        Navigation.router.replace(NavigationRoute());
      } else {
        Navigation.router.replace(const LoginRoute());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return BlocListener<AuthBloc, AuthState>(
      bloc: getIt<AuthBloc>(),
      listenWhen: (previous, current) => previous.token != current.token,
      listener: (context, state) {
        if (state.token != null) {
          Navigation.router.replace(NavigationRoute());
        } else {
          Navigation.router.replace(const LoginRoute());
        }
      },
      child: Scaffold(
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
      ),
    );
  }
}
