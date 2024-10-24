import 'package:inposhiv/features/main/auction/data/data_source/get_auction_members_ds.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_members_model.dart';
import 'package:inposhiv/features/main/auction/domain/repositories/get_auction_members_repo.dart';

class GetAuctionMembersRepoimpl implements GetAuctionMembersRepo {
  GetAuctionMembersDs getAuctionMembersDs;
  GetAuctionMembersRepoimpl({required this.getAuctionMembersDs});
  @override
  Future<List<AuctionMembersModel>> getAuctionMembers(
      {required String auctionId}) async {
    return await getAuctionMembersDs.getAuctionMembers(auctionId: auctionId);
  }
}
