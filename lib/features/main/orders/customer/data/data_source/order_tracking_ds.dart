import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/tracking_model.dart';

class OrderTrackingDs {
  final Dio dio;
  OrderTrackingDs({required this.dio});
  Future<TrackingModel> orderTracking({required String invoiceId}) async {
    final Response response =
        await dio.get("${UrlRoutes.orderTracking}/$invoiceId");
    return TrackingModel.fromJson(response.data);
  }
}
