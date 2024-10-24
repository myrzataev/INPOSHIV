// To parse this JSON data, do
//
//     final chatRoomHistoryModel = chatRoomHistoryModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'chat_room_history_model.freezed.dart';
part 'chat_room_history_model.g.dart';

List<ChatRoomHistoryModel> chatRoomHistoryModelFromJson(String str) => List<ChatRoomHistoryModel>.from(json.decode(str).map((x) => ChatRoomHistoryModel.fromJson(x)));

String chatRoomHistoryModelToJson(List<ChatRoomHistoryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class ChatRoomHistoryModel with _$ChatRoomHistoryModel {
    const factory ChatRoomHistoryModel({
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
    }) = _ChatRoomHistoryModel;

    factory ChatRoomHistoryModel.fromJson(Map<String, dynamic> json) => _$ChatRoomHistoryModelFromJson(json);
}
