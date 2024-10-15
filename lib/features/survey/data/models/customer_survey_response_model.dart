// To parse this JSON data, do
//
//     final customerSurveyResponseModel = customerSurveyResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'customer_survey_response_model.freezed.dart';
part 'customer_survey_response_model.g.dart';

CustomerSurveyResponseModel customerSurveyResponseModelFromJson(String str) => CustomerSurveyResponseModel.fromJson(json.decode(str));

String customerSurveyResponseModelToJson(CustomerSurveyResponseModel data) => json.encode(data.toJson());

@freezed
class CustomerSurveyResponseModel with _$CustomerSurveyResponseModel {
    const factory CustomerSurveyResponseModel({
        String? legalStatus,
        String? trustLevel,
        int? companySize,
        String? companyName,
        int? marketExperience,
        String? salesAddress,
        String? linkToAddress,
        String? city,
    }) = _CustomerSurveyResponseModel;

    factory CustomerSurveyResponseModel.fromJson(Map<String, dynamic> json) => _$CustomerSurveyResponseModelFromJson(json);
}
