import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_members_model.dart';
import 'package:inposhiv/features/main/auction/data/repositories/get_auction_members_repoimpl.dart';

part 'get_auction_members_event.dart';
part 'get_auction_members_state.dart';
part 'get_auction_members_bloc.freezed.dart';

class GetAuctionMembersBloc
    extends Bloc<GetAuctionMembersEvent, GetAuctionMembersState> {
  final GetAuctionMembersRepoimpl getAuctionMembersRepoimpl;

  GetAuctionMembersBloc({required this.getAuctionMembersRepoimpl})
      : super(const _Initial()) {
    on<GetAuctionMembersEvent>((event, emit) async {
      try {
        emit(const GetAuctionMembersState.loading());
        final result = await getAuctionMembersRepoimpl.getAuctionMembers(
            auctionId: event.auctionId);
        emit(GetAuctionMembersState.auctionMembersLoaded(
            auctionMembersModel: result));
        print("Emitting getAuctionMembersLoaded");
      } catch (e) {
        emit(GetAuctionMembersState.auctionMembersError(
            errorText: e.toString()));
      }
    });
  }
}
