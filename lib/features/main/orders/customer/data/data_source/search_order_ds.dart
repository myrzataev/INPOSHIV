import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';

class SearchOrderDs {
  final Dio dio;
  SearchOrderDs({required this.dio});
  Future<List<CustomerOrdersModel>> searchOrder(
      String fabricType, String category, String productName) async {
    final Response response = await dio.get(UrlRoutes.searchOrder,
        queryParameters: {
          "material": fabricType,
          "category": category,
          "productName": productName
        });
    final List responseList = response.data;
    return responseList
        .map((element) => CustomerOrdersModel.fromJson(element))
        .toList();
  }
}
