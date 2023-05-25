// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => _$_Article(
      id: json['id'] as String,
      title: json['title'] as String,
      urlToImage: json['urlToImage'] as String?,
      synopsis: json['synopsis'] as String?,
      author: json['author'] as String? ?? "Author",
      articleType: json['articleType'] as String? ?? "ArticleType",
      category: json['category'] as String,
      createDate: json['createDate'] as int? ?? 0,
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => Content.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'urlToImage': instance.urlToImage,
      'synopsis': instance.synopsis,
      'author': instance.author,
      'articleType': instance.articleType,
      'category': instance.category,
      'createDate': instance.createDate,
      'content': instance.content,
    };

_$_Content _$$_ContentFromJson(Map<String, dynamic> json) => _$_Content(
      type: json['type'] as String? ?? "type",
      data: json['data'] as String? ?? "data",
    );

Map<String, dynamic> _$$_ContentToJson(_$_Content instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
    };
