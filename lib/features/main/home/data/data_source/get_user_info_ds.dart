import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/home/data/models/profile_model.dart';

class GetUserInfoDs {
  final Dio dio;
  GetUserInfoDs({required this.dio});
  Future<ProfileModel> getUserInfo({required String userId}) async {
    final Response response =
        await dio.get(UrlRoutes.profile, queryParameters: {"userUuid": userId});
    return ProfileModel.fromJson(response.data);
  }
}
