// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'books_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BooksModel _$$_BooksModelFromJson(Map<String, dynamic> json) =>
    _$_BooksModel(
      id: json['id'] as String,
      title: json['title'] as String,
      imageUrl: json['imageUrl'] == null
          ? null
          : ImageFile.fromJson(json['imageUrl'] as Map<String, dynamic>),
      booksPage: json['booksPage'] as String,
      publishedYear: json['publishedYear'] as String,
      reviews: json['reviews'] as String,
      rating: json['rating'] as String,
      author: json['author'] as String? ?? "Author",
      booksType: json['booksType'] as String? ?? "BooksType",
      category: json['category'] as String,
      createDate: json['createDate'] as int? ?? 0,
      description: (json['description'] as List<dynamic>?)
              ?.map((e) => Description.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_BooksModelToJson(_$_BooksModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'booksPage': instance.booksPage,
      'publishedYear': instance.publishedYear,
      'reviews': instance.reviews,
      'rating': instance.rating,
      'author': instance.author,
      'booksType': instance.booksType,
      'category': instance.category,
      'createDate': instance.createDate,
      'description': instance.description,
    };

_$_Description _$$_DescriptionFromJson(Map<String, dynamic> json) =>
    _$_Description(
      data: json['data'] as String,
    );

Map<String, dynamic> _$$_DescriptionToJson(_$_Description instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_ImageFile _$$_ImageFileFromJson(Map<String, dynamic> json) => _$_ImageFile(
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$_ImageFileToJson(_$_ImageFile instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
    };
