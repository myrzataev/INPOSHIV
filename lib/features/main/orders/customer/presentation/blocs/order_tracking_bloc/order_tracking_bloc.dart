import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/tracking_model.dart';
import 'package:inposhiv/features/main/orders/customer/data/repositories/order_tracking_repoimpl.dart';

part 'order_tracking_event.dart';
part 'order_tracking_state.dart';
part 'order_tracking_bloc.freezed.dart';

class OrderTrackingBloc extends Bloc<OrderTrackingEvent, OrderTrackingState> {
  OrderTrackingRepoimpl orderTrackingRepoimpl;
  OrderTrackingBloc({required this.orderTrackingRepoimpl})
      : super(const _Initial()) {
    on<OrderTrackingEvent>((event, emit) async {
      try {
        emit(const OrderTrackingState.loading());
        final result = await orderTrackingRepoimpl.orderTracking(
            invoiceId: event.invoiceId);
        emit(OrderTrackingState.loaded(model: result));
      } catch (e) {
        emit(OrderTrackingState.error(errorText: e.toString()));
      }
    });
  }
}
