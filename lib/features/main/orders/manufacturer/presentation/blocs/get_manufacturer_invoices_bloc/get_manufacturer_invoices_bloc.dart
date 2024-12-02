import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/core/error/app_error.dart';
import 'package:inposhiv/core/error/error_handler.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/invoice_model.dart';
import 'package:inposhiv/features/main/orders/manufacturer/data/repositories/get_manufacturer_invoices_repoimpl.dart';
part 'get_manufacturer_invoices_event.dart';
part 'get_manufacturer_invoices_state.dart';
part 'get_manufacturer_invoices_bloc.freezed.dart';

class GetInvoicesBloc
    extends Bloc<GetManufacturerInvoicesEvent, GetManufacturerInvoicesState> {
  GetManufacturerInvoicesRepoimpl getManufacturerInvoicesRepoimpl;
  GetInvoicesBloc({required this.getManufacturerInvoicesRepoimpl})
      : super(const _Initial()) {
    on<GetManufacturerInvoicesEvent>((event, emit) async {
      await event.map(getManufacturerInvoices: (value) async {
        await getManufacturerInvoices(event: value, emit: emit);
      }, getCustomerInvoices: (value) async {
        await getCustomerInvoices(event: value, emit: emit);
      });
    });
  }

  Future<void> getManufacturerInvoices(
      {required _GetManufacturerInvoices event,
      required Emitter<GetManufacturerInvoicesState> emit}) async {
    try {
      emit(const GetManufacturerInvoicesState.loading());
      final result = await getManufacturerInvoicesRepoimpl
          .getManufacturerInvoices(manufacturerId: event.manufactureId);
      emit(GetManufacturerInvoicesState.loaded(model: result));
    } catch (e) {
      emit(GetManufacturerInvoicesState.error(error: handleException(e)));
    }
  }

  Future<void> getCustomerInvoices(
      {required _GetCustomerInvoices event,
      required Emitter<GetManufacturerInvoicesState> emit}) async {
    try {
      emit(const GetManufacturerInvoicesState.loading());
      final result = await getManufacturerInvoicesRepoimpl.getCustomerInvoices(
          customerId: event.customerUuid);
      emit(GetManufacturerInvoicesState.loaded(model: result));
    } catch (e) {
      emit(GetManufacturerInvoicesState.error(error: handleException(e)));
    }
  }
}
