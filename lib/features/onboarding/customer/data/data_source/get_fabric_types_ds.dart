import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/onboarding/customer/data/models/fabric_type_model.dart';

class GetFabricTypesDs {
  final Dio dio;
  GetFabricTypesDs({required this.dio});
  Future<List<FabricTypeModel>> getFabricTypes() async {
    final Response response = await dio.get(UrlRoutes.fabricTypes);
    final List responseList = response.data;
    return responseList
        .map((element) => FabricTypeModel.fromJson(element))
        .toList();
  }
}
