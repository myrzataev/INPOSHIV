// To parse this JSON data, do
//
//     final auctionMembersModel = auctionMembersModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'auction_members_model.freezed.dart';
part 'auction_members_model.g.dart';

List<AuctionMembersModel> auctionMembersModelFromJson(String str) => List<AuctionMembersModel>.from(json.decode(str).map((x) => AuctionMembersModel.fromJson(x)));

String auctionMembersModelToJson(List<AuctionMembersModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class AuctionMembersModel with _$AuctionMembersModel {
    const factory AuctionMembersModel({
        int? ordersQuantity,
        int? orderPrice,
        int? orderSumPrice,
        String? trustLevel,
        int? rating,
        String? manufacturerUuid,
        String? manufacturerUserUuid,
        String? manufacturerUsername,
    }) = _AuctionMembersModel;

    factory AuctionMembersModel.fromJson(Map<String, dynamic> json) => _$AuctionMembersModelFromJson(json);
}
