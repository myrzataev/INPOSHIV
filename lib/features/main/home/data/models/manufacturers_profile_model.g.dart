// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturers_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManufacturersProfileModelImpl _$$ManufacturersProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ManufacturersProfileModelImpl(
      id: json['id'],
      userId: json['userId'],
      userUuid: json['userUuid'],
      manufacturerUuid: json['manufacturerUuid'] as String?,
      username: json['username'],
      legalStatus: json['legalStatus'],
      trustLevel: json['trustLevel'] as String?,
      companyName: json['companyName'] as String?,
      city: json['city'],
      monthProductsVolume: json['monthProductsVolume'],
      companyDescription: json['companyDescription'],
      rating: (json['rating'] as num?)?.toInt(),
      clothingCategoriesList: json['clothingCategoriesList'],
      manufacturerPrioritiesList: json['manufacturerPrioritiesList'],
      photosUrls: json['photosUrls'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ManufacturersProfileModelImplToJson(
        _$ManufacturersProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'userUuid': instance.userUuid,
      'manufacturerUuid': instance.manufacturerUuid,
      'username': instance.username,
      'legalStatus': instance.legalStatus,
      'trustLevel': instance.trustLevel,
      'companyName': instance.companyName,
      'city': instance.city,
      'monthProductsVolume': instance.monthProductsVolume,
      'companyDescription': instance.companyDescription,
      'rating': instance.rating,
      'clothingCategoriesList': instance.clothingCategoriesList,
      'manufacturerPrioritiesList': instance.manufacturerPrioritiesList,
      'photosUrls': instance.photosUrls,
    };
