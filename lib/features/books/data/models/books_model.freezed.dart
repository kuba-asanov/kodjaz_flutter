// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BooksModel _$BooksModelFromJson(Map<String, dynamic> json) {
  return _BooksModel.fromJson(json);
}

/// @nodoc
mixin _$BooksModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  ImageFile? get imageUrl => throw _privateConstructorUsedError;
  String get booksPage => throw _privateConstructorUsedError;
  String get publishedYear => throw _privateConstructorUsedError;
  String get reviews => throw _privateConstructorUsedError;
  String get rating => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get booksType => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get createDate => throw _privateConstructorUsedError;
  List<Description> get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BooksModelCopyWith<BooksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksModelCopyWith<$Res> {
  factory $BooksModelCopyWith(
          BooksModel value, $Res Function(BooksModel) then) =
      _$BooksModelCopyWithImpl<$Res, BooksModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      ImageFile? imageUrl,
      String booksPage,
      String publishedYear,
      String reviews,
      String rating,
      String author,
      String booksType,
      String category,
      int createDate,
      List<Description> description});

  $ImageFileCopyWith<$Res>? get imageUrl;
}

/// @nodoc
class _$BooksModelCopyWithImpl<$Res, $Val extends BooksModel>
    implements $BooksModelCopyWith<$Res> {
  _$BooksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = freezed,
    Object? booksPage = null,
    Object? publishedYear = null,
    Object? reviews = null,
    Object? rating = null,
    Object? author = null,
    Object? booksType = null,
    Object? category = null,
    Object? createDate = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as ImageFile?,
      booksPage: null == booksPage
          ? _value.booksPage
          : booksPage // ignore: cast_nullable_to_non_nullable
              as String,
      publishedYear: null == publishedYear
          ? _value.publishedYear
          : publishedYear // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      booksType: null == booksType
          ? _value.booksType
          : booksType // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as List<Description>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageFileCopyWith<$Res>? get imageUrl {
    if (_value.imageUrl == null) {
      return null;
    }

    return $ImageFileCopyWith<$Res>(_value.imageUrl!, (value) {
      return _then(_value.copyWith(imageUrl: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BooksModelCopyWith<$Res>
    implements $BooksModelCopyWith<$Res> {
  factory _$$_BooksModelCopyWith(
          _$_BooksModel value, $Res Function(_$_BooksModel) then) =
      __$$_BooksModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      ImageFile? imageUrl,
      String booksPage,
      String publishedYear,
      String reviews,
      String rating,
      String author,
      String booksType,
      String category,
      int createDate,
      List<Description> description});

  @override
  $ImageFileCopyWith<$Res>? get imageUrl;
}

/// @nodoc
class __$$_BooksModelCopyWithImpl<$Res>
    extends _$BooksModelCopyWithImpl<$Res, _$_BooksModel>
    implements _$$_BooksModelCopyWith<$Res> {
  __$$_BooksModelCopyWithImpl(
      _$_BooksModel _value, $Res Function(_$_BooksModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = freezed,
    Object? booksPage = null,
    Object? publishedYear = null,
    Object? reviews = null,
    Object? rating = null,
    Object? author = null,
    Object? booksType = null,
    Object? category = null,
    Object? createDate = null,
    Object? description = null,
  }) {
    return _then(_$_BooksModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as ImageFile?,
      booksPage: null == booksPage
          ? _value.booksPage
          : booksPage // ignore: cast_nullable_to_non_nullable
              as String,
      publishedYear: null == publishedYear
          ? _value.publishedYear
          : publishedYear // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      booksType: null == booksType
          ? _value.booksType
          : booksType // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as List<Description>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BooksModel implements _BooksModel {
  const _$_BooksModel(
      {required this.id,
      required this.title,
      this.imageUrl,
      required this.booksPage,
      required this.publishedYear,
      required this.reviews,
      required this.rating,
      this.author = "Author",
      this.booksType = "BooksType",
      required this.category,
      this.createDate = 0,
      final List<Description> description = const []})
      : _description = description;

  factory _$_BooksModel.fromJson(Map<String, dynamic> json) =>
      _$$_BooksModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final ImageFile? imageUrl;
  @override
  final String booksPage;
  @override
  final String publishedYear;
  @override
  final String reviews;
  @override
  final String rating;
  @override
  @JsonKey()
  final String author;
  @override
  @JsonKey()
  final String booksType;
  @override
  final String category;
  @override
  @JsonKey()
  final int createDate;
  final List<Description> _description;
  @override
  @JsonKey()
  List<Description> get description {
    if (_description is EqualUnmodifiableListView) return _description;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_description);
  }

  @override
  String toString() {
    return 'BooksModel(id: $id, title: $title, imageUrl: $imageUrl, booksPage: $booksPage, publishedYear: $publishedYear, reviews: $reviews, rating: $rating, author: $author, booksType: $booksType, category: $category, createDate: $createDate, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BooksModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.booksPage, booksPage) ||
                other.booksPage == booksPage) &&
            (identical(other.publishedYear, publishedYear) ||
                other.publishedYear == publishedYear) &&
            (identical(other.reviews, reviews) || other.reviews == reviews) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.booksType, booksType) ||
                other.booksType == booksType) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            const DeepCollectionEquality()
                .equals(other._description, _description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      imageUrl,
      booksPage,
      publishedYear,
      reviews,
      rating,
      author,
      booksType,
      category,
      createDate,
      const DeepCollectionEquality().hash(_description));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BooksModelCopyWith<_$_BooksModel> get copyWith =>
      __$$_BooksModelCopyWithImpl<_$_BooksModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BooksModelToJson(
      this,
    );
  }
}

abstract class _BooksModel implements BooksModel {
  const factory _BooksModel(
      {required final String id,
      required final String title,
      final ImageFile? imageUrl,
      required final String booksPage,
      required final String publishedYear,
      required final String reviews,
      required final String rating,
      final String author,
      final String booksType,
      required final String category,
      final int createDate,
      final List<Description> description}) = _$_BooksModel;

  factory _BooksModel.fromJson(Map<String, dynamic> json) =
      _$_BooksModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  ImageFile? get imageUrl;
  @override
  String get booksPage;
  @override
  String get publishedYear;
  @override
  String get reviews;
  @override
  String get rating;
  @override
  String get author;
  @override
  String get booksType;
  @override
  String get category;
  @override
  int get createDate;
  @override
  List<Description> get description;
  @override
  @JsonKey(ignore: true)
  _$$_BooksModelCopyWith<_$_BooksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Description _$DescriptionFromJson(Map<String, dynamic> json) {
  return _Description.fromJson(json);
}

/// @nodoc
mixin _$Description {
// required String type,
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DescriptionCopyWith<Description> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescriptionCopyWith<$Res> {
  factory $DescriptionCopyWith(
          Description value, $Res Function(Description) then) =
      _$DescriptionCopyWithImpl<$Res, Description>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class _$DescriptionCopyWithImpl<$Res, $Val extends Description>
    implements $DescriptionCopyWith<$Res> {
  _$DescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DescriptionCopyWith<$Res>
    implements $DescriptionCopyWith<$Res> {
  factory _$$_DescriptionCopyWith(
          _$_Description value, $Res Function(_$_Description) then) =
      __$$_DescriptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$_DescriptionCopyWithImpl<$Res>
    extends _$DescriptionCopyWithImpl<$Res, _$_Description>
    implements _$$_DescriptionCopyWith<$Res> {
  __$$_DescriptionCopyWithImpl(
      _$_Description _value, $Res Function(_$_Description) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Description(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Description implements _Description {
  const _$_Description({required this.data});

  factory _$_Description.fromJson(Map<String, dynamic> json) =>
      _$$_DescriptionFromJson(json);

// required String type,
  @override
  final String data;

  @override
  String toString() {
    return 'Description(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Description &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DescriptionCopyWith<_$_Description> get copyWith =>
      __$$_DescriptionCopyWithImpl<_$_Description>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DescriptionToJson(
      this,
    );
  }
}

abstract class _Description implements Description {
  const factory _Description({required final String data}) = _$_Description;

  factory _Description.fromJson(Map<String, dynamic> json) =
      _$_Description.fromJson;

  @override // required String type,
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$_DescriptionCopyWith<_$_Description> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageFile _$ImageFileFromJson(Map<String, dynamic> json) {
  return _ImageFile.fromJson(json);
}

/// @nodoc
mixin _$ImageFile {
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageFileCopyWith<ImageFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageFileCopyWith<$Res> {
  factory $ImageFileCopyWith(ImageFile value, $Res Function(ImageFile) then) =
      _$ImageFileCopyWithImpl<$Res, ImageFile>;
  @useResult
  $Res call({String? imageUrl});
}

/// @nodoc
class _$ImageFileCopyWithImpl<$Res, $Val extends ImageFile>
    implements $ImageFileCopyWith<$Res> {
  _$ImageFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageFileCopyWith<$Res> implements $ImageFileCopyWith<$Res> {
  factory _$$_ImageFileCopyWith(
          _$_ImageFile value, $Res Function(_$_ImageFile) then) =
      __$$_ImageFileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imageUrl});
}

/// @nodoc
class __$$_ImageFileCopyWithImpl<$Res>
    extends _$ImageFileCopyWithImpl<$Res, _$_ImageFile>
    implements _$$_ImageFileCopyWith<$Res> {
  __$$_ImageFileCopyWithImpl(
      _$_ImageFile _value, $Res Function(_$_ImageFile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_$_ImageFile(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageFile implements _ImageFile {
  const _$_ImageFile({this.imageUrl});

  factory _$_ImageFile.fromJson(Map<String, dynamic> json) =>
      _$$_ImageFileFromJson(json);

  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'ImageFile(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageFile &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageFileCopyWith<_$_ImageFile> get copyWith =>
      __$$_ImageFileCopyWithImpl<_$_ImageFile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageFileToJson(
      this,
    );
  }
}

abstract class _ImageFile implements ImageFile {
  const factory _ImageFile({final String? imageUrl}) = _$_ImageFile;

  factory _ImageFile.fromJson(Map<String, dynamic> json) =
      _$_ImageFile.fromJson;

  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ImageFileCopyWith<_$_ImageFile> get copyWith =>
      throw _privateConstructorUsedError;
}
