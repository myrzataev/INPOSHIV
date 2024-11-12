part of 'confirm_tracking_stage_bloc.dart';

@freezed
class ConfirmTrackingStageEvent with _$ConfirmTrackingStageEvent {
  const factory ConfirmTrackingStageEvent.confirmStage(
      {required String invoiceUuid,
      required Map<String, dynamic> body}) = _ConfirmStage;
}
