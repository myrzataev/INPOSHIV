// To parse this JSON data, do
//
//     final createManufacturersProfileModel = createManufacturersProfileModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'create_manufacturers_profile_model.freezed.dart';
part 'create_manufacturers_profile_model.g.dart';

CreateManufacturersProfileModel createManufacturersProfileModelFromJson(String str) => CreateManufacturersProfileModel.fromJson(json.decode(str));

String createManufacturersProfileModelToJson(CreateManufacturersProfileModel data) => json.encode(data.toJson());

@freezed
class CreateManufacturersProfileModel with _$CreateManufacturersProfileModel {
    const factory CreateManufacturersProfileModel({
        String? legalStatus,
        String? trustLevel,
        String? companyName,
        String? companyDescription,
        String? city,
        List<ClothingCategoriesList>? clothingCategoriesList,
        int? monthProductsVolume,
        List<ClothingCategoriesList>? manufacturerPrioritiesList,
        List<String>? photos,
    }) = _CreateManufacturersProfileModel;

    factory CreateManufacturersProfileModel.fromJson(Map<String, dynamic> json) => _$CreateManufacturersProfileModelFromJson(json);
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
