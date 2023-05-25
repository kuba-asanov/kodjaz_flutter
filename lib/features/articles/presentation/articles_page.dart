/* External dependencies */
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* Local dependencies */
import 'package:kodjaz/core/helpers/colors.dart';
import 'package:kodjaz/core/helpers/text_styles.dart';
import 'package:kodjaz/core/navigation/navigation.dart';
import 'package:kodjaz/features/articles/presentation/widgets/article_card.dart';
import 'package:kodjaz/features/articles/presentation/widgets/search_field.dart';

import '../../../core/injection/injection.dart';
import '../../../core/navigation/auto_route.gr.dart';
import '../data/models/article.dart';
import 'bloc/article_bloc.dart';
import 'widgets/article_card2.dart';

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
    return Scaffold(
      backgroundColor: const Color(0xffF8F9FD),
      body: SafeArea(
        child: BlocBuilder<ArticleBloc, ArticleState>(
          bloc: _bloc,
          builder: (context, state) {
            return Column(
              children: [
                const SearchField(),
                state.loading
                    ? SizedBox(
                        height: MediaQuery.of(context).size.height / 2,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.listOfArticles.length,
                          itemBuilder: ((context, index) {
                            final Article article = state.listOfArticles[index];

                            return InkWell(
                              onTap: () {
                                Navigation.router
                                    .push(ArticleDetailRoute(article: article));
                              },
                              child: article.articleType == "BIG"
                                  ? AritcleCard(article: article)
                                  : NewsCard(
                                      article: article,
                                    ),
                            );
                          }),
                        ),
                      ),
              ],
            );
          },
        ),
      ),
    );
  }
}
