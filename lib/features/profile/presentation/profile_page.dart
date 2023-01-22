/* External dependencies */
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

/* Local dependencies */
import 'package:kodjaz/core/common/common_widgets.dart';
import 'package:kodjaz/core/helpers/colors.dart';
import 'package:kodjaz/core/helpers/screen_util.dart';
import 'package:kodjaz/core/init/lang/locale_keys.g.dart';
import 'package:kodjaz/core/navigation/auto_route.gr.dart';
import 'package:kodjaz/core/navigation/navigation.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 100.h,
                  color: KodJazColors.blue2,
                ),
                SizedBox(height: 66.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      PrimaryButton(
                        title: LocaleKeys.login.tr(),
                        onPressed: () {
                          Navigation.router.push(const LoginRoute());
                        },
                      ),
                      SizedBox(height: 16.h),
                      SecondaryButton(
                        title: LocaleKeys.createAnAccount.tr(),
                        onPressed: () {
                          Navigation.router.push(const SignUpRoute());
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              top: 60.h,
              right: 130.w,
              left: 130.w,
              child: CircleAvatar(
                radius: 50.r,
                child: SvgPicture.asset(
                  'assets/images/svg/avatar.svg',
                  width: 100.w,
                  height: 100.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
