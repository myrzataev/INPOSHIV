part of 'manufacturer_completed_orders_bloc.dart';

@freezed
class ManufacturerCompletedOrdersState with _$ManufacturerCompletedOrdersState {
  const factory ManufacturerCompletedOrdersState.initial() = _Initial;
  const factory ManufacturerCompletedOrdersState.loading() = _Loading;
  const factory ManufacturerCompletedOrdersState.loaded({required List<CustomerOrdersModel> model}) = _Loaded;
  const factory ManufacturerCompletedOrdersState.error({required AppError error}) = _Error;
}
