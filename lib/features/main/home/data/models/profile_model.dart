// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

ProfileModel profileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

@freezed
class ProfileModel with _$ProfileModel {
    const factory ProfileModel({
        String? userUuid,
        String? username,
        String? email,
        dynamic password,
        String? phoneNumber,
        String? companyName,
        dynamic companyDescription,
        String? city,
        String? trustLevel,
        String? role,
        int? status,
        dynamic lastLogin,
        dynamic token,
        dynamic refreshToken,
    }) = _ProfileModel;

    factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);
}
