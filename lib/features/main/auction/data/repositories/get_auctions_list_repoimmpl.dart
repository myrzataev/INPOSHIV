import 'package:inposhiv/features/main/auction/data/data_source/get_auctions_list_ds.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';
import 'package:inposhiv/features/main/auction/domain/repositories/get_auctions_list.dart';

class GetAuctionsListRepoimmpl implements GetAuctionsList {
  GetAuctionsListDs dataSource;
  GetAuctionsListRepoimmpl({required this.dataSource});
  @override
  Future<List<AuctionModel>> getAuctionsList() async {
    return await dataSource.getAuctionsList();
  }
}
