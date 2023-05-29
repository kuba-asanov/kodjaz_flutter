/* External dependencies */
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kodjaz/core/constants/app/app_constants.dart';

/* Local dependencies */
import 'package:kodjaz/core/helpers/text_styles.dart';
import 'package:kodjaz/features/articles/data/models/article.dart';

import '../../../core/helpers/colors.dart';
import '../../../core/helpers/screen_util.dart';

class ArticleDetailPage extends StatelessWidget {
  final Article article;
  const ArticleDetailPage({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return Scaffold(
      appBar: AppBar(actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16).r,
          child: Row(
            children: [
              const Icon(Icons.reply),
              SizedBox(
                width: 16.w,
              ),
              const Icon(Icons.bookmark_border),
            ],
          ),
        ),
      ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16).r,
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: KodJazColors.white,
                        border: Border.all(
                            color: KodJazColors.DisabledButtonColor)),
                    width: 1.sw,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.all(const Radius.circular(20).r),
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
                  SizedBox(height: 16.h),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: KodJazColors.PrimaryColor,
                        border: Border.all(
                            color: KodJazColors.DisabledButtonColor)),
                    height: 30.h,
                    width: 90.w,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5).r,
                        child: Text(
                          article.category,
                          style: KodjazTextStyle.fS14FW600
                              .copyWith(color: KodJazColors.white),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    article.title,
                    style: KodjazTextStyle.fS16FW700.copyWith(height: 1.2.h),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    article.content.first.data.toString(),
                    style: KodjazTextStyle.fS14FW400.copyWith(
                      color: KodJazColors.grey5,
                      height: 1.2.h,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
