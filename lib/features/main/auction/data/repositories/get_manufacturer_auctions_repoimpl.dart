import 'package:inposhiv/features/main/auction/data/data_source/get_manufacturer_auctions_ds.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';
import 'package:inposhiv/features/main/auction/domain/repositories/get_manufacturer_auctions_repo.dart';

class GetManufacturerAuctionsRepoimpl implements GetManufacturerAuctionsRepo {
  GetManufacturerAuctionsDs getManufacturerAuctionsDs;
  GetManufacturerAuctionsRepoimpl({required this.getManufacturerAuctionsDs});
  @override
  Future<List<AuctionModel>> getManufacturersAuctions(
      {required String manufacturerId}) async {
    return await getManufacturerAuctionsDs.getManufacturerAuctions(
        manufacturerId: manufacturerId);
  }
}
