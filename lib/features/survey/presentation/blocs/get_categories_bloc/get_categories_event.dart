part of 'get_categories_bloc.dart';

@freezed
class GetCategoriesEvent with _$GetCategoriesEvent {
  const factory GetCategoriesEvent.getAllCategories() = _Started;
  const factory GetCategoriesEvent.getSpecificCategory({required String slug}) =
      _GetSpecificCategory;
  const factory GetCategoriesEvent.getProductCategory() = _GetProductCategory;
}
