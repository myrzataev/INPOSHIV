import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/order_details_model.dart';
import 'package:inposhiv/features/main/orders/manufacturer/data/repositories/get_manufacturer_invoices_repoimpl.dart';
import 'package:inposhiv/features/main/orders/manufacturer/data/repositories/get_order_details_repoimpl.dart';

part 'get_order_details_event.dart';
part 'get_order_details_state.dart';
part 'get_order_details_bloc.freezed.dart';

class GetOrderDetailsBloc
    extends Bloc<GetOrderDetailsEvent, GetOrderDetailsState> {
  GetOrderDetailsRepoImpl getOrderDetailsRepoImpl;
  GetOrderDetailsBloc({required this.getOrderDetailsRepoImpl})
      : super(const _Initial()) {
    on<GetOrderDetailsEvent>((event, emit) async {
      try {
        emit(const GetOrderDetailsState.loading());
        final result = await getOrderDetailsRepoImpl.getOrderDetails(
            orderId: event.orderId);
        emit(GetOrderDetailsState.loaded(model: result));
      } catch (e) {
        emit(GetOrderDetailsState.error(errorText: e.toString()));
      }
    });
  }
}
