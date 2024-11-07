import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/survey/data/models/create_manufacturers_profile_model.dart';

class SendManufacturerSurveyDs {
  final Dio dio;
  SendManufacturerSurveyDs({required this.dio});
  Future<CreateManufacturersProfileModel> sendManufacturerSurvery(
      {required Map<String, dynamic> data,
      required String manufacturerUuid}) async {
        print(data);
    final Response response = await dio.post(
        "${UrlRoutes.createManufacturerProfile}/$manufacturerUuid",
        data: FormData.fromMap(data));
    return CreateManufacturersProfileModel.fromJson(response.data);
  }
}
