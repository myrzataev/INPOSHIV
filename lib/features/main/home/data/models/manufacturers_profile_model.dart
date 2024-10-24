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
        dynamic id,
        dynamic userId,
        dynamic userUuid,
        String? manufacturerUuid,
        dynamic username,
        dynamic legalStatus,
        String? trustLevel,
        String? companyName,
        dynamic city,
        dynamic monthProductsVolume,
        dynamic companyDescription,
        int? rating,
        dynamic clothingCategoriesList,
        dynamic manufacturerPrioritiesList,
        List<dynamic>? photosUrls,
    }) = _ManufacturersProfileModel;

    factory ManufacturersProfileModel.fromJson(Map<String, dynamic> json) => _$ManufacturersProfileModelFromJson(json);
}
