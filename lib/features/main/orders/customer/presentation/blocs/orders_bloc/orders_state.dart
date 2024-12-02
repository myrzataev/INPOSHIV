part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = _Initial;
  const factory OrdersState.loading() = _Loading;
  const factory OrdersState.orderDetailsSended(
      {required OrderDetailsModel model}) = _OrderDetailsSended;
  const factory OrdersState.orderDetailsError({required AppError error}) =
      _OrderDetailsError;
  const factory OrdersState.invoiceSended({required InvoiceModel model}) =
      _InvoiceSended;
  const factory OrdersState.invoiceError({required AppError error}) =
      _InvoiceError;
  const factory OrdersState.changeInvoiceSuccess(
      {required InvoiceModel model}) = _ChangeInvoiceSuccess;
  const factory OrdersState.changeInvoiceError({required AppError error}) =
      _ChangeInvoiceError;
}
