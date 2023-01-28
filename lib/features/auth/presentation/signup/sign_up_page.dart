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
import 'package:kodjaz/core/helpers/text_styles.dart';
import 'package:kodjaz/core/init/lang/locale_keys.g.dart';
import 'package:kodjaz/core/injection/injection.dart';
import 'package:kodjaz/core/navigation/auto_route.gr.dart';
import 'package:kodjaz/core/navigation/navigation.dart';
import 'package:kodjaz/features/app/data/models/user.dart';
import 'package:kodjaz/features/auth/bloc/auth_bloc.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final AuthBloc _authBloc = getIt<AuthBloc>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  String? emailErrorText;
  String? passwordErrorText;
  String? confirmErrorText;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      bloc: _authBloc,
      listener: (context, state) {
        if (state.successSignUp == true) {
          _authBloc.add(
            LoginEvent(
              user: User(
                email: emailController.text,
                password1: passwordController.text,
              ),
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(LocaleKeys.createAnAccount.tr()),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButton: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: PrimaryButton(
              loading: state.loading,
              title: LocaleKeys.createAnAccount.tr(),
              onPressed: state.loading
                  ? null
                  : () {
                      if (emailController.text.isNotEmpty &&
                          (passwordController.text.isNotEmpty &&
                              passwordController.text.length >= 8) &&
                          confirmPasswordController.text ==
                              passwordController.text) {
                        setState(() {
                          emailErrorText = null;
                          passwordErrorText = null;
                        });
                        _authBloc.add(SignUpEvent(
                            user: User(
                          email: emailController.text,
                          password1: passwordController.text,
                          password2: confirmPasswordController.text,
                        )));
                      } else if ((emailController.text.isEmpty &&
                          passwordController.text.isNotEmpty)) {
                        setState(() {
                          emailErrorText = LocaleKeys.invalidEmail.tr();
                          passwordErrorText = null;
                        });
                      } else if (emailController.text.isNotEmpty &&
                          (passwordController.text.isEmpty ||
                              passwordController.text.length < 8)) {
                        setState(() {
                          emailErrorText = null;
                          passwordErrorText =
                              LocaleKeys.typeAtLeast8Characters.tr();
                        });
                      } else if (emailController.text.isNotEmpty &&
                          (passwordController.text.isNotEmpty &&
                              passwordController.text.length >= 8) &&
                          confirmPasswordController.text !=
                              passwordController.text) {
                        setState(() {
                          confirmErrorText =
                              LocaleKeys.passwordsDoNotMatch.tr();
                        });
                      } else {
                        setState(() {
                          confirmErrorText =
                              LocaleKeys.passwordsDoNotMatch.tr();
                          emailErrorText = LocaleKeys.invalidEmail.tr();
                          passwordErrorText =
                              LocaleKeys.typeAtLeast8Characters.tr();
                        });
                      }
                    },
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
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
                      errorText: emailErrorText,
                      scrollPadding: EdgeInsets.only(bottom: 100.h),
                      hintText: 'name@example.com',
                      controller: emailController,
                    ),
                    SizedBox(height: 24.h),
                    CustomTextField(
                      errorText: passwordErrorText,
                      scrollPadding: EdgeInsets.only(bottom: 200.h),
                      hintText: LocaleKeys.password.tr(),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.visibility_off,
                          color: KodJazColors.blue3,
                        ),
                        onPressed: () {},
                      ),
                      controller: passwordController,
                    ),
                    SizedBox(height: 24.h),
                    CustomTextField(
                      errorText: confirmErrorText,
                      scrollPadding: EdgeInsets.only(bottom: 100.h),
                      hintText: LocaleKeys.confirmPassword.tr(),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.visibility_off,
                          color: KodJazColors.blue3,
                        ),
                        onPressed: () {},
                      ),
                      controller: confirmPasswordController,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Катталуу менен мен Kodjaz дын Кызмат көрсөтүү саясаты жана Купуялык саясаты менен макулмун деп белгилейм.',
                          style: SanackTextStyle.fS14FW400.copyWith(
                            color: KodJazColors.blue3,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 60.h),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
