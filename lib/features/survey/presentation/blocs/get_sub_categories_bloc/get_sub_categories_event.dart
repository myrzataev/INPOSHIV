part of 'get_sub_categories_bloc.dart';

@freezed
class GetSubCategoriesEvent with _$GetSubCategoriesEvent {
  const factory GetSubCategoriesEvent.started({required String slug}) = _Started;
}