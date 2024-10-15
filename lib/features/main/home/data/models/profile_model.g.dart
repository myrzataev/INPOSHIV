// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      userUuid: json['userUuid'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      password: json['password'],
      phoneNumber: json['phoneNumber'] as String?,
      companyName: json['companyName'] as String?,
      companyDescription: json['companyDescription'],
      city: json['city'] as String?,
      trustLevel: json['trustLevel'] as String?,
      role: json['role'] as String?,
      status: (json['status'] as num?)?.toInt(),
      lastLogin: json['lastLogin'],
      token: json['token'],
      refreshToken: json['refreshToken'],
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'userUuid': instance.userUuid,
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'phoneNumber': instance.phoneNumber,
      'companyName': instance.companyName,
      'companyDescription': instance.companyDescription,
      'city': instance.city,
      'trustLevel': instance.trustLevel,
      'role': instance.role,
      'status': instance.status,
      'lastLogin': instance.lastLogin,
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };
