import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/colors.dart';
import '../../../../core/helpers/text_styles.dart';

class AritcleCard extends StatelessWidget {
  const AritcleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10).r,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: KodJazColors.white,
            border: Border.all(color: KodJazColors.DisabledButtonColor)),
        height: 250.h,
        width: 1.sw,
        child: Column(
          children: [
            SizedBox(
              height: 170.h,
              width: 1.sw,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(20).r, topRight: const Radius.circular(20).r),
                child: Image.network(
                  "https://blog.depositphotos.com/wp-content/uploads/2017/07/Soothing-nature-backgrounds-2.jpg.webp",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0).r,
              child: Text(
                "How HTTP Streaming can improve page performance and how Airbnb enabled it on an existing codebase",
                style: KodjazTextStyle.fS18FW700,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
