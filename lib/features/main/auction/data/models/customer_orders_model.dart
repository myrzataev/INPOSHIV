// To parse this JSON data, do
//
//     final customerOrdersModel = customerOrdersModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'customer_orders_model.freezed.dart';
part 'customer_orders_model.g.dart';

CustomerOrdersModel customerOrdersModelFromJson(String str) => CustomerOrdersModel.fromJson(json.decode(str));

String customerOrdersModelToJson(CustomerOrdersModel data) => json.encode(data.toJson());

@freezed
class CustomerOrdersModel with _$CustomerOrdersModel {
    const factory CustomerOrdersModel({
        int? orderId,
        int? orderStatus,
        List<Product>? products,
        String? customerName,
        DateTime? createdAt,
        List<String>? auctonsUuid,
    }) = _CustomerOrdersModel;

    factory CustomerOrdersModel.fromJson(Map<String, dynamic> json) => _$CustomerOrdersModelFromJson(json);
}

@freezed
class Product with _$Product {
    const factory Product({
        String? name,
        int? clothingCategoryId,
        int? fabricId,
        int? quantity,
        Map<String, int>? sizeQuantities,
        dynamic description,
        int? priceUsd,
        double? priceRub,
        List<String>? photos,
    }) = _Product;

    factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
