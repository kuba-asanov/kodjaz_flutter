// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get iconUrl => throw _privateConstructorUsedError;
  String get aboutCourse => throw _privateConstructorUsedError;
  List<Lessons> get lessons => throw _privateConstructorUsedError;
  LessonsStatus get status => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  int get progress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call(
      {String id,
      String name,
      String iconUrl,
      String aboutCourse,
      List<Lessons> lessons,
      LessonsStatus status,
      int level,
      int progress});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? iconUrl = null,
    Object? aboutCourse = null,
    Object? lessons = null,
    Object? status = null,
    Object? level = null,
    Object? progress = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      aboutCourse: null == aboutCourse
          ? _value.aboutCourse
          : aboutCourse // ignore: cast_nullable_to_non_nullable
              as String,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lessons>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LessonsStatus,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$_CourseCopyWith(_$_Course value, $Res Function(_$_Course) then) =
      __$$_CourseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String iconUrl,
      String aboutCourse,
      List<Lessons> lessons,
      LessonsStatus status,
      int level,
      int progress});
}

/// @nodoc
class __$$_CourseCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$_Course>
    implements _$$_CourseCopyWith<$Res> {
  __$$_CourseCopyWithImpl(_$_Course _value, $Res Function(_$_Course) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? iconUrl = null,
    Object? aboutCourse = null,
    Object? lessons = null,
    Object? status = null,
    Object? level = null,
    Object? progress = null,
  }) {
    return _then(_$_Course(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      aboutCourse: null == aboutCourse
          ? _value.aboutCourse
          : aboutCourse // ignore: cast_nullable_to_non_nullable
              as String,
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lessons>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LessonsStatus,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Course implements _Course {
  const _$_Course(
      {this.id = '',
      this.name = '',
      this.iconUrl = '',
      this.aboutCourse = '',
      final List<Lessons> lessons = const [],
      this.status = LessonsStatus.didntStart,
      this.level = 0,
      this.progress = 0})
      : _lessons = lessons;

  factory _$_Course.fromJson(Map<String, dynamic> json) =>
      _$$_CourseFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String iconUrl;
  @override
  @JsonKey()
  final String aboutCourse;
  final List<Lessons> _lessons;
  @override
  @JsonKey()
  List<Lessons> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  @JsonKey()
  final LessonsStatus status;
  @override
  @JsonKey()
  final int level;
  @override
  @JsonKey()
  final int progress;

  @override
  String toString() {
    return 'Course(id: $id, name: $name, iconUrl: $iconUrl, aboutCourse: $aboutCourse, lessons: $lessons, status: $status, level: $level, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Course &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.aboutCourse, aboutCourse) ||
                other.aboutCourse == aboutCourse) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, iconUrl, aboutCourse,
      const DeepCollectionEquality().hash(_lessons), status, level, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseCopyWith<_$_Course> get copyWith =>
      __$$_CourseCopyWithImpl<_$_Course>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseToJson(
      this,
    );
  }
}

abstract class _Course implements Course {
  const factory _Course(
      {final String id,
      final String name,
      final String iconUrl,
      final String aboutCourse,
      final List<Lessons> lessons,
      final LessonsStatus status,
      final int level,
      final int progress}) = _$_Course;

  factory _Course.fromJson(Map<String, dynamic> json) = _$_Course.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get iconUrl;
  @override
  String get aboutCourse;
  @override
  List<Lessons> get lessons;
  @override
  LessonsStatus get status;
  @override
  int get level;
  @override
  int get progress;
  @override
  @JsonKey(ignore: true)
  _$$_CourseCopyWith<_$_Course> get copyWith =>
      throw _privateConstructorUsedError;
}

Lessons _$LessonsFromJson(Map<String, dynamic> json) {
  return _Lessons.fromJson(json);
}

/// @nodoc
mixin _$Lessons {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  LessonsStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonsCopyWith<Lessons> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonsCopyWith<$Res> {
  factory $LessonsCopyWith(Lessons value, $Res Function(Lessons) then) =
      _$LessonsCopyWithImpl<$Res, Lessons>;
  @useResult
  $Res call({String id, String name, LessonsStatus status});
}

/// @nodoc
class _$LessonsCopyWithImpl<$Res, $Val extends Lessons>
    implements $LessonsCopyWith<$Res> {
  _$LessonsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LessonsStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LessonsCopyWith<$Res> implements $LessonsCopyWith<$Res> {
  factory _$$_LessonsCopyWith(
          _$_Lessons value, $Res Function(_$_Lessons) then) =
      __$$_LessonsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, LessonsStatus status});
}

/// @nodoc
class __$$_LessonsCopyWithImpl<$Res>
    extends _$LessonsCopyWithImpl<$Res, _$_Lessons>
    implements _$$_LessonsCopyWith<$Res> {
  __$$_LessonsCopyWithImpl(_$_Lessons _value, $Res Function(_$_Lessons) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
  }) {
    return _then(_$_Lessons(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LessonsStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lessons implements _Lessons {
  const _$_Lessons(
      {this.id = '', this.name = '', this.status = LessonsStatus.didntStart});

  factory _$_Lessons.fromJson(Map<String, dynamic> json) =>
      _$$_LessonsFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final LessonsStatus status;

  @override
  String toString() {
    return 'Lessons(id: $id, name: $name, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lessons &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonsCopyWith<_$_Lessons> get copyWith =>
      __$$_LessonsCopyWithImpl<_$_Lessons>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonsToJson(
      this,
    );
  }
}

abstract class _Lessons implements Lessons {
  const factory _Lessons(
      {final String id,
      final String name,
      final LessonsStatus status}) = _$_Lessons;

  factory _Lessons.fromJson(Map<String, dynamic> json) = _$_Lessons.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  LessonsStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_LessonsCopyWith<_$_Lessons> get copyWith =>
      throw _privateConstructorUsedError;
}
