part of 'get_detailed_auction_info_bloc.dart';

@freezed
class GetDetailedAuctionInfoState with _$GetDetailedAuctionInfoState {
  const factory GetDetailedAuctionInfoState.initial() = _Initial;
  const factory GetDetailedAuctionInfoState.loading() = _Loading;
  const factory GetDetailedAuctionInfoState.loaded({required AuctionModel auctionModel}) = _Loaded;
  const factory GetDetailedAuctionInfoState.error({required String errorText}) = _Error;
}
