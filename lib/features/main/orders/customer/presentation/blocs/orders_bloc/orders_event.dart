part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.sendOrderDetails(
      {required Map<String, dynamic> orderDetails,
      required String orderId}) = SendOrderDetails;
  const factory OrdersEvent.sendInvoice(
      {required Map<String, dynamic> invoice,
      required String orderId}) = SendInvoice;
  const factory OrdersEvent.changeInvoice(
      {required Map<String, dynamic> invoice,
      required String orderId}) = _ChangeInvoice;
}
