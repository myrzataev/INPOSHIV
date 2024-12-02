part of 'customers_completed_orders_bloc.dart';

@freezed
class CustomersCompletedOrdersState with _$CustomersCompletedOrdersState {
  const factory CustomersCompletedOrdersState.initial() = _Initial;
  const factory CustomersCompletedOrdersState.loading() = _Loading;
  const factory CustomersCompletedOrdersState.loaded(
      {required List<CustomerOrdersModel> model}) = _Loaded;
  const factory CustomersCompletedOrdersState.error({required AppError error}) =
      _Error;
}
