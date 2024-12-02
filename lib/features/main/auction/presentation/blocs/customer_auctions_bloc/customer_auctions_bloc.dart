import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/core/error/app_error.dart';
import 'package:inposhiv/core/error/error_handler.dart';
import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';
import 'package:inposhiv/features/main/auction/data/repositories/get_customer_orders_repoimpl.dart';

part 'customer_auctions_event.dart';
part 'customer_auctions_state.dart';
part 'customer_auctions_bloc.freezed.dart';

class CustomerAuctionsBloc
    extends Bloc<CustomerAuctionsEvent, CustomerAuctionsState> {
  final GetCustomerOrdersRepoimpl getCustomerOrdersRepoimpl;
  CustomerAuctionsBloc({required this.getCustomerOrdersRepoimpl})
      : super(const _Initial()) {
    on<CustomerAuctionsEvent>((event, emit) async {
      try {
        emit(const CustomerAuctionsState.loading());
        final result = await getCustomerOrdersRepoimpl.getCustomersOrders(
            customerId: event.customerId);
        emit(CustomerAuctionsState.customerOrdersLoaded(
            customerOrdersModel: result));
      } catch (e) {
        emit(CustomerAuctionsState.customerOrdersError(
            error: handleException(e)));
      }
    });
  }
}
