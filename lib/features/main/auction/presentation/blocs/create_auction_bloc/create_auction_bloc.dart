import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/main/auction/data/repositories/auction_repo_impl.dart';

part 'create_auction_event.dart';
part 'create_auction_state.dart';
part 'create_auction_bloc.freezed.dart';

class CreateAuctionBloc extends Bloc<CreateAuctionEvent, CreateAuctionState> {
  final AuctionRepoImpl repoImpl;
  CreateAuctionBloc({required this.repoImpl}) : super(const _Initial()) {
    on<CreateAuctionEvent>((event, emit) async {
      try {
        emit(const CreateAuctionState.loading());
        await repoImpl.createAuction(orderId: event.orderId);
        emit(const CreateAuctionState.auctionCreated());
      } catch (e) {
        emit(CreateAuctionState.auctionCreationError(errorText: e.toString()));
      }
    });
  }
}
