import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/home/data/models/manufacturers_profile_model.dart';

class GetManufacturersDs {
  final Dio dio;
  GetManufacturersDs({required this.dio});
  Future<List<ManufacturersProfileModel>> getManufacturers() async {
    final Response response = await dio.get(UrlRoutes.manufacturer);
    final List responseList = response.data;
    return responseList
        .map((element) => ManufacturersProfileModel.fromJson(element))
        .toList();
  }
}
