part of 'confirm_tracking_stage_bloc.dart';

@freezed
class ConfirmTrackingStageState with _$ConfirmTrackingStageState {
  const factory ConfirmTrackingStageState.initial() = _Initial;
    const factory ConfirmTrackingStageState.loading() = _Loading;
  const factory ConfirmTrackingStageState.loaded({required TrackingModel model}) = _Loaded;
  const factory ConfirmTrackingStageState.error({required String errorText}) = _Error;

}
