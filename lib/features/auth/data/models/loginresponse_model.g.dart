// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginresponse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseModelImpl(
      token: json['token'] as String?,
      refreshToken: json['refreshToken'] as String?,
      userUuid: json['userUuid'] as String?,
      customerOrManufacturerUuid: json['customerOrManufacturerUuid'] as String?,
      role: json['role'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(
        _$LoginResponseModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'userUuid': instance.userUuid,
      'customerOrManufacturerUuid': instance.customerOrManufacturerUuid,
      'role': instance.role,
      'username': instance.username,
    };
