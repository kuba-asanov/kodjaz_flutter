// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Track _$TrackFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Track {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get iconUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<Unit> get track_units => throw _privateConstructorUsedError;
  LessonsStatus get status => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  int get progress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackCopyWith<Track> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackCopyWith<$Res> {
  factory $TrackCopyWith(Track value, $Res Function(Track) then) =
      _$TrackCopyWithImpl<$Res, Track>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? iconUrl,
      String description,
      List<Unit> track_units,
      LessonsStatus status,
      int level,
      int progress});
}

/// @nodoc
class _$TrackCopyWithImpl<$Res, $Val extends Track>
    implements $TrackCopyWith<$Res> {
  _$TrackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? iconUrl = freezed,
    Object? description = null,
    Object? track_units = null,
    Object? status = null,
    Object? level = null,
    Object? progress = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      track_units: null == track_units
          ? _value.track_units
          : track_units // ignore: cast_nullable_to_non_nullable
              as List<Unit>,
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
abstract class _$$_CourseCopyWith<$Res> implements $TrackCopyWith<$Res> {
  factory _$$_CourseCopyWith(_$_Course value, $Res Function(_$_Course) then) =
      __$$_CourseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? iconUrl,
      String description,
      List<Unit> track_units,
      LessonsStatus status,
      int level,
      int progress});
}

/// @nodoc
class __$$_CourseCopyWithImpl<$Res> extends _$TrackCopyWithImpl<$Res, _$_Course>
    implements _$$_CourseCopyWith<$Res> {
  __$$_CourseCopyWithImpl(_$_Course _value, $Res Function(_$_Course) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? iconUrl = freezed,
    Object? description = null,
    Object? track_units = null,
    Object? status = null,
    Object? level = null,
    Object? progress = null,
  }) {
    return _then(_$_Course(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      track_units: null == track_units
          ? _value._track_units
          : track_units // ignore: cast_nullable_to_non_nullable
              as List<Unit>,
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
      {required this.id,
      this.name = '',
      this.iconUrl,
      this.description = '',
      final List<Unit> track_units = const [],
      this.status = LessonsStatus.didntStart,
      this.level = 0,
      this.progress = 0})
      : _track_units = track_units;

  factory _$_Course.fromJson(Map<String, dynamic> json) =>
      _$$_CourseFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  final String? iconUrl;
  @override
  @JsonKey()
  final String description;
  final List<Unit> _track_units;
  @override
  @JsonKey()
  List<Unit> get track_units {
    if (_track_units is EqualUnmodifiableListView) return _track_units;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_track_units);
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
    return 'Track(id: $id, name: $name, iconUrl: $iconUrl, description: $description, track_units: $track_units, status: $status, level: $level, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Course &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._track_units, _track_units) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      iconUrl,
      description,
      const DeepCollectionEquality().hash(_track_units),
      status,
      level,
      progress);

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

abstract class _Course implements Track {
  const factory _Course(
      {required final int id,
      final String name,
      final String? iconUrl,
      final String description,
      final List<Unit> track_units,
      final LessonsStatus status,
      final int level,
      final int progress}) = _$_Course;

  factory _Course.fromJson(Map<String, dynamic> json) = _$_Course.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get iconUrl;
  @override
  String get description;
  @override
  List<Unit> get track_units;
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

Unit _$UnitFromJson(Map<String, dynamic> json) {
  return _Unit.fromJson(json);
}

/// @nodoc
mixin _$Unit {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<Lesson> get unit_lessons => throw _privateConstructorUsedError;
  LessonsStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitCopyWith<Unit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitCopyWith<$Res> {
  factory $UnitCopyWith(Unit value, $Res Function(Unit) then) =
      _$UnitCopyWithImpl<$Res, Unit>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      List<Lesson> unit_lessons,
      LessonsStatus status});
}

/// @nodoc
class _$UnitCopyWithImpl<$Res, $Val extends Unit>
    implements $UnitCopyWith<$Res> {
  _$UnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? unit_lessons = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      unit_lessons: null == unit_lessons
          ? _value.unit_lessons
          : unit_lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LessonsStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UnitCopyWith<$Res> implements $UnitCopyWith<$Res> {
  factory _$$_UnitCopyWith(_$_Unit value, $Res Function(_$_Unit) then) =
      __$$_UnitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      List<Lesson> unit_lessons,
      LessonsStatus status});
}

