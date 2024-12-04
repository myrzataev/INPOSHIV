part of 'notification_history_bloc.dart';

@freezed
class NotificationHistoryEvent with _$NotificationHistoryEvent {
  const factory NotificationHistoryEvent.started({required String userUid}) = _Started;
}