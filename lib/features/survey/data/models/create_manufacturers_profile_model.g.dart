// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_manufacturers_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateManufacturersProfileModelImpl
    _$$CreateManufacturersProfileModelImplFromJson(Map<String, dynamic> json) =>
        _$CreateManufacturersProfileModelImpl(
          legalStatus: json['legalStatus'] as String?,
          trustLevel: json['trustLevel'] as String?,
          companyName: json['companyName'] as String?,
          companyDescription: json['companyDescription'] as String?,
          city: json['city'] as String?,
          clothingCategoriesList: (json['clothingCategoriesList']
                  as List<dynamic>?)
              ?.map((e) =>
                  ClothingCategoriesList.fromJson(e as Map<String, dynamic>))
              .toList(),
          monthProductsVolume: (json['monthProductsVolume'] as num?)?.toInt(),
          manufacturerPrioritiesList: (json['manufacturerPrioritiesList']
                  as List<dynamic>?)
              ?.map((e) =>
                  ClothingCategoriesList.fromJson(e as Map<String, dynamic>))
              .toList(),
          photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$$CreateManufacturersProfileModelImplToJson(
        _$CreateManufacturersProfileModelImpl instance) =>
    <String, dynamic>{
      'legalStatus': instance.legalStatus,
      'trustLevel': instance.trustLevel,
      'companyName': instance.companyName,
      'companyDescription': instance.companyDescription,
      'city': instance.city,
      'clothingCategoriesList': instance.clothingCategoriesList,
      'monthProductsVolume': instance.monthProductsVolume,
      'manufacturerPrioritiesList': instance.manufacturerPrioritiesList,
      'photos': instance.photos,
    };

_$ClothingCategoriesListImpl _$$ClothingCategoriesListImplFromJson(
        Map<String, dynamic> json) =>
    _$ClothingCategoriesListImpl(
      id: (json['id'] as num?)?.toInt(),
      slug: json['slug'] as String?,
      name: json['name'] as String?,
      subcategories: (json['subcategories'] as List<dynamic>?)
          ?.map(
              (e) => ClothingCategoriesList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClothingCategoriesListImplToJson(
        _$ClothingCategoriesListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'subcategories': instance.subcategories,
    };
