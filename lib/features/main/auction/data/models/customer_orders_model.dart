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
    }) = _CustomerOrdersModel;

    factory CustomerOrdersModel.fromJson(Map<String, dynamic> json) => _$CustomerOrdersModelFromJson(json);
}

@freezed
class Product with _$Product {
    const factory Product({
        String? name,
        dynamic categoryId,
        int? fabricId,
        int? sizeId,
        int? priceUsd,
        double? priceRub,
        dynamic quantity,
        dynamic description,
        List<String>? photoUrls,
    }) = _Product;

    factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
