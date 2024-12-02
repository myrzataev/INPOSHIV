part of 'get_invoice_details_bloc.dart';

@freezed
class GetInvoiceDetailsEvent with _$GetInvoiceDetailsEvent {
  const factory GetInvoiceDetailsEvent.started({required String orderId}) = _Started;
}