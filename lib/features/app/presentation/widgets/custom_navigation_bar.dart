/* External dependencies */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bilimapp/core/helpers/colors.dart';

/* Local dependencies */
import '../../../../core/helpers/text_styles.dart';
import '../../../../core/injection/injection.dart';
import '../bloc/app_bloc.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final AppBloc appBloc = getIt<AppBloc>();

  CustomNavigationBar({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedLabelStyle: KodjazTextStyle.fS12FW400,
      selectedItemColor: KodJazColors.PrimaryColor,
      enableFeedback: false,
      currentIndex: currentIndex,
      onTap: (index) {
        appBloc.add(CurrentPageIndexChanged(index: index));
      },
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/images/svg/estate.svg",
            color: KodJazColors.SecondaryColor,
          ),
          activeIcon: SvgPicture.asset(
            "assets/images/svg/estate.svg",
            color: KodJazColors.PrimaryColor,
          ),
          label: 'Башкы бет',
        ),
        // BottomNavigationBarItem(
        //   icon: SvgPicture.asset("assets/images/svg/course.svg"),
        //   activeIcon: SvgPicture.asset("assets/images/svg/course_filled.svg"),
        //   label: 'Курстар',
        // ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/images/svg/notes.svg",
            color: KodJazColors.SecondaryColor,
          ),
          activeIcon: SvgPicture.asset(
            "assets/images/svg/notes.svg",
            color: KodJazColors.PrimaryColor,
          ),
          label: 'Макалалар',
        ),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/images/svg/open_book.svg",
              color: KodJazColors.SecondaryColor,
              height: 22.h,
              width: 22.w,
            ),
            activeIcon: SvgPicture.asset(
              "assets/images/svg/open_book.svg",
              color: KodJazColors.PrimaryColor,
              height: 20.h,
              width: 20.w,
            ),
            label: 'Китептер'),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/images/svg/user.svg",
            color: KodJazColors.SecondaryColor,
          ),
          activeIcon: SvgPicture.asset(
            "assets/images/svg/user.svg",
            color: KodJazColors.PrimaryColor,
          ),
          label: 'Профиль',
        ),
      ],
    );
  }
}
