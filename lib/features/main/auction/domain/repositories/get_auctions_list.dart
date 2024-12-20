import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';

abstract interface class GetAuctionsList {
  Future<List<AuctionModel>> getAuctionsList();
  Future<List<AuctionModel>> getActiveAuctionsList({required String manufacturerUuid});
}
