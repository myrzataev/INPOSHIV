import 'package:inposhiv/features/survey/data/data_source/send_custome_survey_ds.dart';
import 'package:inposhiv/features/survey/data/models/customer_survey_response_model.dart';
import 'package:inposhiv/features/survey/domain/repositories/send_customer_survey_repo.dart';

class SendCustomerSurveyRepoImpl implements SendCustomerSurveyRepo {
  SendCustomeSurveyDs dataSource;
  SendCustomerSurveyRepoImpl({required this.dataSource});
  @override
  Future<CustomerSurveyResponseModel> sendCustomersSurvey(
      {required String userId, required Map<String, dynamic> customerSurveyData}) async {
    return await dataSource.sendSurveyData(userId: userId, customerSurveyData: customerSurveyData);
  }
}
