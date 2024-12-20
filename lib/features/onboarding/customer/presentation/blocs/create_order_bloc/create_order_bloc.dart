import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/core/error/app_error.dart';
import 'package:inposhiv/core/error/error_handler.dart';
import 'package:inposhiv/features/onboarding/customer/data/models/order_model.dart';
import 'package:inposhiv/features/onboarding/customer/data/models/size_model.dart';
import 'package:inposhiv/features/onboarding/customer/data/repositories/create_order_repo_impl.dart';
import 'package:inposhiv/features/onboarding/customer/data/repositories/get_sizes_repoimpl.dart';

part 'create_order_event.dart';
part 'create_order_state.dart';
part 'create_order_bloc.freezed.dart';

class CreateOrderBloc extends Bloc<CreateOrderEvent, CreateOrderState> {
  final CreateOrderRepoImpl createOrderRepoImpl;
  final GetSizesRepoimpl getSizesRepoimpl;
  CreateOrderBloc(
      {required this.getSizesRepoimpl, required this.createOrderRepoImpl})
      : super(const _Initial()) {
    on<_GetSizes>((event, emit) async {
      await getSizes(event: event, emit: emit);
    });
    on<_CreateOrder>((event, emit) async {
      await createOrder(event: event, emit: emit);
    });
  }

  Future<void> getSizes(
      {required CreateOrderEvent event,
      required Emitter<CreateOrderState> emit}) async {
    emit(const CreateOrderState.loading());
    try {
      final result = await getSizesRepoimpl.getSizes();
      emit(CreateOrderState.sizesLoaded(model: result));
    } catch (e) {
      final error = handleException(e);
      emit(CreateOrderState.sizesError(error: error));
    }
  }

  Future<void> createOrder(
      {required CreateOrderEvent event,
      required Emitter<CreateOrderState> emit}) async {
    emit(const CreateOrderState.loading());
    try {
      // Access formData from event
      final formData = (event as _CreateOrder).formData;

      // Assuming you have the required customerUuid somewhere
      final customerUuid = (event).customerUuid;

      // Call your repository to create the order
      final result = await createOrderRepoImpl.creatOrder(
        formData: formData,
        customerUuid: customerUuid,
      );

      // Handle success (you might want to emit a success state here)
      emit(CreateOrderState.createOrderLoaded(model: result));
    } catch (e) {
      final error = handleException(e);
      emit(CreateOrderState.createOrderError(error: error));
    }
  }
}
