part of 'customers_completed_orders_bloc.dart';

@freezed
class CustomersCompletedOrdersEvent with _$CustomersCompletedOrdersEvent {
  const factory CustomersCompletedOrdersEvent.started({required String customerUid}) = _Started;
}