import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'login_entity.freezed.dart';

@freezed
class LoginEntity with _$LoginEntity {
    const factory LoginEntity({
        String? token,
        String? refreshToken,
    }) = _LoginEntity;

}
