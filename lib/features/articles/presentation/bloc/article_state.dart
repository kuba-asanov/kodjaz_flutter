part of 'article_bloc.dart';

@freezed
class ArticleState with _$ArticleState {
  factory ArticleState({
    @Default(false) bool loading,
    @Default([]) List<Article> listOfArticles,
    DioError? error,
  }) = _ArticleState;
}

