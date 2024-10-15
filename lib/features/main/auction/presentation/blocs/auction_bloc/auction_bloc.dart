import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';
import 'package:inposhiv/features/main/auction/data/repositories/auction_repo_impl.dart';
import 'package:inposhiv/features/main/auction/data/repositories/get_auctions_list_repoimmpl.dart';
import 'package:inposhiv/features/main/auction/data/repositories/make_bid_repoimpl.dart';
import 'package:inposhiv/features/main/auction/domain/repositories/get_auctions_list.dart';

part 'auction_event.dart';
part 'auction_state.dart';
part 'auction_bloc.freezed.dart';

class AuctionBloc extends Bloc<AuctionEvent, AuctionState> {
  final AuctionRepoImpl repoImpl;
  final GetAuctionsListRepoimmpl getAuctionsListRepoimpl;
  final MakeBidRepoimpl makeBidRepoimpl;
  AuctionBloc(
      {required this.repoImpl,
      required this.getAuctionsListRepoimpl,
      required this.makeBidRepoimpl})
      : super(const _Initial()) {
    on<AuctionEvent>((event, emit) async {
      await event.map(
        createAuction: (createAuctionEvent) async {
          await _handleCreateAuction(event: createAuctionEvent, emit: emit);
        },
        getAuctionsList: (getAuctionsListEvent) async {
          await _handleGetAuctionsList(event: getAuctionsListEvent, emit: emit);
        },
        makeBid: (value) async {
          await _makeBid(event: value, emit: emit);
        },
      );
    });
  }

  Future<void> _handleCreateAuction(
      {required _CreateAuction event,
      required Emitter<AuctionState> emit}) async {
    emit(const AuctionState.loading());
    try {
      await repoImpl.createAuction(orderId: event.orderId);
      emit(const AuctionState.auctionCreated());
    } catch (e) {
      emit(AuctionState.auctionCreationError(errorText: e.toString()));
    }
  }

  Future<void> _handleGetAuctionsList(
      {required _GetAuctionsList event,
      required Emitter<AuctionState> emit}) async {
    try {
      emit(const AuctionState.loading());
      final auctions = await getAuctionsListRepoimpl.getAuctionsList();
      emit(AuctionState.getAuctionsLoaded(model: auctions));
    } catch (e) {
      emit(AuctionState.getAuctionsError(errorText: e.toString()));
    }
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
