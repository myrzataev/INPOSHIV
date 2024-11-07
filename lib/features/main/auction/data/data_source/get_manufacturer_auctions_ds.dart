import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';

class GetManufacturerAuctionsDs {
  final Dio dio;
  GetManufacturerAuctionsDs({required this.dio});
  Future<List<AuctionModel>> getManufacturerAuctions(
      {required String manufacturerId}) async {
    final Response response = await dio.get(UrlRoutes.manufacturerAuctions,
        queryParameters: {"manufacturerUuid": manufacturerId});

    final List responseList = response.data;
    return responseList
        .map((element) => AuctionModel.fromJson(element))
        .toList();
  }
}
