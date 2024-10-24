import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';
import 'package:inposhiv/features/main/auction/data/repositories/make_bid_repoimpl.dart';

part 'auction_event.dart';
part 'auction_state.dart';
part 'auction_bloc.freezed.dart';

class AuctionBloc extends Bloc<AuctionEvent, AuctionState> {
  final MakeBidRepoimpl makeBidRepoimpl;

  AuctionBloc({required this.makeBidRepoimpl}) : super(const _Initial()) {
    on<AuctionEvent>((event, emit) async {
      await event.map(
        makeBid: (value) async {
          await _makeBid(event: value, emit: emit);
        },
      );
    });
  }

  Future<void> _makeBid(
      {required MakeBidEvent event,
      required Emitter<AuctionState> emit}) async {
    try {
      emit(const AuctionState.loading());
      final result = await makeBidRepoimpl.makeBid(
          auctionId: event.auctionId,
          manufacturerId: event.manufacturerId,
          bidPrice: event.bidPrice,
          currencyCode: event.currencyCode);
      emit(AuctionState.makeBidSuccess(model: result));
    } catch (e) {
      emit(AuctionState.makeBidError(errorText: e.toString()));
    }
  }
}
