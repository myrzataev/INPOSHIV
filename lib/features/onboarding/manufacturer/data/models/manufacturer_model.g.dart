// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManufacturerModelImpl _$$ManufacturerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ManufacturerModelImpl(
      username: json['username'] as String?,
      companyName: json['companyName'] as String?,
      description: json['description'] as String?,
      companySize: (json['companySize'] as num?)?.toInt(),
      marketExperience: (json['marketExperience'] as num?)?.toInt(),
      factoryCount: (json['factoryCount'] as num?)?.toInt(),
      generatedUsername: json['generatedUsername'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      photosUrls: (json['photosUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ManufacturerModelImplToJson(
        _$ManufacturerModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'companyName': instance.companyName,
      'description': instance.description,
      'companySize': instance.companySize,
      'marketExperience': instance.marketExperience,
      'factoryCount': instance.factoryCount,
      'generatedUsername': instance.generatedUsername,
      'rating': instance.rating,
      'photosUrls': instance.photosUrls,
    };
