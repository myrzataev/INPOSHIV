// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'size_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SizeModel _$SizeModelFromJson(Map<String, dynamic> json) {
  return _SizeModel.fromJson(json);
}

/// @nodoc
mixin _$SizeModel {
  int? get id => throw _privateConstructorUsedError;
  String? get sizeNameUs => throw _privateConstructorUsedError;
  String? get sizeNameRus => throw _privateConstructorUsedError;

  /// Serializes this SizeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SizeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SizeModelCopyWith<SizeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeModelCopyWith<$Res> {
  factory $SizeModelCopyWith(SizeModel value, $Res Function(SizeModel) then) =
      _$SizeModelCopyWithImpl<$Res, SizeModel>;
  @useResult
  $Res call({int? id, String? sizeNameUs, String? sizeNameRus});
}

/// @nodoc
class _$SizeModelCopyWithImpl<$Res, $Val extends SizeModel>
    implements $SizeModelCopyWith<$Res> {
  _$SizeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SizeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sizeNameUs = freezed,
    Object? sizeNameRus = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sizeNameUs: freezed == sizeNameUs
          ? _value.sizeNameUs
          : sizeNameUs // ignore: cast_nullable_to_non_nullable
              as String?,
      sizeNameRus: freezed == sizeNameRus
          ? _value.sizeNameRus
          : sizeNameRus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SizeModelImplCopyWith<$Res>
    implements $SizeModelCopyWith<$Res> {
  factory _$$SizeModelImplCopyWith(
          _$SizeModelImpl value, $Res Function(_$SizeModelImpl) then) =
      __$$SizeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? sizeNameUs, String? sizeNameRus});
}

/// @nodoc
class __$$SizeModelImplCopyWithImpl<$Res>
    extends _$SizeModelCopyWithImpl<$Res, _$SizeModelImpl>
    implements _$$SizeModelImplCopyWith<$Res> {
  __$$SizeModelImplCopyWithImpl(
      _$SizeModelImpl _value, $Res Function(_$SizeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SizeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sizeNameUs = freezed,
    Object? sizeNameRus = freezed,
  }) {
    return _then(_$SizeModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sizeNameUs: freezed == sizeNameUs
          ? _value.sizeNameUs
          : sizeNameUs // ignore: cast_nullable_to_non_nullable
              as String?,
      sizeNameRus: freezed == sizeNameRus
          ? _value.sizeNameRus
          : sizeNameRus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SizeModelImpl implements _SizeModel {
  const _$SizeModelImpl({this.id, this.sizeNameUs, this.sizeNameRus});

  factory _$SizeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SizeModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? sizeNameUs;
  @override
  final String? sizeNameRus;

  @override
  String toString() {
    return 'SizeModel(id: $id, sizeNameUs: $sizeNameUs, sizeNameRus: $sizeNameRus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sizeNameUs, sizeNameUs) ||
                other.sizeNameUs == sizeNameUs) &&
            (identical(other.sizeNameRus, sizeNameRus) ||
                other.sizeNameRus == sizeNameRus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, sizeNameUs, sizeNameRus);

  /// Create a copy of SizeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SizeModelImplCopyWith<_$SizeModelImpl> get copyWith =>
      __$$SizeModelImplCopyWithImpl<_$SizeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SizeModelImplToJson(
      this,
    );
  }
}

abstract class _SizeModel implements SizeModel {
  const factory _SizeModel(
      {final int? id,
      final String? sizeNameUs,
      final String? sizeNameRus}) = _$SizeModelImpl;

  factory _SizeModel.fromJson(Map<String, dynamic> json) =
      _$SizeModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get sizeNameUs;
  @override
  String? get sizeNameRus;

  /// Create a copy of SizeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SizeModelImplCopyWith<_$SizeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
