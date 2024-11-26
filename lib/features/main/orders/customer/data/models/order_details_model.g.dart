// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDetailsModelImpl _$$OrderDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDetailsModelImpl(
      orderId: (json['orderId'] as num?)?.toInt(),
      productName: json['productName'] as String?,
      material: (json['material'] as num?)?.toInt(),
      color: json['color'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      technicalDocuments: (json['technicalDocuments'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      lekalaDocuments: (json['lekalaDocuments'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
      discount: (json['discount'] as num?)?.toInt(),
      deliveryPoint: json['deliveryPoint'] as String?,
      manufacturerUuid: json['manufacturerUuid'] as String?,
      technicalDocumentUrls: (json['technicalDocumentUrls'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      lekalaDocumentUrls: (json['lekalaDocumentUrls'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$OrderDetailsModelImplToJson(
        _$OrderDetailsModelImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'productName': instance.productName,
      'material': instance.material,
      'color': instance.color,
      'quantity': instance.quantity,
      'technicalDocuments': instance.technicalDocuments,
      'lekalaDocuments': instance.lekalaDocuments,
      'deadline': instance.deadline?.toIso8601String(),
      'discount': instance.discount,
      'deliveryPoint': instance.deliveryPoint,
      'manufacturerUuid': instance.manufacturerUuid,
      'technicalDocumentUrls': instance.technicalDocumentUrls,
      'lekalaDocumentUrls': instance.lekalaDocumentUrls,
    };
