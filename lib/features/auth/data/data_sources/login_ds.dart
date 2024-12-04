import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/auth/data/models/loginresponse_model.dart';
import 'package:inposhiv/features/auth/domain/entities/login_entity.dart';

class LoginDs {
  final Dio dio;
  LoginDs({required this.dio});
  Future<LoginResponseModel> login(
      {required String phoneNumber, required String password}) async {
    final Response response = await dio.post(UrlRoutes.login,
        data: {"phoneNumber": phoneNumber, "password": password});
    return LoginResponseModel.fromJson(response.data);
  }

  Future<LoginEntity> modelToEntity(
      {required String phoneNumber, required String password}) async {
    final model = await login(phoneNumber: phoneNumber, password: password);
    return LoginEntity(
        refreshToken: model.refreshToken,
        token: model.token,
        userUuid: model.userUuid,
        customerOrManufacturerUuid: model.customerOrManufacturerUuid,
        role: model.role,
        username: model.username);
  }
}
