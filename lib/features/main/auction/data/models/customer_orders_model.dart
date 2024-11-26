// To parse this JSON data, do
//
//     final customerOrdersModel = customerOrdersModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'customer_orders_model.freezed.dart';
part 'customer_orders_model.g.dart';

List<CustomerOrdersModel> customerOrdersModelFromJson(String str) => List<CustomerOrdersModel>.from(json.decode(str).map((x) => CustomerOrdersModel.fromJson(x)));

String customerOrdersModelToJson(List<CustomerOrdersModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class CustomerOrdersModel with _$CustomerOrdersModel {
    const factory CustomerOrdersModel({
        int? orderId,
        int? orderStatus,
        List<Product>? products,
        String? customerName,
        DateTime? createdAt,
        List<String>? auctonsUuid,
        List<AuctionProcessDtoList>? auctionProcessDtoList,
    }) = _CustomerOrdersModel;

    factory CustomerOrdersModel.fromJson(Map<String, dynamic> json) => _$CustomerOrdersModelFromJson(json);
}

@freezed
class AuctionProcessDtoList with _$AuctionProcessDtoList {
    const factory AuctionProcessDtoList({
        int? auctionId,
        String? manufacturerUuid,
        int? bidPrice,
        DateTime? bidTime,
        int? bidCount,
    }) = _AuctionProcessDtoList;

    factory AuctionProcessDtoList.fromJson(Map<String, dynamic> json) => _$AuctionProcessDtoListFromJson(json);
}

@freezed
class Product with _$Product {
    const factory Product({
        String? name,
        int? clothingCategoryId,
        int? fabricId,
        int? quantity,
        Map<String, int>? sizeQuantities,
        String? description,
        int? priceUsd,
        double? priceRub,
        List<String>? photos,
    }) = _Product;

    factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
