part of 'get_categories_bloc.dart';

@freezed
class GetCategoriesState with _$GetCategoriesState {
  const factory GetCategoriesState.initial() = _Initial;
  const factory GetCategoriesState.loading() = _Loading;
  const factory GetCategoriesState.loaded(
      {required List<CategoriesEntity> entity}) = _Loaded;
  const factory GetCategoriesState.specificCategoryLoaded(
      {required List<Subcategory?> entity}) = _SpecificCategoryLoaded;
  const factory GetCategoriesState.errorSpecificCategory(
      {required String errorText}) = _SpecificCategoryError;

  const factory GetCategoriesState.error({required String errorText}) = _Error;
}
