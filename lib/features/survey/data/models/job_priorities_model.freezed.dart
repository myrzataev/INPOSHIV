// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_priorities_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobPrioritiesModel _$JobPrioritiesModelFromJson(Map<String, dynamic> json) {
  return _JobPrioritiesModel.fromJson(json);
}

/// @nodoc
mixin _$JobPrioritiesModel {
  int? get id => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this JobPrioritiesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobPrioritiesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobPrioritiesModelCopyWith<JobPrioritiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobPrioritiesModelCopyWith<$Res> {
  factory $JobPrioritiesModelCopyWith(
          JobPrioritiesModel value, $Res Function(JobPrioritiesModel) then) =
      _$JobPrioritiesModelCopyWithImpl<$Res, JobPrioritiesModel>;
  @useResult
  $Res call({int? id, String? slug, String? name});
}

/// @nodoc
class _$JobPrioritiesModelCopyWithImpl<$Res, $Val extends JobPrioritiesModel>
    implements $JobPrioritiesModelCopyWith<$Res> {
  _$JobPrioritiesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobPrioritiesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobPrioritiesModelImplCopyWith<$Res>
    implements $JobPrioritiesModelCopyWith<$Res> {
  factory _$$JobPrioritiesModelImplCopyWith(_$JobPrioritiesModelImpl value,
          $Res Function(_$JobPrioritiesModelImpl) then) =
      __$$JobPrioritiesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? slug, String? name});
}

/// @nodoc
class __$$JobPrioritiesModelImplCopyWithImpl<$Res>
    extends _$JobPrioritiesModelCopyWithImpl<$Res, _$JobPrioritiesModelImpl>
    implements _$$JobPrioritiesModelImplCopyWith<$Res> {
  __$$JobPrioritiesModelImplCopyWithImpl(_$JobPrioritiesModelImpl _value,
      $Res Function(_$JobPrioritiesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobPrioritiesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? name = freezed,
  }) {
    return _then(_$JobPrioritiesModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobPrioritiesModelImpl implements _JobPrioritiesModel {
  const _$JobPrioritiesModelImpl({this.id, this.slug, this.name});

  factory _$JobPrioritiesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobPrioritiesModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? slug;
  @override
  final String? name;

  @override
  String toString() {
    return 'JobPrioritiesModel(id: $id, slug: $slug, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobPrioritiesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, slug, name);

  /// Create a copy of JobPrioritiesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobPrioritiesModelImplCopyWith<_$JobPrioritiesModelImpl> get copyWith =>
      __$$JobPrioritiesModelImplCopyWithImpl<_$JobPrioritiesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobPrioritiesModelImplToJson(
      this,
    );
  }
}

abstract class _JobPrioritiesModel implements JobPrioritiesModel {
  const factory _JobPrioritiesModel(
      {final int? id,
      final String? slug,
      final String? name}) = _$JobPrioritiesModelImpl;

  factory _JobPrioritiesModel.fromJson(Map<String, dynamic> json) =
      _$JobPrioritiesModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get slug;
  @override
  String? get name;

  /// Create a copy of JobPrioritiesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobPrioritiesModelImplCopyWith<_$JobPrioritiesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
