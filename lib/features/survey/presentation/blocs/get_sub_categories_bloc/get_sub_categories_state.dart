part of 'get_sub_categories_bloc.dart';

@freezed
class GetSubCategoriesState with _$GetSubCategoriesState {
  const factory GetSubCategoriesState.initial() = _Initial;
  const factory GetSubCategoriesState.loading() = _Loading;
  const factory GetSubCategoriesState.loaded({required List<Subcategory?> subcategories}) = _Loaded;
  const factory GetSubCategoriesState.error() = _Error;
}
