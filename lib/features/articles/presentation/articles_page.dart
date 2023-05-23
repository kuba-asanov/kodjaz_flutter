import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kodjaz/core/helpers/colors.dart';
import 'package:kodjaz/core/helpers/text_styles.dart';
import 'package:kodjaz/core/navigation/navigation.dart';
import 'package:kodjaz/features/articles/presentation/article_detail_page.dart';
import 'package:kodjaz/features/articles/presentation/widgets/article_card.dart';

import '../../../core/navigation/auto_route.gr.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 12,
          itemBuilder: ((context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (index == 0)
                  Text(
                    "Articles",
                    style: KodjazTextStyle.fS22FW700.copyWith(color: KodJazColors.black),
                  ),
                if (index == 0)
                  Text(
                    "Wednethday, 24 May",
                    style: KodjazTextStyle.fS14FW700.copyWith(color: KodJazColors.black),
                  ),
                InkWell(
                  onTap: () {
                    Navigation.router.push(ArticleDetailRoute());
                  },
                  child: AritcleCard(),
                ),
              ],
            );
          })),
    );
  }
}
