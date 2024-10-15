// To parse this JSON data, do
//
//     final userResponseModel = userResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_response_model.freezed.dart';
part 'user_response_model.g.dart';

UserResponseModel userResponseModelFromJson(String str) => UserResponseModel.fromJson(json.decode(str));

String userResponseModelToJson(UserResponseModel data) => json.encode(data.toJson());

@freezed
class UserResponseModel with _$UserResponseModel {
    const factory UserResponseModel({
        String? userUuid,
        String? customerOrManufacturerUuid,
        String? username,
        dynamic email,
        String? password,
        String? phoneNumber,
        dynamic companyName,
        dynamic companyDescription,
        dynamic city,
        dynamic trustLevel,
        String? role,
        dynamic status,
        dynamic lastLogin,
        dynamic token,
        dynamic refreshToken,
    }) = _UserResponseModel;

    factory UserResponseModel.fromJson(Map<String, dynamic> json) => _$UserResponseModelFromJson(json);
}
