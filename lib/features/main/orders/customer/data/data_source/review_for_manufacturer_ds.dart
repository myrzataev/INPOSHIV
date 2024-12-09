import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';

class ReviewDs {
  final Dio dio;
  ReviewDs({required this.dio});
  Future<void> reviewToManufacturer(
      {required String manufacturerUuid,
      required String customerUuid,
      required Map<String, dynamic> body}) async {
    await dio.post(UrlRoutes.reviewToManufacturer,
        queryParameters: {
          "manufacturerUuid": manufacturerUuid,
          "customerUuid": customerUuid
        },
        data: body);
  }

  Future<void> reviewToCustomer(
      {required String manufacturerUuid,
      required String customerUuid,
      required Map<String, dynamic> body}) async {
    await dio.post(UrlRoutes.reviewToCustomer,
        queryParameters: {
          "manufacturerUuid": manufacturerUuid,
          "customerUuid": customerUuid
        },
        data: body);
  }
}
