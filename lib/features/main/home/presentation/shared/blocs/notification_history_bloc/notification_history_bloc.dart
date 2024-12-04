import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/core/error/app_error.dart';
import 'package:inposhiv/core/error/error_handler.dart';
import 'package:inposhiv/features/main/home/data/models/notification_model.dart';
import 'package:inposhiv/features/main/home/data/repositories/get_notification_history_repoimpl.dart';

part 'notification_history_event.dart';
part 'notification_history_state.dart';
part 'notification_history_bloc.freezed.dart';

class NotificationHistoryBloc
    extends Bloc<NotificationHistoryEvent, NotificationHistoryState> {
  GetNotificationHistoryRepoimpl getNotificationHistoryRepoimpl;
  NotificationHistoryBloc({required this.getNotificationHistoryRepoimpl})
      : super(const _Initial()) {
    on<NotificationHistoryEvent>((event, emit) async {
      try {
        emit(const NotificationHistoryState.loading());
        final result = await getNotificationHistoryRepoimpl
            .getNotificationHistory(userUuid: event.userUid);
        emit(NotificationHistoryState.loaded(model: result));
      } catch (e) {
        NotificationHistoryState.error(error: handleException(e));
      }
    });
  }
}
