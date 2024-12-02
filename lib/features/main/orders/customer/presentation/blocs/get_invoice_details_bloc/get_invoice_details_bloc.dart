import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/core/error/app_error.dart';
import 'package:inposhiv/core/error/error_handler.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/invoice_model.dart';
import 'package:inposhiv/features/main/orders/customer/data/repositories/get_customer_invoices_repoimp.dart';

part 'get_invoice_details_event.dart';
part 'get_invoice_details_state.dart';
part 'get_invoice_details_bloc.freezed.dart';

class GetInvoiceDetailsBloc
    extends Bloc<GetInvoiceDetailsEvent, GetInvoiceDetailsState> {
  GetCustomerInvoicesRepoimpl getCustomerInvoicesRepoimpl;
  GetInvoiceDetailsBloc({required this.getCustomerInvoicesRepoimpl})
      : super(const _Initial()) {
    on<GetInvoiceDetailsEvent>((event, emit) async {
      try {
        emit(const GetInvoiceDetailsState.loading());
        final result = await getCustomerInvoicesRepoimpl.getInvoiceDetails(
            orderId: event.orderId);
        emit(GetInvoiceDetailsState.loaded(model: result));
      } catch (e) {
        emit(GetInvoiceDetailsState.error(error: handleException(e)));
      }
    });
  }
}
