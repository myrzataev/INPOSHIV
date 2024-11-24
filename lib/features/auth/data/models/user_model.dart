// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

@freezed
class UserModel with _$UserModel {
    const factory UserModel({
        String? role,
        String? firstAndLastName,
        String? phoneNumber,
        String? email,
        String? city,
        String? companyName,
        String? password,
        String? firebaseToken,
        String? telegramChatId,
    }) = _UserModel;

    factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
