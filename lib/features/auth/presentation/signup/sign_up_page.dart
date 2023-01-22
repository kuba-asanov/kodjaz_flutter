/* External dependencies */
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

/* Local dependencies */
import 'package:kodjaz/core/common/common_widgets.dart';
import 'package:kodjaz/core/common/custom_text_field.dart';
import 'package:kodjaz/core/helpers/colors.dart';
import 'package:kodjaz/core/helpers/text_styles.dart';
import 'package:kodjaz/core/init/lang/locale_keys.g.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.createAnAccount.tr()),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: PrimaryButton(title: LocaleKeys.createAnAccount.tr()),
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
                  scrollPadding: EdgeInsets.only(bottom: 100.h),
                  hintText: 'name@example.com',
                  controller: loginController,
                ),
                SizedBox(height: 24.h),
                CustomTextField(
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
                  scrollPadding: EdgeInsets.only(bottom: 100.h),
                  hintText: LocaleKeys.password.tr(),
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
  }
}
