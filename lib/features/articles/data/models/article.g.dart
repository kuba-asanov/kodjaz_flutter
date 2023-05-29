// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => _$_Article(
      id: json['id'] as String,
      title: json['title'] as String,
      heroMedia: json['heroMedia'] == null
          ? null
          : MediaFile.fromJson(json['heroMedia'] as Map<String, dynamic>),
      description: json['description'] as String?,
      author: json['author'] as String? ?? "Author",
      articleType: json['articleType'] as String? ?? "ArticleType",
      category: json['category'] as String,
      createDate: json['createDate'] as int? ?? 0,
      contents: (json['contents'] as List<dynamic>?)
              ?.map((e) => Content.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'heroMedia': instance.heroMedia,
      'description': instance.description,
      'author': instance.author,
      'articleType': instance.articleType,
      'category': instance.category,
      'createDate': instance.createDate,
      'contents': instance.contents,
    };

_$_Content _$$_ContentFromJson(Map<String, dynamic> json) => _$_Content(
      type: json['type'] as String,
      data: json['data'] as String,
    );

Map<String, dynamic> _$$_ContentToJson(_$_Content instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
    };

_$_MediaFile _$$_MediaFileFromJson(Map<String, dynamic> json) => _$_MediaFile(
      imageUrl: json['imageUrl'] as String?,
      fullVideoUrl: json['fullVideoUrl'] as String?,
    );

Map<String, dynamic> _$$_MediaFileToJson(_$_MediaFile instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'fullVideoUrl': instance.fullVideoUrl,
    };
