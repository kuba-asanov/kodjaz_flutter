// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Token _$$_TokenFromJson(Map<String, dynamic> json) => _$_Token(
      refresh: json['refresh'] as String?,
      access: json['access'] as String?,
    );

Map<String, dynamic> _$$_TokenToJson(_$_Token instance) => <String, dynamic>{
      'refresh': instance.refresh,
      'access': instance.access,
    };

_$_SignInInfo _$$_SignInInfoFromJson(Map<String, dynamic> json) =>
    _$_SignInInfo(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_SignInInfoToJson(_$_SignInInfo instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
