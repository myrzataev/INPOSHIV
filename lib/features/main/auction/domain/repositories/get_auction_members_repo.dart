import 'package:inposhiv/features/main/auction/data/models/auction_members_model.dart';

abstract interface class GetAuctionMembersRepo {
  Future<List<AuctionMembersModel>> getAuctionMembers({required String auctionId});
}