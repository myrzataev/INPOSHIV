import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';

class GetCustomersOrdersDs {
  final Dio dio;
  GetCustomersOrdersDs({required this.dio});
  Future<List<CustomerOrdersModel>> getCustomerOrders(
      {required String customerId}) async {
    final Response response = await dio.get(UrlRoutes.ordersByCustomer,
        queryParameters: {"customerUuid": customerId});
    final List responseList = response.data;
    return responseList
        .map((element) => CustomerOrdersModel.fromJson(element))
        .toList();
  }
}
