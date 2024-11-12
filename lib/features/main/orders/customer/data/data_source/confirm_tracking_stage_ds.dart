import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/tracking_model.dart';

class ConfirmTrackingStageDs {
  final Dio dio;
  ConfirmTrackingStageDs({
    required this.dio,
  });
  Future<TrackingModel> confirmTrackingStage(
      {required String invoiceUuid, required Map<String, dynamic> body}) async {
    final Response response =
        await dio.post("${UrlRoutes.orderTracking}/$invoiceUuid", data: body);
    return TrackingModel.fromJson(response.data);
  }
}
