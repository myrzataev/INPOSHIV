import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';

class GetDetailedAuctionInfoDs {
  final Dio dio;

  GetDetailedAuctionInfoDs({required this.dio});
  Future<AuctionModel> getDetailedAuctionModel(
      {required String auctionUuid}) async {
    final Response response =
        await dio.get("${UrlRoutes.createAuction}/$auctionUuid");
    return AuctionModel.fromJson(response.data);
  }
}
