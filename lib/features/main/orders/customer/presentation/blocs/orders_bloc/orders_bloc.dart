import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/core/error/app_error.dart';
import 'package:inposhiv/core/error/error_handler.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/invoice_model.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/order_details_model.dart';
import 'package:inposhiv/features/main/orders/customer/data/repositories/send_invoice_repoimpl.dart';
import 'package:inposhiv/features/main/orders/customer/data/repositories/send_order_details_repo_impl.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  SendOrderDetailsRepoImpl sendOrderDetailsRepoImpl;
  SendInvoiceRepoimpl sendInvoiceRepoimpl;
  OrdersBloc(
      {required this.sendOrderDetailsRepoImpl,
      required this.sendInvoiceRepoimpl})
      : super(const _Initial()) {
    on<OrdersEvent>((event, emit) async {
      await event.map(
        sendOrderDetails: (value) async {
          await sendOrderDetails(event: value, emit: emit);
        },
        sendInvoice: (value) async {
          await sendInvoice(event: value, emit: emit);
        },
        changeInvoice: (value) async {
          await changeInvoice(event: value, emit: emit);
        },
      );
    });
  }
  Future<void> sendOrderDetails(
      {required SendOrderDetails event,
      required Emitter<OrdersState> emit}) async {
    try {
      emit(const OrdersState.loading());
      final result = await sendOrderDetailsRepoImpl.sendOrderDetails(
          orderDetails: event.orderDetails, orderId: event.orderId);
      emit(OrdersState.orderDetailsSended(model: result));
    } catch (e) {
      emit(OrdersState.orderDetailsError(error: handleException(e)));
    }
  }

  Future<void> sendInvoice(
      {required SendInvoice event, required Emitter<OrdersState> emit}) async {
    try {
      emit(const OrdersState.loading());
      final result = await sendInvoiceRepoimpl.sendInvoice(
          invoice: event.invoice, orderId: event.orderId);
      emit(OrdersState.invoiceSended(model: result));
    } catch (e) {
      emit(OrdersState.invoiceError(error: handleException(e)));
    }
  }

  Future<void> changeInvoice(
      {required _ChangeInvoice event,
      required Emitter<OrdersState> emit}) async {
    try {
      emit(const OrdersState.loading());
      final result = await sendInvoiceRepoimpl.changeInvoice(
          invoice: event.invoice, orderId: event.orderId);
      emit(OrdersState.changeInvoiceSuccess(model: result));
    } catch (e) {
      emit(OrdersState.changeInvoiceError(error: handleException(e)));
    }
  }
}
