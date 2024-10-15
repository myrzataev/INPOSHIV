// To parse this JSON data, do
//
//     final manufacturerModel = manufacturerModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'manufacturer_model.freezed.dart';
part 'manufacturer_model.g.dart';

ManufacturerModel manufacturerModelFromJson(String str) => ManufacturerModel.fromJson(json.decode(str));

String manufacturerModelToJson(ManufacturerModel data) => json.encode(data.toJson());

@freezed
class ManufacturerModel with _$ManufacturerModel {
    const factory ManufacturerModel({
        String? username,
        String? companyName,
        String? description,
        int? companySize,
        int? marketExperience,
        int? factoryCount,
        String? generatedUsername,
        int? rating,
        List<String>? photosUrls,
    }) = _ManufacturerModel;

    factory ManufacturerModel.fromJson(Map<String, dynamic> json) => _$ManufacturerModelFromJson(json);
}
