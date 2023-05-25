import 'package:freezed_annotation/freezed_annotation.dart';
part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const factory Article({
    required String id,
    required String title,
    String? urlToImage,
    String? synopsis,
    @Default("Author") String author,
    @Default("ArticleType") String articleType,
    required String category,
    @Default(0) int createDate,
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