/// @nodoc
class __$$_UnitCopyWithImpl<$Res> extends _$UnitCopyWithImpl<$Res, _$_Unit>
    implements _$$_UnitCopyWith<$Res> {
  __$$_UnitCopyWithImpl(_$_Unit _value, $Res Function(_$_Unit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? unit_lessons = null,
    Object? status = null,
  }) {
    return _then(_$_Unit(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      unit_lessons: null == unit_lessons
          ? _value._unit_lessons
          : unit_lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LessonsStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Unit implements _Unit {
  const _$_Unit(
      {required this.id,
      this.name = '',
      this.description = '',
      final List<Lesson> unit_lessons = const [],
      this.status = LessonsStatus.didntStart})
      : _unit_lessons = unit_lessons;

  factory _$_Unit.fromJson(Map<String, dynamic> json) => _$$_UnitFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  final List<Lesson> _unit_lessons;
  @override
  @JsonKey()
  List<Lesson> get unit_lessons {
    if (_unit_lessons is EqualUnmodifiableListView) return _unit_lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unit_lessons);
  }

  @override
  @JsonKey()
  final LessonsStatus status;

  @override
  String toString() {
    return 'Unit(id: $id, name: $name, description: $description, unit_lessons: $unit_lessons, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unit &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._unit_lessons, _unit_lessons) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description,
      const DeepCollectionEquality().hash(_unit_lessons), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnitCopyWith<_$_Unit> get copyWith =>
      __$$_UnitCopyWithImpl<_$_Unit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnitToJson(
      this,
    );
  }
}

abstract class _Unit implements Unit {
  const factory _Unit(
      {required final int id,
      final String name,
      final String description,
      final List<Lesson> unit_lessons,
      final LessonsStatus status}) = _$_Unit;

  factory _Unit.fromJson(Map<String, dynamic> json) = _$_Unit.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  List<Lesson> get unit_lessons;
  @override
  LessonsStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_UnitCopyWith<_$_Unit> get copyWith => throw _privateConstructorUsedError;
}

Lesson _$LessonFromJson(Map<String, dynamic> json) {
  return _Lesson.fromJson(json);
}

/// @nodoc
mixin _$Lesson {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<Exercise> get lesson_exercises => throw _privateConstructorUsedError;
  LessonsStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonCopyWith<Lesson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res, Lesson>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      List<Exercise> lesson_exercises,
      LessonsStatus status});
}

/// @nodoc
class _$LessonCopyWithImpl<$Res, $Val extends Lesson>
    implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? lesson_exercises = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      lesson_exercises: null == lesson_exercises
          ? _value.lesson_exercises
          : lesson_exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LessonsStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LessonCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$$_LessonCopyWith(_$_Lesson value, $Res Function(_$_Lesson) then) =
      __$$_LessonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      List<Exercise> lesson_exercises,
      LessonsStatus status});
}

