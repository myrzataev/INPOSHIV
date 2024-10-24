part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = _Initial;
  const factory OrdersState.loading() = _Loading;
  const factory OrdersState.orderDetailsSended(
      {required OrderDetailsModel model}) = _OrderDetailsSended;
  const factory OrdersState.orderDetailsError({required String errorText}) =
      _OrderDetailsError;
  const factory OrdersState.invoiceSended(
      {required InvoiceModel model}) = _InvoiceSended;
  const factory OrdersState.invoiceError({required String errorText}) =
      _InvoiceError;
}
