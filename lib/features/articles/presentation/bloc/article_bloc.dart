import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kodjaz/features/articles/data/models/article.dart';

import '../../data/dummy_data.dart';

part 'article_event.dart';
part 'article_state.dart';
part 'article_bloc.freezed.dart';

@LazySingleton()
class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  ArticleBloc() : super(ArticleState()) {
    on<ListArticlesEvent>((event, emit) {
      emit(state.copyWith(listOfArticles: DUMMY_DATA_ARTICLES));
    });
  }
}
