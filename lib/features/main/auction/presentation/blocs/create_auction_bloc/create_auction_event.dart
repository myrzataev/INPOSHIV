part of 'create_auction_bloc.dart';

@freezed
class CreateAuctionEvent with _$CreateAuctionEvent {
  const factory CreateAuctionEvent.createAuction({required int orderId}) =
      _CreateAuction;
}
