import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyScreenUtil {
  const MyScreenUtil({Key? key});

  static init(context) {
    ScreenUtil.init(
      context,
      minTextAdapt: true,
      designSize: const Size(375, 812),
    );
  }
}
