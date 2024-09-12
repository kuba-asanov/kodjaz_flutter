import 'package:freezed_annotation/freezed_annotation.dart';
part 'books_model.freezed.dart';
part 'books_model.g.dart';

@freezed
class BooksModel with _$BooksModel {
  const factory BooksModel({
    required String id,
    required String title,
    ImageFile? imageUrl,
   required String booksPage,
    required String publishedYear,
    required String reviews,
   required String rating,
    @Default("Author") String author,
    @Default("BooksType") String booksType,
    required String category,
    @Default(0) int createDate,
    @Default([]) List<Description> description,
  }) = _BooksModel;

  factory BooksModel.fromJson(Map<String, Object?> json) =>
      _$BooksModelFromJson(json);
}

@freezed
class Description with _$Description {
  const factory Description({
    // required String type,
    required String data,
  }) = _Description;

  factory Description.fromJson(Map<String, Object?> json) => _$DescriptionFromJson(json);
}

@freezed
class ImageFile with _$ImageFile {
  const factory ImageFile({String? imageUrl}) = _ImageFile;
  factory ImageFile.fromJson(Map<String, Object?> json) => _$ImageFileFromJson(json);
}
