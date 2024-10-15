// To parse this JSON data, do
//
//     final chatRoomHistoryModel = chatRoomHistoryModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'chat_room_history_model.freezed.dart';
part 'chat_room_history_model.g.dart';

ChatRoomHistoryModel chatRoomHistoryModelFromJson(String str) => ChatRoomHistoryModel.fromJson(json.decode(str));

String chatRoomHistoryModelToJson(ChatRoomHistoryModel data) => json.encode(data.toJson());

@freezed
class ChatRoomHistoryModel with _$ChatRoomHistoryModel {
    const factory ChatRoomHistoryModel({
        int? orderId,
        String? productName,
        int? material,
        String? color,
        int? quantity,
        List<String>? technicalDocuments,
        List<String>? lekalaDocuments,
        DateTime? deadline,
        int? discount,
        String? deliveryPoint,
        List<String>? technicalDocumentUrls,
        List<String>? lekalaDocumentUrls,
    }) = _ChatRoomHistoryModel;

    factory ChatRoomHistoryModel.fromJson(Map<String, dynamic> json) => _$ChatRoomHistoryModelFromJson(json);
}
