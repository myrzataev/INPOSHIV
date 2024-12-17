// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDetailsResponseModelImpl _$$OrderDetailsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDetailsResponseModelImpl(
      orderId: (json['orderId'] as num?)?.toInt(),
      productName: json['productName'] as String?,
      material: json['material'] as String?,
      color: json['color'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      technicalDocuments: json['technicalDocuments'],
      lekalaDocuments: json['lekalaDocuments'],
      agreements: json['agreements'],
      deadlineStart: json['deadlineStart'] as String?,
      deadlineEnd: json['deadlineEnd'] as String?,
      discount: json['discount'],
      deliveryPoint: json['deliveryPoint'] as String?,
      technicalDocumentUrls: (json['technicalDocumentUrls'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      lekalaDocumentUrls: (json['lekalaDocumentUrls'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      agreementUrls: json['agreementUrls'] as List<dynamic>?,
      manufacturerUuid: json['manufacturerUuid'],
      deadlineStartAsLocalDate:
          (json['deadlineStartAsLocalDate'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList(),
      deadlineEndAsLocalDate: (json['deadlineEndAsLocalDate'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$OrderDetailsResponseModelImplToJson(
        _$OrderDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'productName': instance.productName,
      'material': instance.material,
      'color': instance.color,
      'quantity': instance.quantity,
      'technicalDocuments': instance.technicalDocuments,
      'lekalaDocuments': instance.lekalaDocuments,
      'agreements': instance.agreements,
      'deadlineStart': instance.deadlineStart,
      'deadlineEnd': instance.deadlineEnd,
      'discount': instance.discount,
      'deliveryPoint': instance.deliveryPoint,
      'technicalDocumentUrls': instance.technicalDocumentUrls,
      'lekalaDocumentUrls': instance.lekalaDocumentUrls,
      'agreementUrls': instance.agreementUrls,
      'manufacturerUuid': instance.manufacturerUuid,
      'deadlineStartAsLocalDate': instance.deadlineStartAsLocalDate,
      'deadlineEndAsLocalDate': instance.deadlineEndAsLocalDate,
    };
