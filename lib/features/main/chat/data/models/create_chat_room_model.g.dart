// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_chat_room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateChatRoomModelImpl _$$CreateChatRoomModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateChatRoomModelImpl(
      chatUuid: json['chatUuid'] as String?,
      senderUuid: json['senderUuid'] as String?,
      recipientUuid: json['recipientUuid'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      senderName: json['senderName'] as String?,
      recipientName: json['recipientName'] as String?,
      lastMessageUuid: json['lastMessageUuid'] as String?,
      lastMessageContent: json['lastMessageContent'] as String?,
      lastMessageSenderUuid: json['lastMessageSenderUuid'] as String?,
      orderId: (json['orderId'] as num?)?.toInt(),
      lastMessageDate: json['lastMessageDate'] == null
          ? null
          : DateTime.parse(json['lastMessageDate'] as String),
      customerOrManufacturerUuid: json['customerOrManufacturerUuid'] as String?,
    );

Map<String, dynamic> _$$CreateChatRoomModelImplToJson(
        _$CreateChatRoomModelImpl instance) =>
    <String, dynamic>{
      'chatUuid': instance.chatUuid,
      'senderUuid': instance.senderUuid,
      'recipientUuid': instance.recipientUuid,
      'createdAt': instance.createdAt?.toIso8601String(),
      'senderName': instance.senderName,
      'recipientName': instance.recipientName,
      'lastMessageUuid': instance.lastMessageUuid,
      'lastMessageContent': instance.lastMessageContent,
      'lastMessageSenderUuid': instance.lastMessageSenderUuid,
      'orderId': instance.orderId,
      'lastMessageDate': instance.lastMessageDate?.toIso8601String(),
      'customerOrManufacturerUuid': instance.customerOrManufacturerUuid,
    };
