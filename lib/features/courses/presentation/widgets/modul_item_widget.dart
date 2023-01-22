/* External dependencies */
import 'package:easy_localization/easy_localization.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

/* Local dependencies */
import 'package:kodjaz/core/helpers/colors.dart';
import 'package:kodjaz/core/helpers/text_styles.dart';
import 'package:kodjaz/core/init/lang/locale_keys.g.dart';
import 'package:kodjaz/features/models/cours.dart';

class ModuleAccordionWidget extends StatefulWidget {
  final String title;
  final LessonsStatus status;
  final List<Lessons> lessons;

  const ModuleAccordionWidget({
    required this.title,
    required this.lessons,
    required this.status,
    Key? key,
  }) : super(key: key);

  @override
  _ModuleAccordionStateWidget createState() => _ModuleAccordionStateWidget();
}

class _ModuleAccordionStateWidget extends State<ModuleAccordionWidget> {
  @override
  Widget build(BuildContext context) {
    late final String statusImagePath;
    switch (widget.status) {
      case LessonsStatus.done:
        statusImagePath = 'done.svg';
        break;
      case LessonsStatus.inProgres:
        statusImagePath = 'in_progres.svg';
        break;
      case LessonsStatus.didntStart:
        statusImagePath = 'didnt_start.svg';
        break;
    }
    return Container(
      color: Colors.white,
      child: ExpandablePanel(
        theme: const ExpandableThemeData(
          headerAlignment: ExpandablePanelHeaderAlignment.center,
          iconSize: 30,
        ),
        header: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 17.0, left: 20.0, right: 20.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        widget.title,
                        style: SanackTextStyle.fS16FW500
                            .copyWith(color: KodJazColors.black),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/images/svg/play_icon.svg'),
                          SizedBox(width: 14.w),
                          Text(
                            '${widget.lessons.length} ${LocaleKeys.lesson.tr()}',
                            style: SanackTextStyle.fS12FW400
                                .copyWith(color: KodJazColors.grey5),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  SvgPicture.asset('assets/images/svg/$statusImagePath'),
                ],
              ),
            ),
          ],
        ),
        expanded: Column(
          children: [
            SizedBox(height: 12.h),
            Divider(
              thickness: 1,
              height: 1.h,
            ),
            SizedBox(height: 12.h),
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => SizedBox(height: 16.h),
                shrinkWrap: true,
                itemCount: widget.lessons.length,
                itemBuilder: (context, index) {
                  late final String statusImagePath;
                  switch (widget.lessons[index].status) {
                    case LessonsStatus.done:
                      statusImagePath = 'done.svg';
                      break;
                    case LessonsStatus.inProgres:
                      statusImagePath = 'in_progres.svg';
                      break;
                    case LessonsStatus.didntStart:
                      statusImagePath = 'didnt_start.svg';
                      break;
                  }
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: KodJazColors.white2,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: Row(
                          children: [
                            Text(
                              widget.lessons[index].name,
                              style: SanackTextStyle.fS16FW400,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            Spacer(),
                            SvgPicture.asset(
                                'assets/images/svg/$statusImagePath'),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
        builder: (_, collapsed, expanded) {
          return Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
            child: Expandable(
              collapsed: collapsed,
              expanded: expanded,
              theme: const ExpandableThemeData(crossFadePoint: 0),
            ),
          );
        },
        collapsed: const SizedBox(),
      ),
    );
  }
}
