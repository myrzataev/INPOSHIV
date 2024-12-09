import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/main/orders/customer/data/repositories/review_for_manufacturer_repoimpl.dart';

part 'send_feed_back_bloc_event.dart';
part 'send_feed_back_bloc_state.dart';
part 'send_feed_back_bloc_bloc.freezed.dart';

class SendFeedBackBlocBloc
    extends Bloc<SendFeedBackBlocEvent, SendFeedBackBlocState> {
  ReviewForManufacturerRepoimpl reviewForManufacturerRepoimpl;
  SendFeedBackBlocBloc({required this.reviewForManufacturerRepoimpl})
      : super(const _Initial()) {
    on<SendFeedBackBlocEvent>((event, emit) async {
      await event.map(sendFeedBackToManufacturer: (value) async {
        await sendFeedForManufacture(event: value, emit: emit);
      }, sendFeedBackToCustomer: (value) async {
        await sendFeedBackForCustomer(emit: emit, event: value);
      });
    });
  }

  Future<void> sendFeedForManufacture(
      {required _SendFeedBackToManufacturer event,
      required Emitter<SendFeedBackBlocState> emit}) async {
    try {
      emit(const SendFeedBackBlocState.loading());
      await reviewForManufacturerRepoimpl.reviewForManufacturer(
          manufacturerUuid: event.manufacturerUuid,
          customerUuid: event.customerUuid,
          body: event.body);
      emit(const SendFeedBackBlocState.loaded());
    } catch (e) {
      emit(const SendFeedBackBlocState.error());
    }
  }

  Future<void> sendFeedBackForCustomer(
      {required _SendFeedBackToCustomer event,
      required Emitter<SendFeedBackBlocState> emit}) async {
    try {
      emit(const SendFeedBackBlocState.loading());
      await reviewForManufacturerRepoimpl.reviewToCustomer(
          manufacturerUuid: event.manufacturerUuid,
          customerUuid: event.customerUuid,
          body: event.body);
      emit(const SendFeedBackBlocState.loaded());
    } catch (e) {
      emit(const SendFeedBackBlocState.error());
    }
  }
}
