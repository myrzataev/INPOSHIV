import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/onboarding/customer/data/models/order_model.dart';

class GetCustomerOrdersDs {
  final Dio dio;
  GetCustomerOrdersDs({required this.dio});
  Future<List<OrderModel>> getCustomerOrders(
      {required String customerID}) async {
    final Response response = await dio.get(
      "${UrlRoutes.customersOrderHistory}/$customerID",
    );
    final List responseList = response.data;
    return responseList.map((element) => OrderModel.fromJson(element)).toList();
  }
}
