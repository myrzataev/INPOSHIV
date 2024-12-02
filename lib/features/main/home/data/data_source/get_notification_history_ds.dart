import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/home/data/models/notification_model.dart';

class GetNotificationHistoryDs {
  final Dio dio;
  GetNotificationHistoryDs({required this.dio});
  Future<NotificationModel> getNotificationHistory(
      {required String userUuid}) async {
    final Response response = await dio.get(UrlRoutes.notificationsHistory,
        queryParameters: {"userUuid": userUuid});
    return NotificationModel.fromJson(response.data);
  }
}
