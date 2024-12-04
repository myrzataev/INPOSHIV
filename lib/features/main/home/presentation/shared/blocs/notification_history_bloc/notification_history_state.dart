part of 'notification_history_bloc.dart';

@freezed
class NotificationHistoryState with _$NotificationHistoryState {
  const factory NotificationHistoryState.initial() = _Initial;
  const factory NotificationHistoryState.loading() = _Loading;
  const factory NotificationHistoryState.loaded(
      {required NotificationModel model}) = _Loded;
  const factory NotificationHistoryState.error({required AppError error}) =
      _Error;
}
