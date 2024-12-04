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
      password: json['password'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      companyName: json['companyName'] as String?,
      companyDescription: json['companyDescription'] as String?,
      city: json['city'] as String?,
      trustLevel: json['trustLevel'] as String?,
      role: json['role'] as String?,
      status: (json['status'] as num?)?.toInt(),
      lastLogin: json['lastLogin'] as String?,
      token: json['token'] as String?,
      refreshToken: json['refreshToken'] as String?,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'reviews': instance.reviews,
    };

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      customerUuid: json['customerUuid'] as String?,
      manufacturerUuid: json['manufacturerUuid'] as String?,
      reviewText: json['reviewText'] as String?,
      createdAt: json['createdAt'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      customerName: json['customerName'] as String?,
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'customerUuid': instance.customerUuid,
      'manufacturerUuid': instance.manufacturerUuid,
      'reviewText': instance.reviewText,
      'createdAt': instance.createdAt,
      'rating': instance.rating,
      'customerName': instance.customerName,
    };
