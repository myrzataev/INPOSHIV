import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/onboarding/manufacturer/data/models/manufacturer_model.dart';

class CreateManufacturerProfileDs {
  final Dio dio;
  CreateManufacturerProfileDs({required this.dio});
  Future<ManufacturerModel> createManufacturereProfile(
      {required FormData formData, required String userId}) async {
    final Response response = await dio.post("${UrlRoutes.createManufacturerProfile}/$userId",
        // queryParameters: {"manufacturerUuid": userId}
         data: formData);
    return ManufacturerModel.fromJson(response.data);
  }
}
