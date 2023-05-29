/* External dependencies */
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/* Local dependencies */
import '../../../../core/constants/app/app_constants.dart';
import '../../../../core/helpers/colors.dart';
import '../../../../core/helpers/screen_util.dart';
import '../../../../core/helpers/text_styles.dart';
import '../../data/models/article.dart';

class AritcleCard extends StatelessWidget {
  final Article article;
  const AritcleCard({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
                  topLeft: const Radius.circular(20).r,
                  topRight: const Radius.circular(20).r),
              child: CachedNetworkImage(
                imageUrl: article.urlToImage == null
                    ? ApplicationConstants.imageNotFound
                    : article.urlToImage.toString(),
                errorWidget: (context, string, _) {
                  return const Icon(Icons.error);
                },
                width: 130,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(12.0).r,
              child: Text(
                article.title,
                style: KodjazTextStyle.fS16FW700,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
