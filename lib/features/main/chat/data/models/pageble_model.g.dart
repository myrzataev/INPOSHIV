// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pageble_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PagebleModelImpl _$$PagebleModelImplFromJson(Map<String, dynamic> json) =>
    _$PagebleModelImpl(
      page: (json['page'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
      sort: (json['sort'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PagebleModelImplToJson(_$PagebleModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
      'sort': instance.sort,
    };
