part of 'send_customer_survey_data_bloc.dart';

@freezed
class SendCustomerSurveyDataState with _$SendCustomerSurveyDataState {
  const factory SendCustomerSurveyDataState.initial() = _Initial;
  const factory SendCustomerSurveyDataState.loading() = _Loading;
  const factory SendCustomerSurveyDataState.loaded({required CustomerSurveyResponseModel model}) = _Loaded;
  const factory SendCustomerSurveyDataState.error({required String errorText
  }) = _Error;
}
