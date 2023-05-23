import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kodjaz/core/helpers/colors.dart';
import 'package:kodjaz/core/helpers/text_styles.dart';
import 'package:kodjaz/core/navigation/navigation.dart';
import 'package:kodjaz/features/articles/presentation/article_detail_page.dart';
import 'package:kodjaz/features/articles/presentation/widgets/article_card.dart';

import '../../../core/injection/injection.dart';
import '../../../core/navigation/auto_route.gr.dart';
import 'bloc/article_bloc.dart';

class ArticlesPage extends StatefulWidget {
  const ArticlesPage({super.key});

  @override
  State<ArticlesPage> createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  final _bloc = getIt<ArticleBloc>();
  @override
  void initState() {
    _bloc.add(ListArticlesEvent());
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocBuilder<ArticleBloc, ArticleState>(
        bloc: _bloc,
        builder: (context, state) {
          return ListView.builder(
              shrinkWrap: true,
              itemCount: state.listOfArticles.length,
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
                        Navigation.router
                            .push(ArticleDetailRoute(article: state.listOfArticles[index]));
                      },
                      child: AritcleCard(
                        article: state.listOfArticles[index],
                      ),
                    ),
                  ],
                );
              }));
        },
      ),
    );
  }
}
