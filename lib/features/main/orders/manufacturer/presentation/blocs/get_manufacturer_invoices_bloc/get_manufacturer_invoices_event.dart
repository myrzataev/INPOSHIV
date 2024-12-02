part of 'get_manufacturer_invoices_bloc.dart';

@freezed
class GetManufacturerInvoicesEvent with _$GetManufacturerInvoicesEvent {
  const factory GetManufacturerInvoicesEvent.getManufacturerInvoices({
    required String manufactureId,
  }) = _GetManufacturerInvoices;
  const factory GetManufacturerInvoicesEvent.getCustomerInvoices({
    required String customerUuid,
  }) = _GetCustomerInvoices;
}
