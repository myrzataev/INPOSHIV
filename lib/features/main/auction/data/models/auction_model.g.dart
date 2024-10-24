// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuctionModelImpl _$$AuctionModelImplFromJson(Map<String, dynamic> json) =>
    _$AuctionModelImpl(
      orderId: (json['orderId'] as num?)?.toInt(),
      winnerUid: json['winnerUid'],
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'],
      auctionUuid: json['auctionUuid'] as String?,
      productsList: (json['productsList'] as List<dynamic>?)
          ?.map((e) => ProductsList.fromJson(e as Map<String, dynamic>))
          .toList(),
      auctionProcesses: json['auctionProcesses'] as List<dynamic>?,
    );

Map<String, dynamic> _$$AuctionModelImplToJson(_$AuctionModelImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'winnerUid': instance.winnerUid,
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime,
      'auctionUuid': instance.auctionUuid,
      'productsList': instance.productsList,
      'auctionProcesses': instance.auctionProcesses,
    };

_$ProductsListImpl _$$ProductsListImplFromJson(Map<String, dynamic> json) =>
    _$ProductsListImpl(
      name: json['name'] as String?,
      categoryId: json['categoryId'],
      fabricId: (json['fabricId'] as num?)?.toInt(),
      sizeId: (json['sizeId'] as num?)?.toInt(),
      priceUsd: (json['priceUsd'] as num?)?.toInt(),
      priceRub: (json['priceRub'] as num?)?.toDouble(),
      quantity: json['quantity'],
      description: json['description'],
      photoUrls: (json['photoUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ProductsListImplToJson(_$ProductsListImpl instance) =>
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
