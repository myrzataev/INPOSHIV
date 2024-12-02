import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
    const factory NotificationModel({
        List<History>? history,
    }) = _NotificationModel;

    factory NotificationModel.fromJson(Map<String, dynamic> json) => _$NotificationModelFromJson(json);
}

@freezed
class History with _$History {
    const factory History({
        int? id,
        String? userUuid,
        String? title,
        String? body,
        String? clickAction,
        String? token,
        String? manufacturerUuid,
        String? auctionUuid,
        String? orderUuid,
        int? orderId,
        String? invoiceUuid,
        String? chatUuid,
        String? recipientUuid,
    }) = _History;

    factory History.fromJson(Map<String, dynamic> json) => _$HistoryFromJson(json);
}
