part of 'get_detailed_auction_info_bloc.dart';

@freezed
class GetDetailedAuctionInfoEvent with _$GetDetailedAuctionInfoEvent {
  const factory GetDetailedAuctionInfoEvent.getAuctionDetails(
      {required String auctionUuid}) = _GetAuctionDetails;
}
