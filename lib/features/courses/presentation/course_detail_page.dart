import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kodjaz/core/common/common_widgets.dart';
import 'package:kodjaz/core/helpers/colors.dart';
import 'package:kodjaz/core/helpers/screen_util.dart';
import 'package:kodjaz/core/helpers/text_styles.dart';
import 'package:kodjaz/core/init/lang/locale_keys.g.dart';
import 'package:kodjaz/features/models/cours.dart';

class CourseDetailPage extends StatefulWidget {
  final Course course;
  const CourseDetailPage({
    required this.course,
    super.key,
  });

  @override
  State<CourseDetailPage> createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    final String icon;
    final String level;
    switch (widget.course.level) {
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
    switch (widget.course.level) {
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

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _AppBar(
              course: widget.course,
              icon: icon,
              level: level,
            ),
            TabBar(
              indicatorColor: KodJazColors.blue,
              labelColor: KodJazColors.black,
              labelStyle: SanackTextStyle.fS14FW500,
              unselectedLabelStyle: SanackTextStyle.fS14FW400,
              controller: _tabController,
              tabs: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Text(LocaleKeys.modules.tr()),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Text(LocaleKeys.aboutTheCourse.tr()),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  Accordion(
                    title: 'dfasfs',
                    content: 'fdsafds',
                  ),
                  Text('data2'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({
    Key? key,
    required this.course,
    required this.icon,
    required this.level,
  }) : super(key: key);

  final Course course;
  final String icon;
  final String level;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      width: 360.w,
      height: 280.h,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF1D3BA8),
            Color(0xFF3050C1),
          ],
        ),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: kToolbarHeight.h,
              child: Icon(
                Icons.chevron_left,
                size: 27.h,
                color: KodJazColors.white,
              ),
            ),
          ),
          Image.network(
            course.iconUrl,
            width: 64.w,
            height: 64.h,
          ),
          SizedBox(height: 24.h),
          Text(
            course.name,
            style: SanackTextStyle.fS16FW600.copyWith(
              color: KodJazColors.white,
            ),
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/svg/play_icon.svg',
                color: KodJazColors.white,
              ),
              SizedBox(width: 14.w),
              Text(
                '${course.lessonsCount} ${LocaleKeys.lesson.tr()}',
                style: SanackTextStyle.fS14FW400
                    .copyWith(color: KodJazColors.white),
              ),
              SizedBox(width: 26.w),
              SvgPicture.asset(icon),
              SizedBox(width: 10.w),
              Text(
                level,
                style: SanackTextStyle.fS14FW400
                    .copyWith(color: KodJazColors.white),
              ),
            ],
          ),
          SizedBox(height: 28.h),
          SecondaryButton(title: LocaleKeys.continueTheCourse.tr()),
        ],
      ),
    );
  }
}
