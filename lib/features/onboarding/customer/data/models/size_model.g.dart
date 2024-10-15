// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'size_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SizeModelImpl _$$SizeModelImplFromJson(Map<String, dynamic> json) =>
    _$SizeModelImpl(
      id: (json['id'] as num?)?.toInt(),
      sizeNameUs: json['sizeNameUs'] as String?,
      sizeNameRus: json['sizeNameRus'] as String?,
    );

Map<String, dynamic> _$$SizeModelImplToJson(_$SizeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sizeNameUs': instance.sizeNameUs,
      'sizeNameRus': instance.sizeNameRus,
    };
