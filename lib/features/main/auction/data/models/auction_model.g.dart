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
      'auctionProcesses': instance.auctionProcesses,
    };

_$AuctionProcessImpl _$$AuctionProcessImplFromJson(Map<String, dynamic> json) =>
    _$AuctionProcessImpl(
      auctionId: (json['auctionId'] as num?)?.toInt(),
      manufacturerUuid: json['manufacturerUuid'] as String?,
      bidPrice: (json['bidPrice'] as num?)?.toInt(),
      bidTime: (json['bidTime'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      bidCount: (json['bidCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AuctionProcessImplToJson(
        _$AuctionProcessImpl instance) =>
    <String, dynamic>{
      'auctionId': instance.auctionId,
      'manufacturerUuid': instance.manufacturerUuid,
      'bidPrice': instance.bidPrice,
      'bidTime': instance.bidTime,
      'bidCount': instance.bidCount,
    };
