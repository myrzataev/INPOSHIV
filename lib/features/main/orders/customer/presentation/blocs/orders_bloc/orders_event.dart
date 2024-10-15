part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.sendOrderDetails(
      {required Map<String, dynamic> orderDetails,
      required String orderId}) = SendOrderDetails;
}
