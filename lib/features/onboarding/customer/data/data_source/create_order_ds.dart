import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/onboarding/customer/data/models/order_model.dart';

class CreateOrderDs {
  final Dio dio;
  CreateOrderDs({required this.dio});
  Future<OrderModel> createOrder(
      {required FormData formData, required String customerUuid}) async {
    print("form data is $formData");
    final Response response = await dio.post(UrlRoutes.createOrder,
        queryParameters: {"customerUuid": customerUuid}, data: formData);
    return OrderModel.fromJson(response.data);
  }
}
