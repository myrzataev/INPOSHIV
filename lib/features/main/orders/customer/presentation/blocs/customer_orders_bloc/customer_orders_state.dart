part of 'customer_orders_bloc.dart';

@freezed
class CustomerOrdersState with _$CustomerOrdersState {
  const factory CustomerOrdersState.initial() = _Initial;
  const factory CustomerOrdersState.loading() = _Loading;
  const factory CustomerOrdersState.loaded({required List<CustomerOrdersModel> model}) =
      _Loaded;
  const factory CustomerOrdersState.error({required AppError error}) = _Error;
}
