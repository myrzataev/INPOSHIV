import 'package:flutter/material.dart';
import 'package:inposhiv/features/survey/domain/entities/categories_entity.dart';

class CategoriesProvider extends ChangeNotifier {
  String? selectedSlug;
  Set<Subcategory?>? subcategoriesList;
   String? selectedCategoryName;
  void updateValues(
      {required String valueForSlug,
      required Set<Subcategory?>? valueForSubcategoriesList, required String categoryName}) {
    selectedSlug = valueForSlug;
    subcategoriesList = valueForSubcategoriesList;
    selectedCategoryName = categoryName;
    notifyListeners();
  }
}
