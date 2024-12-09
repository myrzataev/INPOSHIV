import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';

class SendFilesToChatDs {
  final Dio dio;
  SendFilesToChatDs({required this.dio});
  Future<String> sendFilesToChat({required Map<String, dynamic> body}) async {
    final Response response = await dio.post(UrlRoutes.sendFilesToChat,
        data: FormData.fromMap(body),
        options: Options(headers: {
          "Content-Type": "multipart/form-data",
          "Accept": "application/json",
        }));
    return response.data["fileUrl"];
  }
}
