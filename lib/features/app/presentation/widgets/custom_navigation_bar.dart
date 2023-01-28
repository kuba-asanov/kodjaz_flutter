/* External dependencies */
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/* Local dependencies */
import '../../../../core/common/colors.dart';
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
      selectedItemColor: PrimaryColor,
      enableFeedback: false,
      currentIndex: currentIndex,
      onTap: (index) {
        appBloc.add(CurrentPageIndexChanged(index: index));
      },
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/svg/home.svg"),
          activeIcon: SvgPicture.asset("assets/images/svg/home_filled.svg"),
          label: 'Башкы бет',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/svg/course.svg"),
          activeIcon: SvgPicture.asset("assets/images/svg/course_filled.svg"),
          label: 'Курстар',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/svg/profile.svg"),
          activeIcon: SvgPicture.asset("assets/images/svg/profile_filled.svg"),
          label: 'Профиль',
        ),
      ],
    );
  }
}
