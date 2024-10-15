import 'package:inposhiv/features/survey/data/models/customer_survey_model.dart';
import 'package:inposhiv/features/survey/data/models/customer_survey_response_model.dart';

abstract interface class SendCustomerSurveyRepo {
  Future<CustomerSurveyResponseModel> sendCustomersSurvey({required String userId, required Map<String, dynamic> customerSurveyData});
}