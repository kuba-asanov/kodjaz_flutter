/* External dependencies */
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

/* Local dependencies */
import 'package:kodjaz/core/common/common_widgets.dart';
import 'package:kodjaz/core/helpers/colors.dart';
import 'package:kodjaz/core/helpers/screen_util.dart';
import 'package:kodjaz/core/helpers/text_styles.dart';
import 'package:kodjaz/core/init/lang/locale_keys.g.dart';
import 'package:kodjaz/features/courses/presentation/widgets/modul_widget.dart';
import 'package:kodjaz/features/models/track.dart';

class CourseDetailPage extends StatefulWidget {
  final Track course;
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
  final ScrollController _scrollController = ScrollController();

  bool isAppBarhide = false;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _scrollController.addListener(() {
      if (_scrollController.position.pixels > 160) {
        setState(() {
          isAppBarhide = true;
        });
      } else {
        setState(() {
          isAppBarhide = false;
        });
      }
    });
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
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
          child: NestedScrollView(
            controller: _scrollController,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) => [
              SliverAppBar(
                foregroundColor: Colors.white,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  expandedTitleScale: 1,
                  title: Text(widget.course.name),
                  background: _AppBar(
                    course: widget.course,
                    icon: icon,
                    level: level,
                  ),
                  titlePadding: EdgeInsetsDirectional.only(
                    bottom: isAppBarhide ? 16 : 112.h,
                  ),
                  centerTitle: true,
                ),
                pinned: true,
                expandedHeight: 224.h,
                backgroundColor: KodJazColors.PrimaryColor,
              ),
            ],
            body: Column(
              children: [
                TabBar(
                  indicatorColor: KodJazColors.blue,
                  labelColor: KodJazColors.black,
                  labelStyle: KodjazTextStyle.fS14FW500,
                  unselectedLabelStyle: KodjazTextStyle.fS14FW400,
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
                    controller: _tabController,
                    children: [
                      UnitWidget(units: widget.course.track_units),
                      Padding(
                        padding: EdgeInsets.all(12.r),
                        child: Text(
                          "${widget.course.description} \n\nИнженерлер-программисттер, аналитиктер, маалымат таануучулар жана машина үйрөнүү инженерлери колдонгон дүйнөдөгү эң тез өнүгүп жаткан жана эң популярдуу программалоо тилинин негиздерин үйрөнүңүз. Бул курс программалоонун фундаменталдык негиздерин жана Python программалоо тилин үйрөнүү үчүн эң жакшы. Курсту аяктаган соң, Python тилинде программалоону өздөштүрүп, өз долбоорлоруңузду курганга даяр болуп каласыз.",
                          style: KodjazTextStyle.fS16FW400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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

  final Track course;
  final String icon;
  final String level;

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      width: 360.w,
      height: 224.h,
      decoration: const BoxDecoration(
        color: KodJazColors.PrimaryColor,
      ),
      child: Column(
        children: [
          Image.network(
            course.iconUrl ??
                "https://i.pinimg.com/originals/95/91/ed/9591ed82caa8d20c30db96cb7298d3a9.png",
            width: 64.w,
            height: 64.h,
          ),
          SizedBox(height: 56.h),
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
                '${course.track_units.length} ${LocaleKeys.lesson.tr()}',
                style: KodjazTextStyle.fS14FW400
                    .copyWith(color: KodJazColors.white),
              ),
              SizedBox(width: 26.w),
              SvgPicture.asset(icon),
              SizedBox(width: 10.w),
              Text(
                level,
                style: KodjazTextStyle.fS14FW400
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
