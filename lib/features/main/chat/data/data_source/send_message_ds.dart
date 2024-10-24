import 'package:dio/dio.dart';

class SendMessageDs {
  final Dio dio;
  SendMessageDs({required this.dio});
  Future<void> sendMessage(
      {required String chatUuid,
      required String senderUuid,
      required String recipientUuid,
      required String content}) async {
    await dio.post("api/$chatUuid",
        // UrlRoutes.sendMessage,
        data: {
          "chatUuid": chatUuid,
          "senderUuid": senderUuid,
          "recipientUuid": recipientUuid,
          "content": content
        });
  }
}
