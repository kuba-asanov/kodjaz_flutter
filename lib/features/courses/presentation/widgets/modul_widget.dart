/* External dependencies */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/* Local dependencies */
import 'package:kodjaz/features/courses/presentation/widgets/modul_item_widget.dart';
import 'package:kodjaz/features/models/cours.dart';

class ModulWidget extends StatelessWidget {
  final Course course;
  
  const ModulWidget({
    required this.course,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        thickness: 1,
        height: 1.h,
      ),
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return ModuleAccordionWidget(
          title: course.name,
          status: course.status,
          lessons: course.lessons,
        );
      },
    );
  }
}
