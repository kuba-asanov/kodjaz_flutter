import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:bilimapp/core/helpers/colors.dart';
import 'package:bilimapp/core/helpers/screen_util.dart';
import 'package:bilimapp/core/helpers/text_styles.dart';

class CustomProgressIndicator {
  static matrixProgressIndicator({
    required String message,
  }) {
    SmartDialog.showLoading(
        msg: message,
        builder: (BuildContext context) {
          MyScreenUtil.init(context);

          return IntrinsicHeight(
            child: Container(
              padding: EdgeInsets.all(20.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: KodJazColors.black,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 24.h,
                    width: 28.w,
                    child: const CircularProgressIndicator(
                      color: KodJazColors.PrimaryColor,
                      strokeWidth: 3.0,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    message,
                    style: KodjazTextStyle.fS14FW400.copyWith(
                      color: KodJazColors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
