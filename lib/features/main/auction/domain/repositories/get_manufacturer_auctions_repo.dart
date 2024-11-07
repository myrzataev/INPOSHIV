import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';

abstract interface class GetManufacturerAuctionsRepo {
  Future<List<AuctionModel>> getManufacturersAuctions(
      {required String manufacturerId});
}
