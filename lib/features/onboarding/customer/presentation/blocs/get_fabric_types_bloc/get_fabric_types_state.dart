part of 'get_fabric_types_bloc.dart';

@freezed
class GetFabricTypesState with _$GetFabricTypesState {
  const factory GetFabricTypesState.initial() = _Initial;
  const factory GetFabricTypesState.loading() = _Loading;
  const factory GetFabricTypesState.loaded({required List<FabricTypeModel> model}) = _Loaded;
  const factory GetFabricTypesState.error({required String errorText}) = _Error;
}
