/* External dependencies */
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

/* Local dependencies */
import 'package:kodjaz/core/common/common_widgets.dart';
import 'package:kodjaz/core/common/custom_text_field.dart';
import 'package:kodjaz/core/helpers/colors.dart';
import 'package:kodjaz/core/helpers/screen_util.dart';
import 'package:kodjaz/core/helpers/text_styles.dart';
import 'package:kodjaz/core/init/lang/locale_keys.g.dart';
import 'package:kodjaz/core/injection/injection.dart';
import 'package:kodjaz/core/navigation/auto_route.gr.dart';
import 'package:kodjaz/core/navigation/navigation.dart';
import 'package:kodjaz/features/app/data/models/user.dart';
import 'package:kodjaz/features/auth/bloc/auth_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String? emailerrorText;
  String? passworderrorText;
  bool passwordObscureText = true;
  final AuthBloc _authBloc = getIt<AuthBloc>();

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return BlocConsumer<AuthBloc, AuthState>(
      bloc: _authBloc,
      listener: (context, state) {
        if (state.error != null) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.error!)));
        }
        if (state.token != null) {
          Navigation.router.replace(NavigationRoute());
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(LocaleKeys.login.tr()),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: PrimaryButton(
              loading: state.loading,
              title: LocaleKeys.login.tr(),
              onPressed: state.loading
                  ? null
                  : () {
                      if (!RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(emailController.text)) {
                        setState(() {
                          emailerrorText = LocaleKeys.invalidEmail.tr();
                        });
                      } else if (emailController.text.isNotEmpty &&
                          (passwordController.text.isNotEmpty &&
                              passwordController.text.length >= 8)) {
                        setState(() {
                          emailerrorText = null;
                          passworderrorText = null;
                        });
                        _authBloc.add(
                          LoginEvent(
                            user: User(
                              email: emailController.text,
                              password1: passwordController.text,
                            ),
                          ),
                        );
                      } else if ((emailController.text.isEmpty &&
                          passwordController.text.isNotEmpty)) {
                        setState(() {
                          emailerrorText = LocaleKeys.invalidEmail.tr();
                          passworderrorText = null;
                        });
                      } else if (emailController.text.isNotEmpty &&
                          (passwordController.text.isEmpty ||
                              passwordController.text.length < 8)) {
                        setState(() {
                          emailerrorText = null;
                          passworderrorText =
                              LocaleKeys.typeAtLeast8Characters.tr();
                        });
                      } else {
                        setState(() {
                          emailerrorText = LocaleKeys.invalidEmail.tr();
                          passworderrorText =
                              LocaleKeys.typeAtLeast8Characters.tr();
                        });
                      }
                    },
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/svg/logo.svg',
                    width: 56.w,
                    height: 56.h,
                  ),
                  SizedBox(height: 40.h),
                  CustomTextField(
                    errorText: emailerrorText,
                    hintText: 'name@example.com',
                    controller: emailController,
                  ),
                  SizedBox(height: 24.h),
                  CustomTextField(
                    obscureText: passwordObscureText,
                    errorText: passworderrorText,
                    hintText: LocaleKeys.password.tr(),
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.visibility_off,
                        color: KodJazColors.blue3,
                      ),
                      onPressed: () {
                        setState(() {
                          passwordObscureText = !passwordObscureText;
                        });
                      },
                    ),
                    controller: passwordController,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        LocaleKeys.forgotYourPassword.tr(),
                        style: KodjazTextStyle.fS14FW400.copyWith(
                          color: KodJazColors.blue3,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 200.w,
                      height: 30.h,
                      child: SecondaryButton(
                        onPressed: () {
                          Navigation.router.push(const SignUpRoute());
                        },
                        title: LocaleKeys.registration.tr(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
