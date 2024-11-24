// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      role: json['role'] as String?,
      firstAndLastName: json['firstAndLastName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      city: json['city'] as String?,
      companyName: json['companyName'] as String?,
      password: json['password'] as String?,
      firebaseToken: json['firebaseToken'] as String?,
      telegramChatId: json['telegramChatId'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'firstAndLastName': instance.firstAndLastName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'city': instance.city,
      'companyName': instance.companyName,
      'password': instance.password,
      'firebaseToken': instance.firebaseToken,
      'telegramChatId': instance.telegramChatId,
    };
