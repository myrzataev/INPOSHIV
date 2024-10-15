import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/survey/data/models/customer_survey_response_model.dart';

class SendCustomeSurveyDs {
  final Dio dio;
  SendCustomeSurveyDs({required this.dio});
  Future<CustomerSurveyResponseModel> sendSurveyData(
      {required String userId,
      required Map<String, dynamic> customerSurveyData}) async {
    final Response response = await dio.post(
        "${UrlRoutes.customersurvey}/$userId",
        data: customerSurveyData);
    return response.data;
  }
}
