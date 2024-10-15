import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_entity.freezed.dart'; // This is required for code generation
@freezed
class UserEntity with _$UserEntity {
    const factory UserEntity({
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
    }) = _UserEntity;
}