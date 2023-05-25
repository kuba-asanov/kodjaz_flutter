/* External dependencies */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/* Local dependencies */
import 'package:kodjaz/features/courses/presentation/widgets/modul_item_widget.dart';
import 'package:kodjaz/features/models/track.dart';

import '../../../../core/helpers/text_styles.dart';

class UnitWidget extends StatelessWidget {
  final List<Unit> units;

  const UnitWidget({
    required this.units,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (units.isEmpty) {
      return SizedBox.expand(
        child: Center(
          child: Text(
            "Азырынча бул курс жеткиликтүү эмес",
            style: KodjazTextStyle.fS16FW400,
          ),
        ),
      );
    }

    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => Divider(
        thickness: 1,
        height: 1.h,
      ),
      shrinkWrap: false,
      itemCount: units.length,
      itemBuilder: (context, index) {
        Unit unit = units[index];

        return ModuleAccordionWidget(
          title: unit.name,
          status: unit.status,
          lessons: unit.unit_lessons,
        );
      },
    );
  }
}
