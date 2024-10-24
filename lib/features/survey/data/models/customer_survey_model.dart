

// class ClothingCategoriesList {
//   String name;
//   String slug;
//   List<Subcategory> subcategories;

//   ClothingCategoriesList({
//     required this.name,
//     required this.slug,
//     required this.subcategories,
//   });

//   Map<String, dynamic> toJson() => {
//         'name': name,
//         'slug': slug,
//         'subcategories': subcategories.map((e) => e.toJson()).toList(),
//       };
// }


// class CustomerSurveyModel {
//   List<ClothingCategoriesList> clothingCategoriesList;
//   int monthSalesVolume;
//   List<JobPrioritiesList> customerPrioritiesList;

//   CustomerSurveyModel({
//     required this.clothingCategoriesList,
//     required this.monthSalesVolume,
//     required this.customerPrioritiesList,
//   });

//   Map<String, dynamic> toJson() => {
//         'clothingCategoriesList': clothingCategoriesList.map((e) => e.toJson()).toList(),
//         'monthSalesVolume': monthSalesVolume,
//         'jobPrioritiesList': customerPrioritiesList.map((e) => e.toJson()).toList(),
//       };
// }


// class ManufacturerSurveyModel {
//   List<ClothingCategoriesList> clothingCategoriesList;
//   int monthSalesVolume;
//   List<JobPrioritiesList> manufacturerPrioritiesList;

//   ManufacturerSurveyModel({
//     required this.clothingCategoriesList,
//     required this.monthSalesVolume,
//     required this.manufacturerPrioritiesList,
//   });

//   Map<String, dynamic> toJson() => {
//         'clothingCategoriesList': clothingCategoriesList.map((e) => e.toJson()).toList(),
//         'monthSalesVolume': monthSalesVolume,
//         'jobPrioritiesList': manufacturerPrioritiesList.map((e) => e.toJson()).toList(),
//       };
// }


// To parse this JSON data, do
//
//     final customerSurveyModel = customerSurveyModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'customer_survey_model.freezed.dart';
part 'customer_survey_model.g.dart';

CustomerSurveyModel customerSurveyModelFromJson(String str) => CustomerSurveyModel.fromJson(json.decode(str));

String customerSurveyModelToJson(CustomerSurveyModel data) => json.encode(data.toJson());

@freezed
class CustomerSurveyModel with _$CustomerSurveyModel {
    const factory CustomerSurveyModel({
        List<ClothingCategoriesList>? clothingCategoriesList,
        int? monthSalesVolume,
        List<ClothingCategoriesList>? customerPrioritiesList,
    }) = _CustomerSurveyModel;

    factory CustomerSurveyModel.fromJson(Map<String, dynamic> json) => _$CustomerSurveyModelFromJson(json);
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
class JobPrioritiesList {
  int? id;
  String slug;
  String name;

  JobPrioritiesList({ this.id, required this.slug, required this.name});

  Map<String, dynamic> toJson() => {
        'id': id,
        'slug': slug,
        'name': name,
      };
}
class Subcategory {
  String name;
  String slug;

  Subcategory({required this.name, required this.slug});

  Map<String, dynamic> toJson() => {
        'name': name,
        'slug': slug,
      };
}