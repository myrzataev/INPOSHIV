// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEntity {
  String? get token => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  String? get userUuid => throw _privateConstructorUsedError;
  String? get customerOrManufacturerUuid => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginEntityCopyWith<LoginEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEntityCopyWith<$Res> {
  factory $LoginEntityCopyWith(
          LoginEntity value, $Res Function(LoginEntity) then) =
      _$LoginEntityCopyWithImpl<$Res, LoginEntity>;
  @useResult
  $Res call(
      {String? token,
      String? refreshToken,
      String? userUuid,
      String? customerOrManufacturerUuid,
      String? role});
}

/// @nodoc
class _$LoginEntityCopyWithImpl<$Res, $Val extends LoginEntity>
    implements $LoginEntityCopyWith<$Res> {
  _$LoginEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? refreshToken = freezed,
    Object? userUuid = freezed,
    Object? customerOrManufacturerUuid = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      userUuid: freezed == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      customerOrManufacturerUuid: freezed == customerOrManufacturerUuid
          ? _value.customerOrManufacturerUuid
          : customerOrManufacturerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginEntityImplCopyWith<$Res>
    implements $LoginEntityCopyWith<$Res> {
  factory _$$LoginEntityImplCopyWith(
          _$LoginEntityImpl value, $Res Function(_$LoginEntityImpl) then) =
      __$$LoginEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? token,
      String? refreshToken,
      String? userUuid,
      String? customerOrManufacturerUuid,
      String? role});
}

/// @nodoc
class __$$LoginEntityImplCopyWithImpl<$Res>
    extends _$LoginEntityCopyWithImpl<$Res, _$LoginEntityImpl>
    implements _$$LoginEntityImplCopyWith<$Res> {
  __$$LoginEntityImplCopyWithImpl(
      _$LoginEntityImpl _value, $Res Function(_$LoginEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? refreshToken = freezed,
    Object? userUuid = freezed,
    Object? customerOrManufacturerUuid = freezed,
    Object? role = freezed,
  }) {
    return _then(_$LoginEntityImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      userUuid: freezed == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      customerOrManufacturerUuid: freezed == customerOrManufacturerUuid
          ? _value.customerOrManufacturerUuid
          : customerOrManufacturerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginEntityImpl implements _LoginEntity {
  const _$LoginEntityImpl(
      {this.token,
      this.refreshToken,
      this.userUuid,
      this.customerOrManufacturerUuid,
      this.role});

  @override
  final String? token;
  @override
  final String? refreshToken;
  @override
  final String? userUuid;
  @override
  final String? customerOrManufacturerUuid;
  @override
  final String? role;

  @override
  String toString() {
    return 'LoginEntity(token: $token, refreshToken: $refreshToken, userUuid: $userUuid, customerOrManufacturerUuid: $customerOrManufacturerUuid, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEntityImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.userUuid, userUuid) ||
                other.userUuid == userUuid) &&
            (identical(other.customerOrManufacturerUuid,
                    customerOrManufacturerUuid) ||
                other.customerOrManufacturerUuid ==
                    customerOrManufacturerUuid) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, refreshToken, userUuid,
      customerOrManufacturerUuid, role);

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEntityImplCopyWith<_$LoginEntityImpl> get copyWith =>
      __$$LoginEntityImplCopyWithImpl<_$LoginEntityImpl>(this, _$identity);
}

abstract class _LoginEntity implements LoginEntity {
  const factory _LoginEntity(
      {final String? token,
      final String? refreshToken,
      final String? userUuid,
      final String? customerOrManufacturerUuid,
      final String? role}) = _$LoginEntityImpl;

  @override
  String? get token;
  @override
  String? get refreshToken;
  @override
  String? get userUuid;
  @override
  String? get customerOrManufacturerUuid;
  @override
  String? get role;

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginEntityImplCopyWith<_$LoginEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
