part of 'send_customer_survey_data_bloc.dart';

@freezed
class SendCustomerSurveyDataEvent with _$SendCustomerSurveyDataEvent {
  const factory SendCustomerSurveyDataEvent.senData({required String userId, required Map<String, dynamic> customerSurveyData}) = _SendData;
}