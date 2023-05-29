import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:bilimapp/features/articles/data/models/article.dart';

import '../../repository/articles_repository.dart';

part 'article_event.dart';
part 'article_state.dart';
part 'article_bloc.freezed.dart';

@LazySingleton()
class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  final ArticleRepository _articleRepository;

  ArticleBloc(this._articleRepository) : super(ArticleState()) {
    on<ListArticlesEvent>((event, emit) async {
      try {
        emit(state.copyWith(loading: true));
        final List<Article> articles = await _articleRepository.listArticles();

        emit(state.copyWith(
          listOfArticles: articles,
          loading: false,
        ));
      } catch (e, stackTrace) {
        print("$e, $stackTrace");
        emit(state.copyWith(loading: false, error: e.toString()));
      }
    });
  }
}
