import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/core/error/app_error.dart';
import 'package:inposhiv/core/error/error_handler.dart';
import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';
import 'package:inposhiv/features/main/orders/customer/data/repositories/get_customers_completed_orders_repoimpl.dart';

part 'customers_completed_orders_event.dart';
part 'customers_completed_orders_state.dart';
part 'customers_completed_orders_bloc.freezed.dart';

class CustomersCompletedOrdersBloc
    extends Bloc<CustomersCompletedOrdersEvent, CustomersCompletedOrdersState> {
  GetCustomersCompletedOrdersRepoimpl getCustomersCompletedOrdersRepoimpl;
  CustomersCompletedOrdersBloc(
      {required this.getCustomersCompletedOrdersRepoimpl})
      : super(const _Initial()) {
    on<CustomersCompletedOrdersEvent>((event, emit) async {
      try {
        emit(const CustomersCompletedOrdersState.loading());
        final result = await getCustomersCompletedOrdersRepoimpl
            .getCustomersCompletedOrders(customerId: event.customerUid);
            emit(CustomersCompletedOrdersState.loaded(model: result));
      } catch (e) {
        CustomersCompletedOrdersState.error(error: handleException(e));
      }
    });
  }
}
