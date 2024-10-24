// To parse this JSON data, do
//
//     final manufacturerSurveyModel = manufacturerSurveyModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'manufacturer_survey_model.freezed.dart';
part 'manufacturer_survey_model.g.dart';

ManufacturerSurveyModel manufacturerSurveyModelFromJson(String str) => ManufacturerSurveyModel.fromJson(json.decode(str));

String manufacturerSurveyModelToJson(ManufacturerSurveyModel data) => json.encode(data.toJson());

@freezed
class ManufacturerSurveyModel with _$ManufacturerSurveyModel {
    const factory ManufacturerSurveyModel({
        List<ClothingCategoriesList>? clothingCategoriesList,
        int? monthProductsVolume,
        List<ClothingCategoriesList>? manufacturerPrioritiesList,
    }) = _ManufacturerSurveyModel;

    factory ManufacturerSurveyModel.fromJson(Map<String, dynamic> json) => _$ManufacturerSurveyModelFromJson(json);
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
