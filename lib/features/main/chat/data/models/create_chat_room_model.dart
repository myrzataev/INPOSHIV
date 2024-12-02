// To parse this JSON data, do
//
//     final createChatRoomModel = createChatRoomModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'create_chat_room_model.freezed.dart';
part 'create_chat_room_model.g.dart';

List<CreateChatRoomModel> createChatRoomModelFromJson(String str) => List<CreateChatRoomModel>.from(json.decode(str).map((x) => CreateChatRoomModel.fromJson(x)));

String createChatRoomModelToJson(List<CreateChatRoomModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class CreateChatRoomModel with _$CreateChatRoomModel {
    const factory CreateChatRoomModel({
        String? chatUuid,
        String? senderUuid,
        String? recipientUuid,
        DateTime? createdAt,
        String? senderName,
        String? recipientName,
        String? lastMessageUuid,
        String? lastMessageContent,
        String? lastMessageSenderUuid,
        int? orderId,
        DateTime? lastMessageDate,
        String? customerOrManufacturerUuid,
    }) = _CreateChatRoomModel;

    factory CreateChatRoomModel.fromJson(Map<String, dynamic> json) => _$CreateChatRoomModelFromJson(json);
}
