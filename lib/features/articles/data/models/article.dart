import 'package:freezed_annotation/freezed_annotation.dart';
part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const factory Article({
    required String id,
    required String title,
    MediaFile? heroMedia,
    String? description,
    @Default("Author") String author,
    @Default("ArticleType") String articleType,
    required String category,
    @Default(0) int createDate,
    @Default([]) List<Content> contents,
  }) = _Article;

  factory Article.fromJson(Map<String, Object?> json) => _$ArticleFromJson(json);
}

@freezed
class Content with _$Content {
  const factory Content({
    required String type,
    required String data,
  }) = _Content;

  factory Content.fromJson(Map<String, Object?> json) => _$ContentFromJson(json);
}

@freezed
class MediaFile with _$MediaFile {
  const factory MediaFile({
    String? imageUrl,
    String? fullVideoUrl,
  }) = _MediaFile;

  factory MediaFile.fromJson(Map<String, Object?> json) => _$MediaFileFromJson(json);
}