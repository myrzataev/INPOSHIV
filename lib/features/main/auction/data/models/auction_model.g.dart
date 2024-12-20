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
      auctionProcesses: (json['auctionProcesses'] as List<dynamic>?)
          ?.map((e) => AuctionProcess.fromJson(e as Map<String, dynamic>))
          .toList(),
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

_$AuctionProcessImpl _$$AuctionProcessImplFromJson(Map<String, dynamic> json) =>
    _$AuctionProcessImpl(
      auctionId: (json['auctionId'] as num?)?.toInt(),
      manufacturerUuid: json['manufacturerUuid'] as String?,
      manufacturerUsername: json['manufacturerUsername'] as String?,
      bidPrice: (json['bidPrice'] as num?)?.toInt(),
      bidTime: json['bidTime'] == null
          ? null
          : DateTime.parse(json['bidTime'] as String),
      bidCount: (json['bidCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AuctionProcessImplToJson(
        _$AuctionProcessImpl instance) =>
    <String, dynamic>{
      'auctionId': instance.auctionId,
      'manufacturerUuid': instance.manufacturerUuid,
      'manufacturerUsername': instance.manufacturerUsername,
      'bidPrice': instance.bidPrice,
      'bidTime': instance.bidTime?.toIso8601String(),
      'bidCount': instance.bidCount,
    };

_$ProductsListImpl _$$ProductsListImplFromJson(Map<String, dynamic> json) =>
    _$ProductsListImpl(
      name: json['name'] as String?,
      clothingCategoryId: (json['clothingCategoryId'] as num?)?.toInt(),
      fabricId: (json['fabricId'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      sizeQuantities: (json['sizeQuantities'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ),
      description: json['description'] as String?,
      priceUsd: (json['priceUsd'] as num?)?.toInt(),
      priceRub: (json['priceRub'] as num?)?.toDouble(),
      photos:
          (json['photos'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      lekalaDocuments: (json['lekalaDocuments'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      technicalDocuments: (json['technicalDocuments'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$ProductsListImplToJson(_$ProductsListImpl instance) =>
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
      'lekalaDocuments': instance.lekalaDocuments,
      'technicalDocuments': instance.technicalDocuments,
    };
