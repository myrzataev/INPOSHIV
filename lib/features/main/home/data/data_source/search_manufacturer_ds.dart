import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/home/data/models/manufacturers_profile_model.dart';

class SearchManufacturerDs {
  final Dio dio;
  SearchManufacturerDs({required this.dio});
  Future<List<ManufacturersProfileModel>> searchManufacturer(
      String fabricType, String category) async {
    final Response response = await dio.get(UrlRoutes.searchManufacturer,
        queryParameters: {"material": fabricType, "category": category});
    final List responseList = response.data;
    return responseList
        .map((element) => ManufacturersProfileModel.fromJson(element))
        .toList();
  }
}
