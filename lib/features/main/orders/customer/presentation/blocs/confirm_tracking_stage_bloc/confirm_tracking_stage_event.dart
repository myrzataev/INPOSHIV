part of 'confirm_tracking_stage_bloc.dart';

@freezed
class ConfirmTrackingStageEvent with _$ConfirmTrackingStageEvent {
  const factory ConfirmTrackingStageEvent.confirmStage(
      {required FormData body,
      required Map<String, dynamic> queryParameters}) = _ConfirmStage;
}
