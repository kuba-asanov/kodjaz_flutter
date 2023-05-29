/* External dependencies */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bilimapp/core/helpers/colors.dart';

import '../../../../core/helpers/screen_util.dart';
import '../../../../core/helpers/text_styles.dart';
import '../../../../core/navigation/navigation.dart';

/* Local dependencies */

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final PreferredSizeWidget? bottom;
  final bool? isWrokExperience;
  final Widget? leading;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Color textColor;
  final Color? iconColor;
  final double? elevation;
  final bool? centerTitle;
  final double? titleSpacing;

  const CustomAppBar({
    this.centerTitle = false,
    this.elevation,
    this.titleSpacing,
    this.backgroundColor,
    this.actions,
    this.leading,
    this.title,
    this.bottom,
    this.isWrokExperience = false,
    Key? key,
    this.textColor = KodJazColors.White,
    this.iconColor,
  }) : super(key: key);

  @override
  Size get preferredSize => bottom != null
      ? Size.fromHeight(kToolbarHeight + bottom!.preferredSize.height)
      : const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return AppBar(
      elevation: elevation,
      backgroundColor: backgroundColor,
      bottom: bottom,
      titleSpacing: titleSpacing,
      leadingWidth: 57.w,
      key: const Key('appbar'),
      centerTitle: centerTitle,
      title: title == null
          ? null
          : Text(
              title!,
              style: KodjazTextStyle.fS18FW700.copyWith(color: textColor),
              overflow: TextOverflow.ellipsis,
              key: const Key('profile'),
            ),
      leading: leading ??
          IconButton(
            key: const Key('arrow_back'),
            icon: Icon(
              Icons.arrow_back_rounded,
              color: iconColor,
            ),
            onPressed: () {
              Navigation.router.pop();
            },
          ),
      actions: actions,
    );
  }
}
