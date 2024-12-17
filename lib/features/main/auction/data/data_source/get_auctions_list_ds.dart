import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';

class GetAuctionsListDs {
  final Dio dio;
  GetAuctionsListDs({required this.dio});
  Future<List<AuctionModel>> getAuctionsList() async {
    final Response response = await dio.get(UrlRoutes.createAuction);
    final List responseList = response.data;
    return responseList
        .map((element) => AuctionModel.fromJson(element))
        .toList();
  }

  Future<List<AuctionModel>> getActiveAuctionsList(
      {required String manufacturerUuid}) async {
    final Response response =
        await dio.get(UrlRoutes.activeAuctions, queryParameters: {
      "manufacturerUuid": manufacturerUuid,
    });
    final List responseList = response.data;
    return responseList
        .map((element) => AuctionModel.fromJson(element))
        .toList();
  }
}
