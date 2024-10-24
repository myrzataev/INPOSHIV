// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceModelImpl _$$InvoiceModelImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceModelImpl(
      orderId: (json['orderId'] as num?)?.toInt(),
      preliminaryQuantity: (json['preliminaryQuantity'] as num?)?.toInt(),
      pricePerUnit: (json['pricePerUnit'] as num?)?.toInt(),
      preliminaryAmount: (json['preliminaryAmount'] as num?)?.toInt(),
      lekalaCost: (json['lekalaCost'] as num?)?.toInt(),
      sampleCost: (json['sampleCost'] as num?)?.toInt(),
      deliveryCost: (json['deliveryCost'] as num?)?.toInt(),
      discount: (json['discount'] as num?)?.toInt(),
      totalAmount: (json['totalAmount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$InvoiceModelImplToJson(_$InvoiceModelImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'preliminaryQuantity': instance.preliminaryQuantity,
      'pricePerUnit': instance.pricePerUnit,
      'preliminaryAmount': instance.preliminaryAmount,
      'lekalaCost': instance.lekalaCost,
      'sampleCost': instance.sampleCost,
      'deliveryCost': instance.deliveryCost,
      'discount': instance.discount,
      'totalAmount': instance.totalAmount,
    };
