// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackingModelImpl _$$TrackingModelImplFromJson(Map<String, dynamic> json) =>
    _$TrackingModelImpl(
      id: (json['id'] as num?)?.toInt(),
      invoiceUuid: json['invoiceUuid'] as String?,
      orderId: (json['orderId'] as num?)?.toInt(),
      stageAccepted: json['stageAccepted'],
      activeStage: json['activeStage'],
      activeStageId: (json['activeStageId'] as num?)?.toInt(),
      activeStageDescription: json['activeStageDescription'] as String?,
      allChecks: (json['allChecks'] as List<dynamic>?)
          ?.map((e) => AllC.fromJson(e as Map<String, dynamic>))
          .toList(),
      allComments: (json['allComments'] as List<dynamic>?)
          ?.map((e) => AllC.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrackingModelImplToJson(_$TrackingModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoiceUuid': instance.invoiceUuid,
      'orderId': instance.orderId,
      'stageAccepted': instance.stageAccepted,
      'activeStage': instance.activeStage,
      'activeStageId': instance.activeStageId,
      'activeStageDescription': instance.activeStageDescription,
      'allChecks': instance.allChecks,
      'allComments': instance.allComments,
    };

_$AllCImpl _$$AllCImplFromJson(Map<String, dynamic> json) => _$AllCImpl(
      id: (json['id'] as num?)?.toInt(),
      orderStage: json['orderStage'] as String?,
      fileUrl: json['fileUrl'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$AllCImplToJson(_$AllCImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderStage': instance.orderStage,
      'fileUrl': instance.fileUrl,
      'createdAt': instance.createdAt?.toIso8601String(),
      'content': instance.content,
    };
