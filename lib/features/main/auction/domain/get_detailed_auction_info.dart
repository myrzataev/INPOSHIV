import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';

abstract interface class GetDetailedAuctionInfo {
  Future<AuctionModel> getDetailedAuctionInfo({required String auctionUuid});
}
