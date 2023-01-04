/* External dependencies */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kodjaz/core/common/colors.dart';

/* Local dependencies */
import '../helpers/screen_util.dart';
import '../helpers/text_styles.dart';

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

    if (loading) {
      return Container(
        alignment: Alignment.center,
        child: const Spinner(),
      );
    }

    return SizedBox(
      height: height ?? 48.h,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: isDisabled
              ? MaterialStateProperty.all(DisabledButtonColor)
              : MaterialStateProperty.all(PrimaryColor),
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
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: SanackTextStyle.fS16FW500.copyWith(
                        color: White,
                      ),
                    ),
                  ],
                )
              : Text(
                  title,
                  textAlign: TextAlign.center,
                  style: isDisabled
                      ? SanackTextStyle.fS16FW500.copyWith(
                          color: DisabledTextColor,
                        )
                      : SanackTextStyle.fS16FW500.copyWith(
                          color: White,
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
          backgroundColor: MaterialStateProperty.all<Color>(White),
          foregroundColor: MaterialStateProperty.all<Color>(PrimaryColor),
          side: MaterialStateProperty.all(
              BorderSide(color: borderSideColor ?? PrimaryColor)),
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
                      style: SanackTextStyle.fS16FW500,
                    ),
                  ],
                )
              : Text(
                  title,
                  textAlign: TextAlign.center,
                  style: SanackTextStyle.fS16FW500.copyWith(
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
                valueColor: const AlwaysStoppedAnimation<Color>(PrimaryColor),
                strokeWidth: strokeWidth ?? 4.0,
              ),
            );
    }

    if (platform == TargetPlatform.iOS) {
      // iOS-specific code.
      return const Center(
        child: CupertinoActivityIndicator(),
      );
    }

    throw Exception('Unsupported platform.');
  }
}
