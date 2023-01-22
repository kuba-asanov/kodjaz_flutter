/* External dependencies */
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

/* Local dependencies */
import 'package:kodjaz/core/common/common_widgets.dart';
import 'package:kodjaz/core/common/custom_text_field.dart';
import 'package:kodjaz/core/helpers/colors.dart';
import 'package:kodjaz/core/helpers/screen_util.dart';
import 'package:kodjaz/core/helpers/text_styles.dart';
import 'package:kodjaz/core/init/lang/locale_keys.g.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.login.tr()),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: PrimaryButton(title: LocaleKeys.login.tr()),
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
                hintText: 'name@example.com',
                controller: loginController,
              ),
              SizedBox(height: 24.h),
              CustomTextField(
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
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    LocaleKeys.forgotYourPassword.tr(),
                    style: SanackTextStyle.fS14FW400.copyWith(
                      color: KodJazColors.blue3,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
