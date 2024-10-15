import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/order_details_model.dart';
import 'package:inposhiv/features/main/orders/customer/data/repositories/send_order_details_repo_impl.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  SendOrderDetailsRepoImpl sendOrderDetailsRepoImpl;
  OrdersBloc({required this.sendOrderDetailsRepoImpl})
      : super(const _Initial()) {
    on<OrdersEvent>((event, emit) async {
      await event.map(
        sendOrderDetails: (value) async {
          await sendOrderDetails(event: event, emit: emit);
        },
      );
    });
  }
  Future<void> sendOrderDetails(
      {required OrdersEvent event, required Emitter<OrdersState> emit}) async {
    try {
      emit(const OrdersState.loading());
      final result = await sendOrderDetailsRepoImpl.sendOrderDetails(
          orderDetails: event.orderDetails, orderId: event.orderId);
      emit(OrdersState.orderDetailsSended(model: result));
    } catch (e) {
      emit(OrdersState.orderDetailsError(errorText: e.toString()));
    }
  }
}
