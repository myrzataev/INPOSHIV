// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatRoomHistoryModelImpl _$$ChatRoomHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatRoomHistoryModelImpl(
      messageUuid: json['messageUuid'] as String?,
      chatUuid: json['chatUuid'] as String?,
      senderUuid: json['senderUuid'] as String?,
      senderName: json['senderName'] as String?,
      recipientName: json['recipientName'] as String?,
      imageUrl: json['imageUrl'] as String?,
      recipientUuid: json['recipientUuid'] as String?,
      content: json['content'] as String?,
      type: (json['type'] as num?)?.toInt(),
      messageStatus: json['messageStatus'] as String?,
    );

Map<String, dynamic> _$$ChatRoomHistoryModelImplToJson(
        _$ChatRoomHistoryModelImpl instance) =>
    <String, dynamic>{
      'messageUuid': instance.messageUuid,
      'chatUuid': instance.chatUuid,
      'senderUuid': instance.senderUuid,
      'senderName': instance.senderName,
      'recipientName': instance.recipientName,
      'imageUrl': instance.imageUrl,
      'recipientUuid': instance.recipientUuid,
      'content': instance.content,
      'type': instance.type,
      'messageStatus': instance.messageStatus,
    };
