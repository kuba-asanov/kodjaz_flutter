/* External dependencies */
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

/* Local dependencies */
import '../helpers/screen_util.dart';
import '../helpers/text_styles.dart';
import 'package:bilimapp/core/init/lang/locale_keys.g.dart';
import 'package:bilimapp/core/injection/injection.dart';
import 'package:bilimapp/core/navigation/auto_route.gr.dart';
import 'package:bilimapp/core/helpers/colors.dart';
import 'package:bilimapp/features/models/track.dart';

class PrimaryButton extends StatelessWidget {
  final bool loading;
  final String title;
  final Icon? icon;
  final double? height;
  final bool isDisabled;
  final Function? onPressed;

  const PrimaryButton({
    Key? key,
    required this.title,
    this.icon,
    this.loading = false,
    this.isDisabled = false,
    this.height,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return SizedBox(
      height: height ?? 48.h,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: isDisabled
              ? MaterialStateProperty.all(KodJazColors.DisabledButtonColor)
              : MaterialStateProperty.all(KodJazColors.PrimaryColor),
          splashFactory:
              isDisabled ? NoSplash.splashFactory : InkSplash.splashFactory,
          elevation: isDisabled
              ? MaterialStateProperty.all(0)
              : MaterialStateProperty.all(1),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        onPressed:
            isDisabled ? () {} : () => onPressed != null ? onPressed!() : null,
        child: Center(
          child: icon != null
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icon!,
                    SizedBox(width: 10.w),
                    loading
                        ? const Spinner(color: KodJazColors.white)
                        : Text(
                            title,
                            textAlign: TextAlign.center,
                            style: KodjazTextStyle.fS16FW500.copyWith(
                              color: KodJazColors.White,
                            ),
                          ),
                  ],
                )
              : loading
                  ? const Spinner(color: KodJazColors.white)
                  : Text(
                      title,
                      textAlign: TextAlign.center,
                      style: isDisabled
                          ? KodjazTextStyle.fS16FW500.copyWith(
                              color: KodJazColors.DisabledTextColor,
                            )
                          : KodjazTextStyle.fS16FW500.copyWith(
                              color: KodJazColors.White,
                            ),
                    ),
        ),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final Function? onPressed;
  final String title;
  final Icon? icon;
  final Color? textColor;
  final Color? borderSideColor;
  final double? borderRadius;

  const SecondaryButton({
    this.onPressed,
    required this.title,
    this.borderRadius,
    Key? key,
    this.icon,
    this.textColor,
    this.borderSideColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return SizedBox(
      height: 48.h,
      child: ElevatedButton(
        onPressed: onPressed as void Function()?,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(KodJazColors.White),
          foregroundColor:
              MaterialStateProperty.all<Color>(KodJazColors.PrimaryColor),
          side: MaterialStateProperty.all(
              BorderSide(color: borderSideColor ?? KodJazColors.PrimaryColor)),
        ),
        child: Center(
          child: icon != null
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icon!,
                    SizedBox(width: 10.w),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: KodjazTextStyle.fS16FW500,
                    ),
                  ],
                )
              : Text(
                  title,
                  textAlign: TextAlign.center,
                  style: KodjazTextStyle.fS16FW500.copyWith(
                    color: textColor,
                  ),
                ),
        ),
      ),
    );
  }
}

class Spinner extends StatelessWidget {
  final double? strokeWidth;
  final Color? color;

  const Spinner({
    this.strokeWidth,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    final platform = Theme.of(context).platform;

    if (platform == TargetPlatform.android) {
      // Android-specific code.
      return color != null
          ? Center(
              child: CircularProgressIndicator(
                color: color,
                strokeWidth: strokeWidth ?? 4.0,
              ),
            )
          : Center(
              child: CircularProgressIndicator(
                valueColor: const AlwaysStoppedAnimation<Color>(
                    KodJazColors.PrimaryColor),
                strokeWidth: strokeWidth ?? 4.0,
              ),
            );
    }

    if (platform == TargetPlatform.iOS) {
      // iOS-specific code.
      return Center(
        child: CupertinoActivityIndicator(
          color: color,
        ),
      );
    }

    throw Exception('Unsupported platform.');
  }
}

class CourseWidget extends StatelessWidget {
  final Track course;

  const CourseWidget({
    required this.course,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    final String icon;
    final String level;
    switch (course.level) {
      case 1:
        icon = "assets/images/svg/easy_level.svg";
        break;
      case 2:
        icon = "assets/images/svg/medium_level.svg";
        break;
      case 3:
        icon = "assets/images/svg/hard_level.svg";
        break;
      default:
        icon = "assets/images/svg/easy_level.svg";
    }
    switch (course.level) {
      case 1:
        level = LocaleKeys.easyLevel.tr();
        break;
      case 2:
        level = LocaleKeys.mediumLevel.tr();
        break;
      case 3:
        level = LocaleKeys.hardLevel.tr();
        break;
      default:
        level = LocaleKeys.easyLevel.tr();
    }

    return InkWell(
      borderRadius: BorderRadius.circular(8.r),
      onTap: () {
        getIt<AppRouter>().push(CourseDetailRoute(course: course));
      },
      child: Container(
        height: 101.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: KodJazColors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(
                0,
                8.h,
              ),
              color: KodJazColors.shadowColor,
              blurRadius: 30,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
              child: Row(
                children: [
                  Image.network(
                    course.iconUrl ??
                        "https://i.pinimg.com/originals/95/91/ed/9591ed82caa8d20c30db96cb7298d3a9.png",
                    width: 40.w,
                    height: 40.h,
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    course.name,
                    style: KodjazTextStyle.fS16FW500,
                  ),
                  const Spacer(),
                  course.progress != 0
                      ? CircularStepProgressIndicator(
                          totalSteps: 100,
                          currentStep: course.progress,
                          stepSize: 7.r,
                          selectedColor: KodJazColors.blue,
                          unselectedColor: KodJazColors.grey1,
                          padding: 0.r,
                          width: 70,
                          height: 70,
                          selectedStepSize: 7.r,
                          roundedCap: (_, __) => true,
                          child: Center(
                              child: Text(
                            '${course.progress}%',
                            style: KodjazTextStyle.fS12FW600,
                          )),
                        )
                      : const Icon(
                          Icons.chevron_right,
                          color: KodJazColors.grey3,
                        ),
                ],
              ),
            ),
            if (course.progress == 0)
              Divider(
                height: 0.5.h,
                color: KodJazColors.grey2,
                thickness: 0.5.h,
              ),
            if (course.progress == 0)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: course.track_units.isEmpty
                    ? Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: KodJazColors.PrimaryColor,
                          ),
                          width: 100.w,
                          height: 20.h,
                          child: Center(
                            child: Text(
                              'ЖАКЫНДА',
                              style: KodjazTextStyle.fS14FW600
                                  .copyWith(color: KodJazColors.white),
                            ),
                          ),
                        ),
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/images/svg/play_icon.svg'),
                          SizedBox(width: 14.w),
                          Text(
                            '${course.track_units.length} ${LocaleKeys.lesson.tr()}',
                            style: KodjazTextStyle.fS14FW400
                                .copyWith(color: KodJazColors.grey5),
                          ),
                          SizedBox(width: 70.w),
                          SvgPicture.asset(icon),
                          SizedBox(width: 10.w),
                          Text(
                            level,
                            style: KodjazTextStyle.fS14FW400
                                .copyWith(color: KodJazColors.grey5),
                          ),
                        ],
                      ),
              ),
          ],
        ),
      ),
    );
  }
}
