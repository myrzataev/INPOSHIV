part of 'send_manufacturers_survey_bloc.dart';

@freezed
class SendManufacturersSurveyEvent with _$SendManufacturersSurveyEvent {
  const factory SendManufacturersSurveyEvent.sendData({required Map<String, dynamic> data, required String manufacturerId}) = _SendData;
}