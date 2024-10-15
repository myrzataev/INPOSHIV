// To parse this JSON data, do
//
//     final orderModel = orderModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

OrderModel orderModelFromJson(String str) => OrderModel.fromJson(json.decode(str));

String orderModelToJson(OrderModel data) => json.encode(data.toJson());

@freezed
class OrderModel with _$OrderModel {
    const factory OrderModel({
        int? categoryId,
        int? fabricId,
        String? description,
        int? orderId,
        int? orderStatus,
        List<Product>? products,
        String? customerName,
        DateTime? createdAt,
    }) = _OrderModel;

    factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);
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
