import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/order_details_model.dart';

class SendOrderDetailsDs {
  final Dio dio;
  SendOrderDetailsDs({required this.dio});
  Future<OrderDetailsModel> sendOrderDetails(
      {required Map<String, dynamic> orderDetails,
      required String orderId}) async {
    final Response response =
        await dio.post("${UrlRoutes.createOrder}/$orderId/details");
    return OrderDetailsModel.fromJson(response.data);
  }
}
