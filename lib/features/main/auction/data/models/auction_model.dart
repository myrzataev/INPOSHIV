// To parse this JSON data, do
//
//     final auctionModel = auctionModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'auction_model.freezed.dart';
part 'auction_model.g.dart';

List<AuctionModel> auctionModelFromJson(String str) => List<AuctionModel>.from(json.decode(str).map((x) => AuctionModel.fromJson(x)));

String auctionModelToJson(List<AuctionModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class AuctionModel with _$AuctionModel {
    const factory AuctionModel({
        int? orderId,
        dynamic winnerUid,
        DateTime? startTime,
        dynamic endTime,
        String? auctionUuid,
        List<AuctionProcess>? auctionProcesses,
    }) = _AuctionModel;

    factory AuctionModel.fromJson(Map<String, dynamic> json) => _$AuctionModelFromJson(json);
}

@freezed
class AuctionProcess with _$AuctionProcess {
    const factory AuctionProcess({
        int? auctionId,
        String? manufacturerUuid,
        int? bidPrice,
        List<int>? bidTime,
        int? bidCount,
    }) = _AuctionProcess;

    factory AuctionProcess.fromJson(Map<String, dynamic> json) => _$AuctionProcessFromJson(json);
}
