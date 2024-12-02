// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesEntityImpl _$$CategoriesEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoriesEntityImpl(
      slug: json['slug'] as String?,
      name: json['name'] as String?,
      id: (json['id'] as num?)?.toInt(),
      subcategories: (json['subcategories'] as List<dynamic>?)
          ?.map((e) => Subcategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoriesEntityImplToJson(
        _$CategoriesEntityImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'name': instance.name,
      'id': instance.id,
      'subcategories': instance.subcategories,
    };

_$SubcategoryImpl _$$SubcategoryImplFromJson(Map<String, dynamic> json) =>
    _$SubcategoryImpl(
      slug: json['slug'] as String?,
      name: json['name'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SubcategoryImplToJson(_$SubcategoryImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'name': instance.name,
      'id': instance.id,
    };
