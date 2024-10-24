// To parse this JSON data, do
//
//     final createChatRoomModel = createChatRoomModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'create_chat_room_model.freezed.dart';
part 'create_chat_room_model.g.dart';

CreateChatRoomModel createChatRoomModelFromJson(String str) => CreateChatRoomModel.fromJson(json.decode(str));

String createChatRoomModelToJson(CreateChatRoomModel data) => json.encode(data.toJson());

@freezed
class CreateChatRoomModel with _$CreateChatRoomModel {
    const factory CreateChatRoomModel({
        String? messageUuid,
        String? chatUuid,
        String? senderUuid,
        String? senderName,
        String? recipientName,
        String? imageUrl,
        String? recipientUuid,
        String? content,
        int? type,
        String? messageStatus,
        DateTime? startedAt,
    }) = _CreateChatRoomModel;

    factory CreateChatRoomModel.fromJson(Map<String, dynamic> json) => _$CreateChatRoomModelFromJson(json);
}
