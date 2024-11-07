import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/survey/data/models/create_manufacturers_profile_model.dart';

class SendManufacturerSurveyDs {
  final Dio dio;
  SendManufacturerSurveyDs({required this.dio});

  Future<CreateManufacturersProfileModel> sendManufacturerSurvery(
      {required Map<String, dynamic> data,
      required FormData photo,
      required String manufacturerUuid}) async {
    print("////// query parameters: $data");
    print("////// photos parameters: $photo");
    print("Final data: ${(data)}");

    final formData = photo;

    final Response response = await dio.post(
        "${UrlRoutes.createManufacturerProfile}/$manufacturerUuid",
        queryParameters: data, // Data for query parameters
        data: formData, // Multipart data
        options: Options(contentType: 'multipart/form-data'));

    return CreateManufacturersProfileModel.fromJson(response.data);
  }
}
