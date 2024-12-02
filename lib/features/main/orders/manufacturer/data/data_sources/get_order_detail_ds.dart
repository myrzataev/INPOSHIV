import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/order_details_response_model.dart';

class GetOrderDetailDs {
  final Dio dio;
  GetOrderDetailDs({required this.dio});
  Future<OrderDetailsResponseModel> getOrderDetails({required String orderId}) async {
    print("order id is $orderId");
    final Response response =
        await dio.get("${UrlRoutes.createOrder}/$orderId/details");
        print("list is ${response.data["technicalDocumentUrls"]}");
    return OrderDetailsResponseModel.fromJson(response.data);
  }
}
