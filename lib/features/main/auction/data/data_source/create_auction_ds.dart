import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';

class CreateAuctionDs {
  final Dio dio;
  CreateAuctionDs({required this.dio});
  Future<void> createAuction({required int orderId}) async {
    await dio
        .post(UrlRoutes.createAuction, queryParameters: {"orderId": orderId});
  }
}
