import 'package:inposhiv/features/main/auction/data/data_source/create_auction_ds.dart';
import 'package:inposhiv/features/main/auction/domain/repositories/auction_repo.dart';

class AuctionRepoImpl implements AuctionRepo {
  CreateAuctionDs dataSource;
  AuctionRepoImpl({required this.dataSource});
  @override
  Future<void> createAuction({required int orderId}) async {
    await dataSource.createAuction(orderId: orderId);
  }
}
