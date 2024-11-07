// To parse this JSON data, do
//
//     final customersOrdersModel = customersOrdersModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'customers_orders_model.freezed.dart';
part 'customers_orders_model.g.dart';

List<CustomersOrdersModel> customersOrdersModelFromJson(String str) => List<CustomersOrdersModel>.from(json.decode(str).map((x) => CustomersOrdersModel.fromJson(x)));

String customersOrdersModelToJson(List<CustomersOrdersModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class CustomersOrdersModel with _$CustomersOrdersModel {
    const factory CustomersOrdersModel({
        int? categoryId,
        int? fabricId,
        String? description,
        int? orderId,
        int? orderStatus,
        List<Product>? products,
        String? customerName,
        DateTime? createdAt,
        List<String>? auctonsUuid,
    }) = _CustomersOrdersModel;

    factory CustomersOrdersModel.fromJson(Map<String, dynamic> json) => _$CustomersOrdersModelFromJson(json);
}

@freezed
class Product with _$Product {
    const factory Product({
        String? name,
        int? categoryId,
        int? fabricId,
        int? sizeId,
        int? priceUsd,
        int? priceRub,
        int? quantity,
        String? description,
        List<String>? photoUrls,
    }) = _Product;

    factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
