// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductCategoriesModelImpl _$$ProductCategoriesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductCategoriesModelImpl(
      orderId: (json['orderId'] as num?)?.toInt(),
      orderStatus: (json['orderStatus'] as num?)?.toInt(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      customerName: json['customerName'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      auctonsUuid: (json['auctonsUuid'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ProductCategoriesModelImplToJson(
        _$ProductCategoriesModelImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'orderStatus': instance.orderStatus,
      'products': instance.products,
      'customerName': instance.customerName,
      'createdAt': instance.createdAt?.toIso8601String(),
      'auctonsUuid': instance.auctonsUuid,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      name: json['name'] as String?,
      clothingCategoryId: (json['clothingCategoryId'] as num?)?.toInt(),
      fabricId: (json['fabricId'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      sizeQuantities: (json['sizeQuantities'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ),
      description: json['description'],
      priceUsd: (json['priceUsd'] as num?)?.toInt(),
      priceRub: (json['priceRub'] as num?)?.toDouble(),
      photos:
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'clothingCategoryId': instance.clothingCategoryId,
      'fabricId': instance.fabricId,
      'quantity': instance.quantity,
      'sizeQuantities': instance.sizeQuantities,
      'description': instance.description,
      'priceUsd': instance.priceUsd,
      'priceRub': instance.priceRub,
      'photos': instance.photos,
    };
