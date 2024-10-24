// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturer_survey_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManufacturerSurveyModelImpl _$$ManufacturerSurveyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ManufacturerSurveyModelImpl(
      clothingCategoriesList: (json['clothingCategoriesList'] as List<dynamic>?)
          ?.map(
              (e) => ClothingCategoriesList.fromJson(e as Map<String, dynamic>))
          .toList(),
      monthProductsVolume: (json['monthProductsVolume'] as num?)?.toInt(),
      manufacturerPrioritiesList: (json['manufacturerPrioritiesList']
              as List<dynamic>?)
          ?.map(
              (e) => ClothingCategoriesList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ManufacturerSurveyModelImplToJson(
        _$ManufacturerSurveyModelImpl instance) =>
    <String, dynamic>{
      'clothingCategoriesList': instance.clothingCategoriesList,
      'monthProductsVolume': instance.monthProductsVolume,
      'manufacturerPrioritiesList': instance.manufacturerPrioritiesList,
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
