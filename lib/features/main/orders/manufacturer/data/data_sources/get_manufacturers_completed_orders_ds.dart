import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';

class GetManufacturersCompletedOrdersDs {
  final Dio dio;
  GetManufacturersCompletedOrdersDs({required this.dio});
  Future<List<CustomerOrdersModel>> getCustomerOrders(
      {required String manufacturerUuid}) async {
    final Response response =
        await dio.get(UrlRoutes.manufacturersCompletedOrders, queryParameters: {
      "manufacturerUuid": manufacturerUuid,
    });
    final List responseList = response.data;
    return responseList
        .map((element) => CustomerOrdersModel.fromJson(element))
        .toList();
  }
}
