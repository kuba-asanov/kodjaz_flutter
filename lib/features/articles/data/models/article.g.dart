// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => _$_Article(
      id: json['id'] as String,
      author: json['author'] as String? ?? "Author",
      category: json['category'] as String? ?? "Category",
      createDate: json['createDate'] as int? ?? 0,
      heroMedia: json['heroMedia'] as String? ?? "heroMedia",
      synopsis: json['synopsis'] as String? ?? "synopsis",
      title: json['title'] as String? ?? "title",
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => Content.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'category': instance.category,
      'createDate': instance.createDate,
      'heroMedia': instance.heroMedia,
      'synopsis': instance.synopsis,
      'title': instance.title,
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