/// @nodoc
class __$$_LessonCopyWithImpl<$Res>
    extends _$LessonCopyWithImpl<$Res, _$_Lesson>
    implements _$$_LessonCopyWith<$Res> {
  __$$_LessonCopyWithImpl(_$_Lesson _value, $Res Function(_$_Lesson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? lesson_exercises = null,
    Object? status = null,
  }) {
    return _then(_$_Lesson(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      lesson_exercises: null == lesson_exercises
          ? _value._lesson_exercises
          : lesson_exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LessonsStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lesson implements _Lesson {
  const _$_Lesson(
      {required this.id,
      this.name = '',
      this.description = '',
      final List<Exercise> lesson_exercises = const [],
      this.status = LessonsStatus.didntStart})
      : _lesson_exercises = lesson_exercises;

  factory _$_Lesson.fromJson(Map<String, dynamic> json) =>
      _$$_LessonFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  final List<Exercise> _lesson_exercises;
  @override
  @JsonKey()
  List<Exercise> get lesson_exercises {
    if (_lesson_exercises is EqualUnmodifiableListView)
      return _lesson_exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lesson_exercises);
  }

  @override
  @JsonKey()
  final LessonsStatus status;

  @override
  String toString() {
    return 'Lesson(id: $id, name: $name, description: $description, lesson_exercises: $lesson_exercises, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lesson &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._lesson_exercises, _lesson_exercises) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description,
      const DeepCollectionEquality().hash(_lesson_exercises), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonCopyWith<_$_Lesson> get copyWith =>
      __$$_LessonCopyWithImpl<_$_Lesson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonToJson(
      this,
    );
  }
}

abstract class _Lesson implements Lesson {
  const factory _Lesson(
      {required final int id,
      final String name,
      final String description,
      final List<Exercise> lesson_exercises,
      final LessonsStatus status}) = _$_Lesson;

  factory _Lesson.fromJson(Map<String, dynamic> json) = _$_Lesson.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  List<Exercise> get lesson_exercises;
  @override
  LessonsStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_LessonCopyWith<_$_Lesson> get copyWith =>
      throw _privateConstructorUsedError;
}

Exercise _$ExerciseFromJson(Map<String, dynamic> json) {
  return _Exercise.fromJson(json);
}

/// @nodoc
mixin _$Exercise {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get lecture => throw _privateConstructorUsedError;
  String get instruction => throw _privateConstructorUsedError;
  String get hint => throw _privateConstructorUsedError;
  String get default_code => throw _privateConstructorUsedError;
  LessonsStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res, Exercise>;
  @useResult
  $Res call(
      {int id,
      String name,
      String lecture,
      String instruction,
      String hint,
      String default_code,
      LessonsStatus status});
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res, $Val extends Exercise>
    implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lecture = null,
    Object? instruction = null,
    Object? hint = null,
    Object? default_code = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lecture: null == lecture
          ? _value.lecture
          : lecture // ignore: cast_nullable_to_non_nullable
              as String,
      instruction: null == instruction
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as String,
      hint: null == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
      default_code: null == default_code
          ? _value.default_code
          : default_code // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LessonsStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExerciseCopyWith<$Res> implements $ExerciseCopyWith<$Res> {
  factory _$$_ExerciseCopyWith(
          _$_Exercise value, $Res Function(_$_Exercise) then) =
      __$$_ExerciseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String lecture,
      String instruction,
      String hint,
      String default_code,
      LessonsStatus status});
}

/// @nodoc
class __$$_ExerciseCopyWithImpl<$Res>
    extends _$ExerciseCopyWithImpl<$Res, _$_Exercise>
    implements _$$_ExerciseCopyWith<$Res> {
  __$$_ExerciseCopyWithImpl(
      _$_Exercise _value, $Res Function(_$_Exercise) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lecture = null,
    Object? instruction = null,
    Object? hint = null,
    Object? default_code = null,
    Object? status = null,
  }) {
    return _then(_$_Exercise(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lecture: null == lecture
          ? _value.lecture
          : lecture // ignore: cast_nullable_to_non_nullable
              as String,
      instruction: null == instruction
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as String,
      hint: null == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
      default_code: null == default_code
          ? _value.default_code
          : default_code // ignore: cast_nullable_to_non_nullable
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
class _$_Exercise implements _Exercise {
  const _$_Exercise(
      {required this.id,
      this.name = '',
      this.lecture = '',
      this.instruction = '',
      this.hint = '',
      this.default_code = '',
      this.status = LessonsStatus.didntStart});

  factory _$_Exercise.fromJson(Map<String, dynamic> json) =>
      _$$_ExerciseFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String lecture;
  @override
  @JsonKey()
  final String instruction;
  @override
  @JsonKey()
  final String hint;
  @override
  @JsonKey()
  final String default_code;
  @override
  @JsonKey()
  final LessonsStatus status;

  @override
  String toString() {
    return 'Exercise(id: $id, name: $name, lecture: $lecture, instruction: $instruction, hint: $hint, default_code: $default_code, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Exercise &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lecture, lecture) || other.lecture == lecture) &&
            (identical(other.instruction, instruction) ||
                other.instruction == instruction) &&
            (identical(other.hint, hint) || other.hint == hint) &&
            (identical(other.default_code, default_code) ||
                other.default_code == default_code) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, lecture, instruction, hint, default_code, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseCopyWith<_$_Exercise> get copyWith =>
      __$$_ExerciseCopyWithImpl<_$_Exercise>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExerciseToJson(
      this,
    );
  }
}

abstract class _Exercise implements Exercise {
  const factory _Exercise(
      {required final int id,
      final String name,
      final String lecture,
      final String instruction,
      final String hint,
      final String default_code,
      final LessonsStatus status}) = _$_Exercise;

  factory _Exercise.fromJson(Map<String, dynamic> json) = _$_Exercise.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get lecture;
  @override
  String get instruction;
  @override
  String get hint;
  @override
  String get default_code;
  @override
  LessonsStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseCopyWith<_$_Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}
