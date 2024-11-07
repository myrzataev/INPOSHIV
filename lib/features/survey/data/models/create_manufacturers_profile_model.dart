// To parse this JSON data, do
//
//     final createManufacturersProfileModel = createManufacturersProfileModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'create_manufacturers_profile_model.freezed.dart';
part 'create_manufacturers_profile_model.g.dart';

List<CreateManufacturersProfileModel> createManufacturersProfileModelFromJson(String str) => List<CreateManufacturersProfileModel>.from(json.decode(str).map((x) => CreateManufacturersProfileModel.fromJson(x)));

String createManufacturersProfileModelToJson(List<CreateManufacturersProfileModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class CreateManufacturersProfileModel with _$CreateManufacturersProfileModel {
    const factory CreateManufacturersProfileModel({
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
    }) = _CreateManufacturersProfileModel;

    factory CreateManufacturersProfileModel.fromJson(Map<String, dynamic> json) => _$CreateManufacturersProfileModelFromJson(json);
}
