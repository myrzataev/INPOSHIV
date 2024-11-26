import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';

class ReviewForManufacturerDs {
  final Dio dio;
  ReviewForManufacturerDs({required this.dio});
  Future<void> review(
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
}
