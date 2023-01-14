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

Cours _$CoursFromJson(Map<String, dynamic> json) {
  return _Cours.fromJson(json);
}

/// @nodoc
mixin _$Cours {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get iconUrl => throw _privateConstructorUsedError;
  int get lessonsCount => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  int get progress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoursCopyWith<Cours> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursCopyWith<$Res> {
  factory $CoursCopyWith(Cours value, $Res Function(Cours) then) =
      _$CoursCopyWithImpl<$Res, Cours>;
  @useResult
  $Res call(
      {String id,
      String name,
      String iconUrl,
      int lessonsCount,
      int level,
      int progress});
}

/// @nodoc
class _$CoursCopyWithImpl<$Res, $Val extends Cours>
    implements $CoursCopyWith<$Res> {
  _$CoursCopyWithImpl(this._value, this._then);

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
    Object? lessonsCount = null,
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
      lessonsCount: null == lessonsCount
          ? _value.lessonsCount
          : lessonsCount // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_CoursCopyWith<$Res> implements $CoursCopyWith<$Res> {
  factory _$$_CoursCopyWith(_$_Cours value, $Res Function(_$_Cours) then) =
      __$$_CoursCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String iconUrl,
      int lessonsCount,
      int level,
      int progress});
}

/// @nodoc
class __$$_CoursCopyWithImpl<$Res> extends _$CoursCopyWithImpl<$Res, _$_Cours>
    implements _$$_CoursCopyWith<$Res> {
  __$$_CoursCopyWithImpl(_$_Cours _value, $Res Function(_$_Cours) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? iconUrl = null,
    Object? lessonsCount = null,
    Object? level = null,
    Object? progress = null,
  }) {
    return _then(_$_Cours(
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
      lessonsCount: null == lessonsCount
          ? _value.lessonsCount
          : lessonsCount // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_Cours implements _Cours {
  const _$_Cours(
      {this.id = '',
      this.name = '',
      this.iconUrl = '',
      this.lessonsCount = 0,
      this.level = 0,
      this.progress = 0});

  factory _$_Cours.fromJson(Map<String, dynamic> json) =>
      _$$_CoursFromJson(json);

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
  final int lessonsCount;
  @override
  @JsonKey()
  final int level;
  @override
  @JsonKey()
  final int progress;

  @override
  String toString() {
    return 'Cours(id: $id, name: $name, iconUrl: $iconUrl, lessonsCount: $lessonsCount, level: $level, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cours &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.lessonsCount, lessonsCount) ||
                other.lessonsCount == lessonsCount) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, iconUrl, lessonsCount, level, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoursCopyWith<_$_Cours> get copyWith =>
      __$$_CoursCopyWithImpl<_$_Cours>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoursToJson(
      this,
    );
  }
}

abstract class _Cours implements Cours {
  const factory _Cours(
      {final String id,
      final String name,
      final String iconUrl,
      final int lessonsCount,
      final int level,
      final int progress}) = _$_Cours;

  factory _Cours.fromJson(Map<String, dynamic> json) = _$_Cours.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get iconUrl;
  @override
  int get lessonsCount;
  @override
  int get level;
  @override
  int get progress;
  @override
  @JsonKey(ignore: true)
  _$$_CoursCopyWith<_$_Cours> get copyWith =>
      throw _privateConstructorUsedError;
}
