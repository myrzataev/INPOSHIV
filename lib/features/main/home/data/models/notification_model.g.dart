// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      history: (json['history'] as List<dynamic>?)
          ?.map((e) => History.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'history': instance.history,
    };

_$HistoryImpl _$$HistoryImplFromJson(Map<String, dynamic> json) =>
    _$HistoryImpl(
      id: (json['id'] as num?)?.toInt(),
      userUuid: json['userUuid'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      clickAction: json['clickAction'] as String?,
      token: json['token'] as String?,
      manufacturerUuid: json['manufacturerUuid'] as String?,
      auctionUuid: json['auctionUuid'] as String?,
      orderUuid: json['orderUuid'] as String?,
      orderId: (json['orderId'] as num?)?.toInt(),
      invoiceUuid: json['invoiceUuid'] as String?,
      chatUuid: json['chatUuid'] as String?,
      recipientUuid: json['recipientUuid'] as String?,
    );

Map<String, dynamic> _$$HistoryImplToJson(_$HistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userUuid': instance.userUuid,
      'title': instance.title,
      'body': instance.body,
      'clickAction': instance.clickAction,
      'token': instance.token,
      'manufacturerUuid': instance.manufacturerUuid,
      'auctionUuid': instance.auctionUuid,
      'orderUuid': instance.orderUuid,
      'orderId': instance.orderId,
      'invoiceUuid': instance.invoiceUuid,
      'chatUuid': instance.chatUuid,
      'recipientUuid': instance.recipientUuid,
    };
