// To parse this JSON data, do
//
//     final trackingModel = trackingModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'tracking_model.freezed.dart';
part 'tracking_model.g.dart';

TrackingModel trackingModelFromJson(String str) => TrackingModel.fromJson(json.decode(str));

String trackingModelToJson(TrackingModel data) => json.encode(data.toJson());

@freezed
class TrackingModel with _$TrackingModel {
    const factory TrackingModel({
        int? id,
        String? invoiceUuid,
        int? orderId,
        dynamic stageAccepted,
        dynamic activeStage,
        int? activeStageId,
        String? activeStageDescription,
        List<AllC>? allChecks,
        List<AllC>? allComments,
    }) = _TrackingModel;

    factory TrackingModel.fromJson(Map<String, dynamic> json) => _$TrackingModelFromJson(json);
}

@freezed
class AllC with _$AllC {
    const factory AllC({
        int? id,
        String? orderStage,
        String? fileUrl,
        DateTime? createdAt,
        String? content,
    }) = _AllC;

    factory AllC.fromJson(Map<String, dynamic> json) => _$AllCFromJson(json);
}
