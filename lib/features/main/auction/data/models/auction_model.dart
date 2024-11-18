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
        List<ProductsList>? productsList,
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
        DateTime? bidTime,
        int? bidCount,
    }) = _AuctionProcess;

    factory AuctionProcess.fromJson(Map<String, dynamic> json) => _$AuctionProcessFromJson(json);
}

@freezed
class ProductsList with _$ProductsList {
    const factory ProductsList({
        String? name,
        int? clothingCategoryId,
        int? fabricId,
        int? quantity,
        Map<String, int>? sizeQuantities,
        String? description,
        int? priceUsd,
        double? priceRub,
        List<String>? photos,
    }) = _ProductsList;

    factory ProductsList.fromJson(Map<String, dynamic> json) => _$ProductsListFromJson(json);
}
