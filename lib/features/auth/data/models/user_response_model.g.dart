// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseModelImpl _$$UserResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserResponseModelImpl(
      userUuid: json['userUuid'] as String?,
      customerOrManufacturerUuid: json['customerOrManufacturerUuid'] as String?,
      username: json['username'] as String?,
      email: json['email'],
      password: json['password'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      companyName: json['companyName'],
      companyDescription: json['companyDescription'],
      city: json['city'],
      trustLevel: json['trustLevel'],
      role: json['role'] as String?,
      status: json['status'],
      lastLogin: json['lastLogin'],
      token: json['token'],
      refreshToken: json['refreshToken'],
    );

Map<String, dynamic> _$$UserResponseModelImplToJson(
        _$UserResponseModelImpl instance) =>
    <String, dynamic>{
      'userUuid': instance.userUuid,
      'customerOrManufacturerUuid': instance.customerOrManufacturerUuid,
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
