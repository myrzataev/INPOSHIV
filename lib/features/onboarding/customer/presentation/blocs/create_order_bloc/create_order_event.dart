part of 'create_order_bloc.dart';

@freezed
class CreateOrderEvent with _$CreateOrderEvent {
  // const factory CreateOrderEvent.getCurrentCurrencyEvent() = _GetCurrentCurrencyEvent;
    const factory CreateOrderEvent.getSizesEvent() = _GetSizes;
  const factory CreateOrderEvent.createOrder( FormData formData, String customerUuid) = _CreateOrder;

}