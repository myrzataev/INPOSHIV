// To parse this JSON data, do
//
//     final manufacturersProfileModel = manufacturersProfileModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'manufacturers_profile_model.freezed.dart';
part 'manufacturers_profile_model.g.dart';

List<ManufacturersProfileModel> manufacturersProfileModelFromJson(String str) => List<ManufacturersProfileModel>.from(json.decode(str).map((x) => ManufacturersProfileModel.fromJson(x)));

String manufacturersProfileModelToJson(List<ManufacturersProfileModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class ManufacturersProfileModel with _$ManufacturersProfileModel {
    const factory ManufacturersProfileModel({
        int? id,
        int? userId,
        String? userUuid,
        String? manufacturerUuid,
        String? username,
        String? legalStatus,
        String? trustLevel,
        String? companyName,
        String? city,
        int? monthProductsVolume,
        String? companyDescription,
        int? rating,
        List<ClothingCategoriesList>? clothingCategoriesList,
        List<ClothingCategoriesList>? manufacturerPrioritiesList,
        List<OrderHistory>? orderHistory,
        List<Review>? reviews,
        List<String>? photosUrls,
    }) = _ManufacturersProfileModel;

    factory ManufacturersProfileModel.fromJson(Map<String, dynamic> json) => _$ManufacturersProfileModelFromJson(json);
}

@freezed
class ClothingCategoriesList with _$ClothingCategoriesList {
    const factory ClothingCategoriesList({
        int? id,
        String? slug,
        String? name,
        List<ClothingCategoriesList>? subcategories,
    }) = _ClothingCategoriesList;

    factory ClothingCategoriesList.fromJson(Map<String, dynamic> json) => _$ClothingCategoriesListFromJson(json);
}

@freezed
class OrderHistory with _$OrderHistory {
    const factory OrderHistory({
        int? orderId,
        DateTime? createdAt,
        String? status,
        String? orderName,
    }) = _OrderHistory;

    factory OrderHistory.fromJson(Map<String, dynamic> json) => _$OrderHistoryFromJson(json);
}

@freezed
class Review with _$Review {
    const factory Review({
        String? customerUuid,
        String? manufacturerUuid,
        String? reviewText,
        DateTime? createdAt,
        int? rating,
        String? customerName,
    }) = _Review;

    factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
