/* External dependencies */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bilimapp/core/helpers/colors.dart';

import '../../../../core/helpers/screen_util.dart';

/* Local dependencies */

class TopProgressBarWidget extends StatelessWidget {
  final double width;
  final double? height;
  final bool isOnboardingPage;
  final int currentPage;
  final int onboardingScreenLength;

  const TopProgressBarWidget({
    this.height,
    this.currentPage = 0,
    this.width = 0.0,
    UniqueKey? key,
    this.isOnboardingPage = false,
    this.onboardingScreenLength = 0,
  });

  List<CustomProgressIndicator> listOfCustomProgressIndicator() {
    List<CustomProgressIndicator> listOfCustomProgressIndicator = [];

    for (var i = 1; i <= onboardingScreenLength; i++) {
      listOfCustomProgressIndicator.add(
        CustomProgressIndicator(
          height: height,
          color:
              i <= currentPage ? KodJazColors.PrimaryColor : KodJazColors.white,
        ),
      );
    }
    return listOfCustomProgressIndicator;
  }

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    if (isOnboardingPage) {
      return Row(
        children: listOfCustomProgressIndicator(),
      );
    } else {
      return Positioned(
        left: 0.0,
        top: 0.0,
        child: Row(
          children: [
            Container(
              width: width,
              height: height ?? 5.0,
              decoration: const BoxDecoration(color: KodJazColors.PrimaryColor),
            ),
            Container(
              width: width < 1.sw ? 1.sw - width : 0,
              height: height ?? 5.0,
              decoration: const BoxDecoration(color: KodJazColors.white),
            ),
          ],
        ),
      );
    }
  }
}

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({
    Key? key,
    required this.height,
    required this.color,
  }) : super(key: key);

  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 4.r),
        height: height ?? 5.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(60.r),
        ),
      ),
    );
  }
}
