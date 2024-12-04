import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
    const factory ProfileModel({
        String? userUuid,
        String? username,
        String? email,
        String? password,
        String? phoneNumber,
        String? companyName,
        String? companyDescription,
        String? city,
        String? trustLevel,
        String? role,
        int? status,
        String? lastLogin,
        String? token,
        String? refreshToken,
        List<Review>? reviews,
    }) = _ProfileModel;

    factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);
}

@freezed
class Review with _$Review {
    const factory Review({
        String? customerUuid,
        String? manufacturerUuid,
        String? reviewText,
        String? createdAt,
        int? rating,
        String? customerName,
    }) = _Review;

    factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
