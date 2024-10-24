// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_survey_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerSurveyModelImpl _$$CustomerSurveyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerSurveyModelImpl(
      clothingCategoriesList: (json['clothingCategoriesList'] as List<dynamic>?)
          ?.map(
              (e) => ClothingCategoriesList.fromJson(e as Map<String, dynamic>))
          .toList(),
      monthSalesVolume: (json['monthSalesVolume'] as num?)?.toInt(),
      customerPrioritiesList: (json['customerPrioritiesList'] as List<dynamic>?)
          ?.map(
              (e) => ClothingCategoriesList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CustomerSurveyModelImplToJson(
        _$CustomerSurveyModelImpl instance) =>
    <String, dynamic>{
      'clothingCategoriesList': instance.clothingCategoriesList,
      'monthSalesVolume': instance.monthSalesVolume,
      'customerPrioritiesList': instance.customerPrioritiesList,
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
