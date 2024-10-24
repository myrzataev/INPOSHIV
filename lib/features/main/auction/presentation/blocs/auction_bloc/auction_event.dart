part of 'auction_bloc.dart';

@freezed
class AuctionEvent with _$AuctionEvent {
  // const factory AuctionEvent.createAuction({required int orderId}) =
  //     _CreateAuction;
  // const factory AuctionEvent.getAuctionsList() = _GetAuctionsList;
  // const factory AuctionEvent.customerAuctions({required String customerId}) =
  //     CustomerAuctionsEvent;
  const factory AuctionEvent.makeBid(
      {required String auctionId,
      required String manufacturerId,
      required double bidPrice,
      required String currencyCode}) = MakeBidEvent;
  // const factory AuctionEvent.getAuctionMembersEvent({required String auctionId }) = _GetAuctionMembersEvent;
}
