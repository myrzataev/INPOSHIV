// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_convert_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrencyConvertModel _$CurrencyConvertModelFromJson(Map<String, dynamic> json) {
  return _CurrencyConvertModel.fromJson(json);
}

/// @nodoc
mixin _$CurrencyConvertModel {
  String? get currencyCode => throw _privateConstructorUsedError;
  double? get rate => throw _privateConstructorUsedError;

  /// Serializes this CurrencyConvertModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrencyConvertModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrencyConvertModelCopyWith<CurrencyConvertModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyConvertModelCopyWith<$Res> {
  factory $CurrencyConvertModelCopyWith(CurrencyConvertModel value,
          $Res Function(CurrencyConvertModel) then) =
      _$CurrencyConvertModelCopyWithImpl<$Res, CurrencyConvertModel>;
  @useResult
  $Res call({String? currencyCode, double? rate});
}

/// @nodoc
class _$CurrencyConvertModelCopyWithImpl<$Res,
        $Val extends CurrencyConvertModel>
    implements $CurrencyConvertModelCopyWith<$Res> {
  _$CurrencyConvertModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrencyConvertModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyCode = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyConvertModelImplCopyWith<$Res>
    implements $CurrencyConvertModelCopyWith<$Res> {
  factory _$$CurrencyConvertModelImplCopyWith(_$CurrencyConvertModelImpl value,
          $Res Function(_$CurrencyConvertModelImpl) then) =
      __$$CurrencyConvertModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? currencyCode, double? rate});
}

/// @nodoc
class __$$CurrencyConvertModelImplCopyWithImpl<$Res>
    extends _$CurrencyConvertModelCopyWithImpl<$Res, _$CurrencyConvertModelImpl>
    implements _$$CurrencyConvertModelImplCopyWith<$Res> {
  __$$CurrencyConvertModelImplCopyWithImpl(_$CurrencyConvertModelImpl _value,
      $Res Function(_$CurrencyConvertModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrencyConvertModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyCode = freezed,
    Object? rate = freezed,
  }) {
    return _then(_$CurrencyConvertModelImpl(
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrencyConvertModelImpl implements _CurrencyConvertModel {
  const _$CurrencyConvertModelImpl({this.currencyCode, this.rate});

  factory _$CurrencyConvertModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyConvertModelImplFromJson(json);

  @override
  final String? currencyCode;
  @override
  final double? rate;

  @override
  String toString() {
    return 'CurrencyConvertModel(currencyCode: $currencyCode, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyConvertModelImpl &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currencyCode, rate);

  /// Create a copy of CurrencyConvertModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyConvertModelImplCopyWith<_$CurrencyConvertModelImpl>
      get copyWith =>
          __$$CurrencyConvertModelImplCopyWithImpl<_$CurrencyConvertModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencyConvertModelImplToJson(
      this,
    );
  }
}

abstract class _CurrencyConvertModel implements CurrencyConvertModel {
  const factory _CurrencyConvertModel(
      {final String? currencyCode,
      final double? rate}) = _$CurrencyConvertModelImpl;

  factory _CurrencyConvertModel.fromJson(Map<String, dynamic> json) =
      _$CurrencyConvertModelImpl.fromJson;

  @override
  String? get currencyCode;
  @override
  double? get rate;

  /// Create a copy of CurrencyConvertModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrencyConvertModelImplCopyWith<_$CurrencyConvertModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
