/* External dependencies */
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

/* Local dependencies */
import 'package:kodjaz/core/common/common_widgets.dart';
import 'package:kodjaz/core/helpers/colors.dart';
import 'package:kodjaz/core/helpers/text_styles.dart';
import 'package:kodjaz/core/init/lang/locale_keys.g.dart';
import 'package:kodjaz/core/injection/injection.dart';
import 'package:kodjaz/core/navigation/auto_route.gr.dart';
import 'package:kodjaz/features/app/presentation/bloc/app_bloc.dart';

class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
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
        children: [
          SizedBox(height: 26.h),
          SvgPicture.asset('assets/images/svg/not_chosen_course_icon.svg'),
          SizedBox(height: 26.h),
          Text(
            LocaleKeys.youHaveNotChosenACourseYet.tr(),
            style: KodjazTextStyle.fS16FW600,
          ),
          Text(
            LocaleKeys.viewOurCatalog.tr(),
            style: KodjazTextStyle.fS14FW400,
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: PrimaryButton(
              title: LocaleKeys.chooseACourse.tr(),
              onPressed: () {
                getIt<AppBloc>().add(CurrentPageIndexChanged(index: 1));
              },
            ),
          )
        ],
      ),
    );
  }
}
