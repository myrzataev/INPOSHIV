// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:inposhiv/core/error/app_error.dart';
import 'package:inposhiv/core/error/error_handler.dart';
import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';
import 'package:inposhiv/features/main/orders/manufacturer/data/repositories/get_manufacturer_completed_orders_repoimpl.dart';

part 'manufacturer_completed_orders_bloc.freezed.dart';
part 'manufacturer_completed_orders_event.dart';
part 'manufacturer_completed_orders_state.dart';

class ManufacturerCompletedOrdersBloc extends Bloc<
    ManufacturerCompletedOrdersEvent, ManufacturerCompletedOrdersState> {
  GetManufacturerCompletedOrdersRepoimpl getManufacturerCompletedOrdersRepoimpl;
  ManufacturerCompletedOrdersBloc(
    this.getManufacturerCompletedOrdersRepoimpl,
  ) : super(const _Initial()) {
    on<ManufacturerCompletedOrdersEvent>((event, emit) async {
      try {
        emit(const ManufacturerCompletedOrdersState.loading());
        final result = await getManufacturerCompletedOrdersRepoimpl
            .getManufacturersCompletedOrders(
                manufacturerUuid: event.manufacturerUuid);
        emit(ManufacturerCompletedOrdersState.loaded(model: result));
      } catch (e) {
        emit(ManufacturerCompletedOrdersState.error(error: handleException(e)));
      }
    });
  }
}
