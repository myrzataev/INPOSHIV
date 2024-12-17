part of 'active_auctions_bloc.dart';

@freezed
class ActiveAuctionsState with _$ActiveAuctionsState {
  const factory ActiveAuctionsState.initial() = _Initial;
  const factory ActiveAuctionsState.loading() = _Loading;
  const factory ActiveAuctionsState.loaded(
      {required List<AuctionModel> auctionModel}) = _Loaded;
  const factory ActiveAuctionsState.error({required AppError error}) = _Error;
}
