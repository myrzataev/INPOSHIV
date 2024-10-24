part of 'auction_bloc.dart';

@freezed
class AuctionState with _$AuctionState {
  const factory AuctionState.initial() = _Initial;
  const factory AuctionState.loading() = _Loading;
  // const factory AuctionState.auctionCreated() = _AuctionCreated;

  // const factory AuctionState.auctionCreationError({required String errorText}) =
  //     _AuctionCreationError;
  // const factory AuctionState.getAuctionsLoaded(
  //     {required List<AuctionModel> model}) = _GetAuctionsLoaded;
  // const factory AuctionState.getAuctionsError({required String errorText}) =
  //     _GetAuctionsError;
  const factory AuctionState.makeBidSuccess({required AuctionModel model}) =
      _MakeBidSuccess;
  const factory AuctionState.makeBidError({required String errorText}) =
      _MakeBidError;
  // const factory AuctionState.customerOrdersLoaded(
  //         {required List<CustomerOrdersModel> customerOrdersModel}) =
  //     _CustomerOrdersLoaded;
  // const factory AuctionState.customerOrdersError({required String errorText}) =
  //     _CustomerOrdersError;
  // const factory AuctionState.getAuctionMembersLoaded(
  //         {required List<AuctionMembersModel> auctionMembersModel}) =
  //     GetAuctionMembersLoaded;
  //       const factory AuctionState.getAuctionMembersError({required String errorText}) =
  //     GetAuctionMembersError;
}
