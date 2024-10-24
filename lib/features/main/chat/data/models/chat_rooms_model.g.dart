// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_rooms_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatRoomsModelImpl _$$ChatRoomsModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatRoomsModelImpl(
      username: json['username'] as String?,
      chatUuid: json['chatUuid'] as String?,
      senderUuid: json['senderUuid'] as String?,
      recipientUuid: json['recipientUuid'] as String?,
      localDateTime: json['localDateTime'] == null
          ? null
          : DateTime.parse(json['localDateTime'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      senderName: json['senderName'] as String?,
      recipientName: json['recipientName'] as String?,
      lastMessageUuid: json['lastMessageUuid'] as String?,
      lastMessageContent: json['lastMessageContent'] as String?,
      lastMessageSenderUuid: json['lastMessageSenderUuid'] as String?,
      lastMessageDate: json['lastMessageDate'] == null
          ? null
          : DateTime.parse(json['lastMessageDate'] as String),
    );

Map<String, dynamic> _$$ChatRoomsModelImplToJson(
        _$ChatRoomsModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'chatUuid': instance.chatUuid,
      'senderUuid': instance.senderUuid,
      'recipientUuid': instance.recipientUuid,
      'localDateTime': instance.localDateTime?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'senderName': instance.senderName,
      'recipientName': instance.recipientName,
      'lastMessageUuid': instance.lastMessageUuid,
      'lastMessageContent': instance.lastMessageContent,
      'lastMessageSenderUuid': instance.lastMessageSenderUuid,
      'lastMessageDate': instance.lastMessageDate?.toIso8601String(),
    };
