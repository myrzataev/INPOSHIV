import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/tracking_model.dart';

class ConfirmTrackingStageDs {
  final Dio dio;
  ConfirmTrackingStageDs({
    required this.dio,
  });

  Future<TrackingModel> confirmTrackingStage({
    required FormData body,
    required Map<String, dynamic> queryParameters,
  }) async {
    try {
      // Debugging data
      print("FormData fields: ${body.fields}");
      print("Query Parameters: $queryParameters");

      // Sending POST request with multipart data and query parameters
      final Response response = await dio.post(
        UrlRoutes.orderTracking,
        data: body,
        queryParameters: queryParameters,
        options: Options(
          headers: {
            "Content-Type": "multipart/form-data",
            "Accept": "application/json",
          },
        ),
      );

      print("Response Data: ${response.data}");
      return TrackingModel.fromJson(response.data);
    } on DioException catch (e) {
      print("DioException: ${e.response?.data}");
      rethrow; // Rethrow if needed for further handling
    }
  }
}
