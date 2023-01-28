// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      email: json['email'] as String?,
      password1: json['password1'] as String?,
      password2: json['password2'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'email': instance.email,
      'password1': instance.password1,
      'password2': instance.password2,
    };

_$_UserCreateResponse _$$_UserCreateResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UserCreateResponse(
      email: json['email'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_UserCreateResponseToJson(
        _$_UserCreateResponse instance) =>
    <String, dynamic>{
      'email': instance.email,
    };
