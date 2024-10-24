part of 'get_auction_members_bloc.dart';

@freezed
class GetAuctionMembersEvent with _$GetAuctionMembersEvent {
  const factory GetAuctionMembersEvent.getAuctionMembersEvent({required String auctionId }) = GetAuctionMembers;
}