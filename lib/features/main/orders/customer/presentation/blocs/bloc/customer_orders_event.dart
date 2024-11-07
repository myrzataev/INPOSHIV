part of 'customer_orders_bloc.dart';

@freezed
class CustomerOrdersEvent with _$CustomerOrdersEvent {
  const factory CustomerOrdersEvent.started() = _Started;
}