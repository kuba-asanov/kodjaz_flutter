import 'package:bilimapp/core/helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconContainer extends StatelessWidget {
  final IconData icon;
  const CustomIconContainer({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 30.w,
      decoration: BoxDecoration(
        color: KodJazColors.White,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Icon(
        icon,
        size: 20.sp,
      ),
    );
  }
}
