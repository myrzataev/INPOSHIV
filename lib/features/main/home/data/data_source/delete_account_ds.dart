import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';

class DeleteAccountDs {
  final Dio dio;
  DeleteAccountDs({required this.dio});
  Future<String> deleteAccount({required String phoneNumber}) async {
    final Response response = await dio
        .delete(UrlRoutes.deleteAccount, queryParameters: {"phoneNumber": phoneNumber});
    return response.data["message"];
  }
}
