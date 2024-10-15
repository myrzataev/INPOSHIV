import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/auth/data/models/user_model.dart';
import 'package:inposhiv/features/auth/data/models/user_response_model.dart';
import 'package:inposhiv/features/auth/domain/entities/user_entity.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class AuthDataSource {
  final Dio dio;
  // final SharedPreferences sharedPreferences;
  AuthDataSource({required this.dio, });
  Future<UserResponseModel> auth({required UserModel model}) async {
    final Response response =
        await dio.post(UrlRoutes.auth, data: userModelToJson(model));
    return UserResponseModel.fromJson(response.data);
  }

  Future<UserEntity> modelToEntity({required UserModel usermodel}) async {
    UserResponseModel model = await auth(model: usermodel);
    return UserEntity(
      userUuid: model.userUuid ?? "",
      customerOrManufacturerUuid: model.customerOrManufacturerUuid??"",
      username: model.username ?? "",
      email: model.email,
      password: model.password ?? "",
      phoneNumber: model.phoneNumber ?? "",
      companyName: model.companyName,
      companyDescription: model.companyDescription,
      city: model.city,
      trustLevel: model.trustLevel,
      role: model.role ?? "",
      status: model.status,
      lastLogin: model.lastLogin,
      token: model.token,
      refreshToken: model.refreshToken,
    );
  }
}
