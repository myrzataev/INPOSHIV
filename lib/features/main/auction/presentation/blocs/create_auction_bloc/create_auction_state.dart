part of 'create_auction_bloc.dart';

@freezed
class CreateAuctionState with _$CreateAuctionState {
  const factory CreateAuctionState.initial() = _Initial;
  const factory CreateAuctionState.loading() = _Loading;
  const factory CreateAuctionState.auctionCreated() = _AuctionCreated;
  const factory CreateAuctionState.auctionCreationError(
      {required String errorText}) = _AuctionCreationError;
}
