// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      categoryId: (json['categoryId'] as num?)?.toInt(),
      fabricId: (json['fabricId'] as num?)?.toInt(),
      description: json['description'] as String?,
      orderId: (json['orderId'] as num?)?.toInt(),
      orderStatus: (json['orderStatus'] as num?)?.toInt(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      customerName: json['customerName'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'fabricId': instance.fabricId,
      'description': instance.description,
      'orderId': instance.orderId,
      'orderStatus': instance.orderStatus,
      'products': instance.products,
      'customerName': instance.customerName,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      name: json['name'] as String?,
      categoryId: (json['categoryId'] as num?)?.toInt(),
      fabricId: (json['fabricId'] as num?)?.toInt(),
      sizeId: (json['sizeId'] as num?)?.toInt(),
      priceUsd: (json['priceUsd'] as num?)?.toInt(),
      priceRub: (json['priceRub'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      description: json['description'] as String?,
      photoUrls: (json['photoUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'categoryId': instance.categoryId,
      'fabricId': instance.fabricId,
      'sizeId': instance.sizeId,
      'priceUsd': instance.priceUsd,
      'priceRub': instance.priceRub,
      'quantity': instance.quantity,
      'description': instance.description,
      'photoUrls': instance.photoUrls,
    };
