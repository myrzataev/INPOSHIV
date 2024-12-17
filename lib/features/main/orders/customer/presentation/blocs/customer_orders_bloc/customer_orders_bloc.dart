import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/core/error/app_error.dart';
import 'package:inposhiv/core/error/error_handler.dart';
import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';
import 'package:inposhiv/features/main/auction/data/repositories/get_customer_orders_repoimpl.dart';

part 'customer_orders_event.dart';
part 'customer_orders_state.dart';
part 'customer_orders_bloc.freezed.dart';

class CustomerOrdersBloc
    extends Bloc<CustomerOrdersEvent, CustomerOrdersState> {
  GetCustomerOrdersRepoimpl getCustomerOrdersRepoimpl;
  CustomerOrdersBloc({required this.getCustomerOrdersRepoimpl})
      : super(const _Initial()) {
    on<CustomerOrdersEvent>((event, emit) async {
      try {
        emit(const CustomerOrdersState.loading());
        final result = await getCustomerOrdersRepoimpl.getCustomersOrders(
            customerId: event.customerUid);
        emit(CustomerOrdersState.loaded(model: result));
      } catch (e) {
        emit(CustomerOrdersState.error(error: handleException(e)));
      }
    });
  }
}
