part of 'article_bloc.dart';

abstract class ArticleEvent {}

class ListArticlesEvent extends ArticleEvent {}

class GetArticleEvent extends ArticleEvent {
  final String id;

  GetArticleEvent({required this.id});
}
