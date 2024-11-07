part of 'manufacturer_auctions_bloc.dart';

@freezed
class ManufacturerAuctionsEvent with _$ManufacturerAuctionsEvent {
  const factory ManufacturerAuctionsEvent.getManufacturerAuctions({required String manufacturerId}) = _GetManufacturerAuctions;
}