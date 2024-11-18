// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerOrdersModelImpl _$$CustomerOrdersModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerOrdersModelImpl(
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
      auctonsUuid: (json['auctonsUuid'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      auctionProcessDtoList: (json['auctionProcessDtoList'] as List<dynamic>?)
          ?.map(
              (e) => AuctionProcessDtoList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CustomerOrdersModelImplToJson(
        _$CustomerOrdersModelImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'fabricId': instance.fabricId,
      'description': instance.description,
      'orderId': instance.orderId,
      'orderStatus': instance.orderStatus,
      'products': instance.products,
      'customerName': instance.customerName,
      'createdAt': instance.createdAt?.toIso8601String(),
      'auctonsUuid': instance.auctonsUuid,
      'auctionProcessDtoList': instance.auctionProcessDtoList,
    };

_$AuctionProcessDtoListImpl _$$AuctionProcessDtoListImplFromJson(
        Map<String, dynamic> json) =>
    _$AuctionProcessDtoListImpl(
      auctionId: (json['auctionId'] as num?)?.toInt(),
      manufacturerUuid: json['manufacturerUuid'] as String?,
      bidPrice: (json['bidPrice'] as num?)?.toInt(),
      bidTime: json['bidTime'] == null
          ? null
          : DateTime.parse(json['bidTime'] as String),
      bidCount: (json['bidCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AuctionProcessDtoListImplToJson(
        _$AuctionProcessDtoListImpl instance) =>
    <String, dynamic>{
      'auctionId': instance.auctionId,
      'manufacturerUuid': instance.manufacturerUuid,
      'bidPrice': instance.bidPrice,
      'bidTime': instance.bidTime?.toIso8601String(),
      'bidCount': instance.bidCount,
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
      description: json['description'] as String?,
      priceUsd: (json['priceUsd'] as num?)?.toDouble(),
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
