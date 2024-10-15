import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';

class MakeBidDs {
  final Dio dio;
  MakeBidDs({required this.dio});
  Future<AuctionModel> makeBid(
      {required String auctionId,
      required String manufacturerId,
      required double bidPrice,
      required String currencyCode}) async {
    final Response response = await dio
        .post("${UrlRoutes.createAuction}/$auctionId/bid", queryParameters: {
      "manufacturerUuid": manufacturerId,
      "bidPrice": bidPrice,
      "currencyCode": currencyCode
    });
    return AuctionModel.fromJson(response.data);
  }
}
