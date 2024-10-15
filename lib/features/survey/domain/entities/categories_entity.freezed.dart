// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoriesEntity {
  String? get slug => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  List<Subcategory>? get subcategories => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesEntityCopyWith<CategoriesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEntityCopyWith<$Res> {
  factory $CategoriesEntityCopyWith(
          CategoriesEntity value, $Res Function(CategoriesEntity) then) =
      _$CategoriesEntityCopyWithImpl<$Res, CategoriesEntity>;
  @useResult
  $Res call(
      {String? slug, String? name, int? id, List<Subcategory>? subcategories});
}

/// @nodoc
class _$CategoriesEntityCopyWithImpl<$Res, $Val extends CategoriesEntity>
    implements $CategoriesEntityCopyWith<$Res> {
  _$CategoriesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? name = freezed,
    Object? id = freezed,
    Object? subcategories = freezed,
  }) {
    return _then(_value.copyWith(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      subcategories: freezed == subcategories
          ? _value.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<Subcategory>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesEntityImplCopyWith<$Res>
    implements $CategoriesEntityCopyWith<$Res> {
  factory _$$CategoriesEntityImplCopyWith(_$CategoriesEntityImpl value,
          $Res Function(_$CategoriesEntityImpl) then) =
      __$$CategoriesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? slug, String? name, int? id, List<Subcategory>? subcategories});
}

/// @nodoc
class __$$CategoriesEntityImplCopyWithImpl<$Res>
    extends _$CategoriesEntityCopyWithImpl<$Res, _$CategoriesEntityImpl>
    implements _$$CategoriesEntityImplCopyWith<$Res> {
  __$$CategoriesEntityImplCopyWithImpl(_$CategoriesEntityImpl _value,
      $Res Function(_$CategoriesEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? name = freezed,
    Object? id = freezed,
    Object? subcategories = freezed,
  }) {
    return _then(_$CategoriesEntityImpl(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      subcategories: freezed == subcategories
          ? _value._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<Subcategory>?,
    ));
  }
}

/// @nodoc

class _$CategoriesEntityImpl implements _CategoriesEntity {
  const _$CategoriesEntityImpl(
      {this.slug, this.name, this.id, final List<Subcategory>? subcategories})
      : _subcategories = subcategories;

  @override
  final String? slug;
  @override
  final String? name;
  @override
  final int? id;
  final List<Subcategory>? _subcategories;
  @override
  List<Subcategory>? get subcategories {
    final value = _subcategories;
    if (value == null) return null;
    if (_subcategories is EqualUnmodifiableListView) return _subcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoriesEntity(slug: $slug, name: $name, id: $id, subcategories: $subcategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesEntityImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slug, name, id,
      const DeepCollectionEquality().hash(_subcategories));

  /// Create a copy of CategoriesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesEntityImplCopyWith<_$CategoriesEntityImpl> get copyWith =>
      __$$CategoriesEntityImplCopyWithImpl<_$CategoriesEntityImpl>(
          this, _$identity);
}

abstract class _CategoriesEntity implements CategoriesEntity {
  const factory _CategoriesEntity(
      {final String? slug,
      final String? name,
      final int? id,
      final List<Subcategory>? subcategories}) = _$CategoriesEntityImpl;

  @override
  String? get slug;
  @override
  String? get name;
  @override
  int? get id;
  @override
  List<Subcategory>? get subcategories;

  /// Create a copy of CategoriesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesEntityImplCopyWith<_$CategoriesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Subcategory {
  String? get slug => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubcategoryCopyWith<Subcategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubcategoryCopyWith<$Res> {
  factory $SubcategoryCopyWith(
          Subcategory value, $Res Function(Subcategory) then) =
      _$SubcategoryCopyWithImpl<$Res, Subcategory>;
  @useResult
  $Res call({String? slug, String? name, int? id});
}

/// @nodoc
class _$SubcategoryCopyWithImpl<$Res, $Val extends Subcategory>
    implements $SubcategoryCopyWith<$Res> {
  _$SubcategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubcategoryImplCopyWith<$Res>
    implements $SubcategoryCopyWith<$Res> {
  factory _$$SubcategoryImplCopyWith(
          _$SubcategoryImpl value, $Res Function(_$SubcategoryImpl) then) =
      __$$SubcategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? slug, String? name, int? id});
}

/// @nodoc
class __$$SubcategoryImplCopyWithImpl<$Res>
    extends _$SubcategoryCopyWithImpl<$Res, _$SubcategoryImpl>
    implements _$$SubcategoryImplCopyWith<$Res> {
  __$$SubcategoryImplCopyWithImpl(
      _$SubcategoryImpl _value, $Res Function(_$SubcategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_$SubcategoryImpl(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SubcategoryImpl implements _Subcategory {
  const _$SubcategoryImpl({this.slug, this.name, this.id});

  @override
  final String? slug;
  @override
  final String? name;
  @override
  final int? id;

  @override
  String toString() {
    return 'Subcategory(slug: $slug, name: $name, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubcategoryImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slug, name, id);

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubcategoryImplCopyWith<_$SubcategoryImpl> get copyWith =>
      __$$SubcategoryImplCopyWithImpl<_$SubcategoryImpl>(this, _$identity);
}

abstract class _Subcategory implements Subcategory {
  const factory _Subcategory(
      {final String? slug,
      final String? name,
      final int? id}) = _$SubcategoryImpl;

  @override
  String? get slug;
  @override
  String? get name;
  @override
  int? get id;

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubcategoryImplCopyWith<_$SubcategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
