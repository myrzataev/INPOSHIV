part of 'search_order_bloc.dart';

@freezed
class SearchOrderState with _$SearchOrderState {
  const factory SearchOrderState.initial() = _Initial;
  const factory SearchOrderState.loading() = _Loading;
  const factory SearchOrderState.loaded(
      {required List<CustomerOrdersModel> modelList}) = _Loaded;
  const factory SearchOrderState.error({required String errorText}) = _Error;
}
