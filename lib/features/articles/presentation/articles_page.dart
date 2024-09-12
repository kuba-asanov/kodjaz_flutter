/* External dependencies */
import 'package:bilimapp/core/common/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* Local dependencies */
import 'package:bilimapp/core/navigation/navigation.dart';
import 'package:bilimapp/features/articles/presentation/widgets/article_card.dart';
import 'package:bilimapp/features/articles/presentation/widgets/search_field.dart';

import '../../../core/helpers/screen_util.dart';
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
    MyScreenUtil.init(context);

    return Scaffold(
      backgroundColor: const Color(0xffF8F9FD),
      body: SafeArea(
        child: BlocBuilder<ArticleBloc, ArticleState>(
          bloc: _bloc,
          builder: (context, state) {
            return Column(
              children: [
                const SearchField(
                  hintText: "Search News",
                ),
                state.loading
                    ? SizedBox(
                        height: MediaQuery.of(context).size.height / 2,
                        child: const Center(
                          child: Spinner(),
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
