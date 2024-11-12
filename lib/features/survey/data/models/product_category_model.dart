// To parse this JSON data, do
//
//     final productCategoriesModel = productCategoriesModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'product_category_model.freezed.dart';
part 'product_category_model.g.dart';

ProductCategoriesModel productCategoriesModelFromJson(String str) => ProductCategoriesModel.fromJson(json.decode(str));

String productCategoriesModelToJson(ProductCategoriesModel data) => json.encode(data.toJson());

@freezed
class ProductCategoriesModel with _$ProductCategoriesModel {
    const factory ProductCategoriesModel({
        int? orderId,
        int? orderStatus,
        List<Product>? products,
        String? customerName,
        DateTime? createdAt,
        List<String>? auctonsUuid,
    }) = _ProductCategoriesModel;

    factory ProductCategoriesModel.fromJson(Map<String, dynamic> json) => _$ProductCategoriesModelFromJson(json);
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
