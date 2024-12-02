import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_entity.freezed.dart';
part 'categories_entity.g.dart';

@freezed
class CategoriesEntity with _$CategoriesEntity {
  const factory CategoriesEntity({
    String? slug,
    String? name,
    int? id,
    List<Subcategory>? subcategories,
  }) = _CategoriesEntity;

  // Add fromJson and toJson
  factory CategoriesEntity.fromJson(Map<String, dynamic> json) =>
      _$CategoriesEntityFromJson(json);
}

@freezed
class Subcategory with _$Subcategory {
  const factory Subcategory({
    String? slug,
    String? name,
    int? id,
  }) = _Subcategory;

  // Add fromJson and toJson
  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);
}
