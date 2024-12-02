import 'package:inposhiv/features/main/home/data/data_source/get_notification_history_ds.dart';
import 'package:inposhiv/features/main/home/data/models/notification_model.dart';
import 'package:inposhiv/features/main/home/domain/repositories/get_notification_history.dart';

class GetNotificationHistoryRepoimpl implements GetNotificationHistory {
  GetNotificationHistoryDs getNotificationHistoryDs;
  GetNotificationHistoryRepoimpl({required this.getNotificationHistoryDs});
  @override
  Future<NotificationModel> getNotificationHistory(
      {required String userUuid}) async {
    return await getNotificationHistoryDs.getNotificationHistory(
        userUuid: userUuid);
  }
}
