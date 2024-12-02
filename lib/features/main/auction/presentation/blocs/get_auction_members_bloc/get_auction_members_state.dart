part of 'get_auction_members_bloc.dart';

@freezed
class GetAuctionMembersState with _$GetAuctionMembersState {
  const factory GetAuctionMembersState.initial() = _Initial;
  const factory GetAuctionMembersState.loading() = _Loading;
  const factory GetAuctionMembersState.auctionMembersLoaded( {required List<AuctionMembersModel> auctionMembersModel}) =
      _AuctionMembersLoaded;
  const factory GetAuctionMembersState.auctionMembersError({required AppError error}) =
      _AuctionMembersError;
}
