import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/onboarding/customer/data/models/size_model.dart';

class GetSizesDs {
  final Dio dio;
  GetSizesDs({required this.dio});
  Future<List<SizeModel>> getSizes() async {
    final Response response = await dio.get(UrlRoutes.getSizeList);
    final List responseList = response.data;
    return responseList.map((element) => SizeModel.fromJson(element)).toList();
  }
}
