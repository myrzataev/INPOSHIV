import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';

class SearchOrderDs {
  final Dio dio;
  SearchOrderDs({required this.dio});
  Future<List<CustomerOrdersModel>> searchOrder(
      {required String fabricType,
      required String category,
      required String productName}) async {
        print(category);
    final Response response =
        await dio.get(UrlRoutes.searchOrder, queryParameters: {
      if (fabricType.isNotEmpty) "material": fabricType,
      if (category.isNotEmpty) "category": category,
      if (productName.isNotEmpty) "productName": productName,
     
    });
    final List responseList = response.data;
    return responseList
        .map((element) => CustomerOrdersModel.fromJson(element))
        .toList();
  }
}
