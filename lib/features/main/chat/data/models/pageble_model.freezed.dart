// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pageble_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PagebleModel _$PagebleModelFromJson(Map<String, dynamic> json) {
  return _PagebleModel.fromJson(json);
}

/// @nodoc
mixin _$PagebleModel {
  int? get page => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  List<String>? get sort => throw _privateConstructorUsedError;

  /// Serializes this PagebleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PagebleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PagebleModelCopyWith<PagebleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagebleModelCopyWith<$Res> {
  factory $PagebleModelCopyWith(
          PagebleModel value, $Res Function(PagebleModel) then) =
      _$PagebleModelCopyWithImpl<$Res, PagebleModel>;
  @useResult
  $Res call({int? page, int? size, List<String>? sort});
}

/// @nodoc
class _$PagebleModelCopyWithImpl<$Res, $Val extends PagebleModel>
    implements $PagebleModelCopyWith<$Res> {
  _$PagebleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PagebleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? size = freezed,
    Object? sort = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PagebleModelImplCopyWith<$Res>
    implements $PagebleModelCopyWith<$Res> {
  factory _$$PagebleModelImplCopyWith(
          _$PagebleModelImpl value, $Res Function(_$PagebleModelImpl) then) =
      __$$PagebleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? page, int? size, List<String>? sort});
}

/// @nodoc
class __$$PagebleModelImplCopyWithImpl<$Res>
    extends _$PagebleModelCopyWithImpl<$Res, _$PagebleModelImpl>
    implements _$$PagebleModelImplCopyWith<$Res> {
  __$$PagebleModelImplCopyWithImpl(
      _$PagebleModelImpl _value, $Res Function(_$PagebleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PagebleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? size = freezed,
    Object? sort = freezed,
  }) {
    return _then(_$PagebleModelImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: freezed == sort
          ? _value._sort
          : sort // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PagebleModelImpl implements _PagebleModel {
  const _$PagebleModelImpl({this.page, this.size, final List<String>? sort})
      : _sort = sort;

  factory _$PagebleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PagebleModelImplFromJson(json);

  @override
  final int? page;
  @override
  final int? size;
  final List<String>? _sort;
  @override
  List<String>? get sort {
    final value = _sort;
    if (value == null) return null;
    if (_sort is EqualUnmodifiableListView) return _sort;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PagebleModel(page: $page, size: $size, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagebleModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other._sort, _sort));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, page, size, const DeepCollectionEquality().hash(_sort));

  /// Create a copy of PagebleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PagebleModelImplCopyWith<_$PagebleModelImpl> get copyWith =>
      __$$PagebleModelImplCopyWithImpl<_$PagebleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PagebleModelImplToJson(
      this,
    );
  }
}

abstract class _PagebleModel implements PagebleModel {
  const factory _PagebleModel(
      {final int? page,
      final int? size,
      final List<String>? sort}) = _$PagebleModelImpl;

  factory _PagebleModel.fromJson(Map<String, dynamic> json) =
      _$PagebleModelImpl.fromJson;

  @override
  int? get page;
  @override
  int? get size;
  @override
  List<String>? get sort;

  /// Create a copy of PagebleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PagebleModelImplCopyWith<_$PagebleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
