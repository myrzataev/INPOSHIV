part of 'get_invoice_details_bloc.dart';

@freezed
class GetInvoiceDetailsState with _$GetInvoiceDetailsState {
  const factory GetInvoiceDetailsState.initial() = _Initial;
  const factory GetInvoiceDetailsState.loading() = _Loading;
  const factory GetInvoiceDetailsState.loaded({required InvoiceModel model}) =
      _Loaded;
  const factory GetInvoiceDetailsState.error({required AppError error}) = _Error;
}
