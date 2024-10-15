import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';

abstract interface class MakeBidRepo {
  Future<AuctionModel> makeBid(
      {required String auctionId,
      required String manufacturerId,
      required double bidPrice,
      required String currencyCode});
}
