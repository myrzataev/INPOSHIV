part of 'get_auctions_bloc.dart';

@freezed
class GetAuctionsEvent with _$GetAuctionsEvent {
  const factory GetAuctionsEvent.getAuctions() = _GetAuctions;
}