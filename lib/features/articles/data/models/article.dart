import 'package:freezed_annotation/freezed_annotation.dart';
part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const factory Article({
    required String id,
    @Default("Author") String author,
    @Default("Category") String category,
    @Default(0) int createDate,
    @Default("heroMedia") String heroMedia,
    @Default("synopsis") String synopsis,
    @Default("title") String title,
    @Default([]) List<Content> content,
  }) = _Article;

  factory Article.fromJson(Map<String, Object?> json) => _$ArticleFromJson(json);
}

@freezed
class Content with _$Content {
  const factory Content({
    @Default("type") String type,
    @Default("data") String data,
  }) = _Content;

  factory Content.fromJson(Map<String, Object?> json) => _$ContentFromJson(json);
}
