// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:inposhiv/features/main/auction/data/data_source/get_detailed_auction_info_ds.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';
import 'package:inposhiv/features/main/auction/domain/get_detailed_auction_info.dart';

class GetDetailedAuctionInfoRepoimpl implements GetDetailedAuctionInfo {
  GetDetailedAuctionInfoDs getDetailedAuctionInfoDs;
  GetDetailedAuctionInfoRepoimpl({
    required this.getDetailedAuctionInfoDs,
  });
  @override
  Future<AuctionModel> getDetailedAuctionInfo(
      {required String auctionUuid}) async {
    return await getDetailedAuctionInfoDs.getDetailedAuctionModel(
        auctionUuid: auctionUuid);
  }
}
