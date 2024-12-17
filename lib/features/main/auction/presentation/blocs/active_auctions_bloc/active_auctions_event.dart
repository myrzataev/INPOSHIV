part of 'active_auctions_bloc.dart';

@freezed
class ActiveAuctionsEvent with _$ActiveAuctionsEvent {
  const factory ActiveAuctionsEvent.started({required String manufacturerUuid}) = _Started;
}