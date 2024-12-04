import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';

class UserAccountDs {
  final Dio dio;
  UserAccountDs({required this.dio});
  Future<String> deleteAccount({required String phoneNumber}) async {
    final Response response = await dio.delete(UrlRoutes.deleteAccount,
        queryParameters: {"phoneNumber": phoneNumber});
    return response.data["message"];
  }

  Future<Either<String, String>> changePassword(
      {required Map<String, dynamic> body}) async {
    try {
      final Response response =
          await dio.post(UrlRoutes.changePassword, data: body);
      return Right(response.data["message"] as String);
    } on DioException catch (e) {
      return Left(e.response?.data["message"] as String);
    }
  }
}
