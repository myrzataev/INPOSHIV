import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';

class SendMessageDs {
  final Dio dio;
  SendMessageDs({required this.dio});
  Future<void> sendMessage(
      {required String chatUuid,
      required String senderUuid,
      required String recipientUuid,
      required String content}) async {
    final Response response = await dio.post(UrlRoutes.sendMessage, data: {
      "chatUuid": chatUuid,
      "senderUuid": senderUuid,
      "recipientUuid": recipientUuid,
      "content": content
    });
  }
}
