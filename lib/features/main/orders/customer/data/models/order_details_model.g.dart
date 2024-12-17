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
      material: json['material'] as String?,
      color: json['color'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      technicalDocuments: (json['technicalDocuments'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      lekalaDocuments: (json['lekalaDocuments'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      agreements: (json['agreements'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      deadlineStart: json['deadlineStart'] as String?,
      deadlineEnd: json['deadlineEnd'] as String?,
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
    _$OrderDetailsModelImpl instance) {
  final val = <String, dynamic>{
    'orderId': instance.orderId,
    'productName': instance.productName,
    'material': instance.material,
    'color': instance.color,
    'quantity': instance.quantity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'technicalDocuments', _nullableListToJson(instance.technicalDocuments));
  writeNotNull(
      'lekalaDocuments', _nullableListToJson(instance.lekalaDocuments));
  val['agreements'] = instance.agreements;
  val['deadlineStart'] = instance.deadlineStart;
  val['deadlineEnd'] = instance.deadlineEnd;
  val['discount'] = instance.discount;
  val['deliveryPoint'] = instance.deliveryPoint;
  val['manufacturerUuid'] = instance.manufacturerUuid;
  val['technicalDocumentUrls'] = instance.technicalDocumentUrls;
  val['lekalaDocumentUrls'] = instance.lekalaDocumentUrls;
  return val;
}
