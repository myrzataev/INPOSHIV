import 'package:inposhiv/features/main/auction/data/data_source/make_bid_ds.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';
import 'package:inposhiv/features/main/auction/domain/repositories/make_bid_repo.dart';

class MakeBidRepoimpl implements MakeBidRepo {
  MakeBidDs dataSource;
  MakeBidRepoimpl({required this.dataSource});
  @override
  Future<AuctionModel> makeBid(
      {required String auctionId,
      required String manufacturerId,
      required double bidPrice,
      required String currencyCode}) async {
    return await dataSource.makeBid(
        auctionId: auctionId,
        manufacturerId: manufacturerId,
        bidPrice: bidPrice,
        currencyCode: currencyCode);
  }
}
