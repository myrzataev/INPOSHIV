// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'loginresponse_model.freezed.dart';
part 'loginresponse_model.g.dart';

LoginResponseModel loginResponseModelFromJson(String str) => LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) => json.encode(data.toJson());

@freezed
class LoginResponseModel with _$LoginResponseModel {
    const factory LoginResponseModel({
        String? token,
        String? refreshToken,
        String? userUuid,
        String? customerOrManufacturerUuid,
        String? role,
    }) = _LoginResponseModel;

    factory LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);
}
