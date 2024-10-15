// // To parse this JSON data, do
// //
// //     final auctionsListModel = auctionsListModelFromJson(jsonString);

// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'dart:convert';

// part 'auctions_list_model.freezed.dart';
// part 'auctions_list_model.g.dart';

// List<AuctionsListModel> auctionsListModelFromJson(String str) => List<AuctionsListModel>.from(json.decode(str).map((x) => AuctionsListModel.fromJson(x)));

// String auctionsListModelToJson(List<AuctionsListModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// @freezed
// class AuctionsListModel with _$AuctionsListModel {
//     const factory AuctionsListModel({
//         int? orderId,
//         dynamic winnerUid,
//         DateTime? startTime,
//         dynamic endTime,
//         String? auctionUuid,
//         List<dynamic>? auctionProcesses,
//     }) = _AuctionsListModel;

//     factory AuctionsListModel.fromJson(Map<String, dynamic> json) => _$AuctionsListModelFromJson(json);
// }
