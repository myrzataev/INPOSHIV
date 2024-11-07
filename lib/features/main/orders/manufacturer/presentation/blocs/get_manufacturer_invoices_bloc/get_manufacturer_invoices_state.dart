part of 'get_manufacturer_invoices_bloc.dart';

@freezed
class GetManufacturerInvoicesState with _$GetManufacturerInvoicesState {
  const factory GetManufacturerInvoicesState.initial() = _Initial;
  const factory GetManufacturerInvoicesState.loading() = _Loading;
  const factory GetManufacturerInvoicesState.loaded(
      {required List<InvoiceModel> model}) = _Loaded;
  const factory GetManufacturerInvoicesState.error(
      {required String errorText}) = _Error;
}
