import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';

class GetCustomersCompletedOrdersDs {
  final Dio dio;
  GetCustomersCompletedOrdersDs({required this.dio});
  Future<List<CustomerOrdersModel>> getCustomerOrders(
      {required String customerUid}) async {
    final Response response =
        await dio.get(UrlRoutes.customersCompletedOrders, queryParameters: {
      "customerUuid": customerUid,
    });
    final List responseList = response.data;
    return responseList
        .map((element) => CustomerOrdersModel.fromJson(element))
        .toList();
  }
}
