// To parse this JSON data, do
//
//     final categoriesEntity = categoriesEntityFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'categories_entity.freezed.dart';

@freezed
class CategoriesEntity with _$CategoriesEntity {
    const factory CategoriesEntity({
        String? slug,
        String? name,
        int? id,
        List<Subcategory>? subcategories,

    }) = _CategoriesEntity;

}

@freezed
class Subcategory with _$Subcategory {
    const factory Subcategory({
        String? slug,
        String? name,
        int? id,
    }) = _Subcategory;

}
