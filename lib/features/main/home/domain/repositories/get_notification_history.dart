import 'package:inposhiv/features/main/home/data/models/notification_model.dart';

abstract interface class GetNotificationHistory {
  Future<NotificationModel> getNotificationHistory({required String userUuid});
}
