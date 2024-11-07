import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/invoice_model.dart';
import 'package:inposhiv/features/main/orders/manufacturer/data/repositories/get_manufacturer_invoices_repoimpl.dart';

part 'get_manufacturer_invoices_event.dart';
part 'get_manufacturer_invoices_state.dart';
part 'get_manufacturer_invoices_bloc.freezed.dart';

class GetManufacturerInvoicesBloc
    extends Bloc<GetManufacturerInvoicesEvent, GetManufacturerInvoicesState> {
  GetManufacturerInvoicesRepoimpl getManufacturerInvoicesRepoimpl;
  GetManufacturerInvoicesBloc({required this.getManufacturerInvoicesRepoimpl})
      : super(const _Initial()) {
    on<GetManufacturerInvoicesEvent>((event, emit) async {
      try {
        emit(const GetManufacturerInvoicesState.loading());
        final result = await getManufacturerInvoicesRepoimpl
            .getManufacturerInvoices(manufacturerId: event.manufactureId);
        emit(GetManufacturerInvoicesState.loaded(model: result));
      } catch (e) {
        emit(GetManufacturerInvoicesState.error(errorText: e.toString()));
      }
    });
  }
}
