part of 'manufacturer_completed_orders_bloc.dart';

@freezed
class ManufacturerCompletedOrdersEvent with _$ManufacturerCompletedOrdersEvent {
  const factory ManufacturerCompletedOrdersEvent.started({required String manufacturerUuid}) = _Started;
}