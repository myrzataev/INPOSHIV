part of 'get_auctions_bloc.dart';

@freezed
class GetAuctionsState with _$GetAuctionsState {
  const factory GetAuctionsState.initial() = _Initial;
  const factory GetAuctionsState.loading() = _Loading;
  const factory GetAuctionsState.loaded({required List<AuctionModel> model}) =
      _Loaded;
  const factory GetAuctionsState.error({required AppError error}) = _Error;
}
