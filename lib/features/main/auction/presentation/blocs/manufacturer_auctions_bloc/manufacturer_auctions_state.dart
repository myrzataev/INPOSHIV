part of 'manufacturer_auctions_bloc.dart';

@freezed
class ManufacturerAuctionsState with _$ManufacturerAuctionsState {
  const factory ManufacturerAuctionsState.initial() = _Initial;
    const factory ManufacturerAuctionsState.loading() = _Loading;
  const factory ManufacturerAuctionsState.loaded({required List<AuctionModel> model}) = _Loaded;
  const factory ManufacturerAuctionsState.error({required String errorText}) = _Error;

}
