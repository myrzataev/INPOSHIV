// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_members_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuctionMembersModelImpl _$$AuctionMembersModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AuctionMembersModelImpl(
      ordersQuantity: (json['ordersQuantity'] as num?)?.toInt(),
      orderPrice: (json['orderPrice'] as num?)?.toInt(),
      orderSumPrice: (json['orderSumPrice'] as num?)?.toInt(),
      trustLevel: json['trustLevel'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      manufacturerUuid: json['manufacturerUuid'] as String?,
      manufacturerUserUuid: json['manufacturerUserUuid'] as String?,
      manufacturerUsername: json['manufacturerUsername'] as String?,
    );

Map<String, dynamic> _$$AuctionMembersModelImplToJson(
        _$AuctionMembersModelImpl instance) =>
    <String, dynamic>{
      'ordersQuantity': instance.ordersQuantity,
      'orderPrice': instance.orderPrice,
      'orderSumPrice': instance.orderSumPrice,
      'trustLevel': instance.trustLevel,
      'rating': instance.rating,
      'manufacturerUuid': instance.manufacturerUuid,
      'manufacturerUserUuid': instance.manufacturerUserUuid,
      'manufacturerUsername': instance.manufacturerUsername,
    };
