part of 'send_manufacturers_survey_bloc.dart';

@freezed
class SendManufacturersSurveyState with _$SendManufacturersSurveyState {
  const factory SendManufacturersSurveyState.initial() = _Initial;

  const factory SendManufacturersSurveyState.loading() = _Loading;
  const factory SendManufacturersSurveyState.loaded({required CreateManufacturersProfileModel model}) = _Loaded;
  const factory SendManufacturersSurveyState.error({required String errorText}) = _Error;
}
