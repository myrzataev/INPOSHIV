// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_priorities_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobPrioritiesModelImpl _$$JobPrioritiesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$JobPrioritiesModelImpl(
      id: (json['id'] as num?)?.toInt(),
      slug: json['slug'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$JobPrioritiesModelImplToJson(
        _$JobPrioritiesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
    };
