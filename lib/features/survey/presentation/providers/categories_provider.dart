import 'package:flutter/material.dart';
import 'package:inposhiv/features/survey/domain/entities/categories_entity.dart';

class CategoriesProvider extends ChangeNotifier {
  String? selectedSlug;
  Set<Subcategory?>? subcategoriesList;
  String? selectedCategoryName;
  int? selectedCategoryId;
  void updateValues(
      {required String valueForSlug,
      required Set<Subcategory?>? valueForSubcategoriesList,
      required String categoryName,
      required int id}) {
    selectedSlug = valueForSlug;
    subcategoriesList = valueForSubcategoriesList;
    selectedCategoryName = categoryName;
    selectedCategoryId = id;
    notifyListeners();
  }
}
