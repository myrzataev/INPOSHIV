// To parse this JSON data, do
//
//     final chatRoomsModel = chatRoomsModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'chat_rooms_model.freezed.dart';
part 'chat_rooms_model.g.dart';

List<ChatRoomsModel> chatRoomsModelFromJson(String str) => List<ChatRoomsModel>.from(json.decode(str).map((x) => ChatRoomsModel.fromJson(x)));

String chatRoomsModelToJson(List<ChatRoomsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class ChatRoomsModel with _$ChatRoomsModel {
    const factory ChatRoomsModel({
        String? username,
        String? chatUuid,
        String? senderUuid,
        String? recipientUuid,
        DateTime? localDateTime,
        DateTime? createdAt,
        String? senderName,
        String? recipientName,
        String? lastMessageUuid,
        String? lastMessageContent,
        String? lastMessageSenderUuid,
        DateTime? lastMessageDate,
    }) = _ChatRoomsModel;

    factory ChatRoomsModel.fromJson(Map<String, dynamic> json) => _$ChatRoomsModelFromJson(json);
}
