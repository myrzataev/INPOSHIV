// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manufacturer_survey_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ManufacturerSurveyModel _$ManufacturerSurveyModelFromJson(
    Map<String, dynamic> json) {
  return _ManufacturerSurveyModel.fromJson(json);
}

/// @nodoc
mixin _$ManufacturerSurveyModel {
  List<ClothingCategoriesList>? get clothingCategoriesList =>
      throw _privateConstructorUsedError;
  int? get monthProductsVolume => throw _privateConstructorUsedError;
  List<ClothingCategoriesList>? get manufacturerPrioritiesList =>
      throw _privateConstructorUsedError;

  /// Serializes this ManufacturerSurveyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManufacturerSurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManufacturerSurveyModelCopyWith<ManufacturerSurveyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManufacturerSurveyModelCopyWith<$Res> {
  factory $ManufacturerSurveyModelCopyWith(ManufacturerSurveyModel value,
          $Res Function(ManufacturerSurveyModel) then) =
      _$ManufacturerSurveyModelCopyWithImpl<$Res, ManufacturerSurveyModel>;
  @useResult
  $Res call(
      {List<ClothingCategoriesList>? clothingCategoriesList,
      int? monthProductsVolume,
      List<ClothingCategoriesList>? manufacturerPrioritiesList});
}

/// @nodoc
class _$ManufacturerSurveyModelCopyWithImpl<$Res,
        $Val extends ManufacturerSurveyModel>
    implements $ManufacturerSurveyModelCopyWith<$Res> {
  _$ManufacturerSurveyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManufacturerSurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clothingCategoriesList = freezed,
    Object? monthProductsVolume = freezed,
    Object? manufacturerPrioritiesList = freezed,
  }) {
    return _then(_value.copyWith(
      clothingCategoriesList: freezed == clothingCategoriesList
          ? _value.clothingCategoriesList
          : clothingCategoriesList // ignore: cast_nullable_to_non_nullable
              as List<ClothingCategoriesList>?,
      monthProductsVolume: freezed == monthProductsVolume
          ? _value.monthProductsVolume
          : monthProductsVolume // ignore: cast_nullable_to_non_nullable
              as int?,
      manufacturerPrioritiesList: freezed == manufacturerPrioritiesList
          ? _value.manufacturerPrioritiesList
          : manufacturerPrioritiesList // ignore: cast_nullable_to_non_nullable
              as List<ClothingCategoriesList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManufacturerSurveyModelImplCopyWith<$Res>
    implements $ManufacturerSurveyModelCopyWith<$Res> {
  factory _$$ManufacturerSurveyModelImplCopyWith(
          _$ManufacturerSurveyModelImpl value,
          $Res Function(_$ManufacturerSurveyModelImpl) then) =
      __$$ManufacturerSurveyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ClothingCategoriesList>? clothingCategoriesList,
      int? monthProductsVolume,
      List<ClothingCategoriesList>? manufacturerPrioritiesList});
}

/// @nodoc
class __$$ManufacturerSurveyModelImplCopyWithImpl<$Res>
    extends _$ManufacturerSurveyModelCopyWithImpl<$Res,
        _$ManufacturerSurveyModelImpl>
    implements _$$ManufacturerSurveyModelImplCopyWith<$Res> {
  __$$ManufacturerSurveyModelImplCopyWithImpl(
      _$ManufacturerSurveyModelImpl _value,
      $Res Function(_$ManufacturerSurveyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManufacturerSurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clothingCategoriesList = freezed,
    Object? monthProductsVolume = freezed,
    Object? manufacturerPrioritiesList = freezed,
  }) {
    return _then(_$ManufacturerSurveyModelImpl(
      clothingCategoriesList: freezed == clothingCategoriesList
          ? _value._clothingCategoriesList
          : clothingCategoriesList // ignore: cast_nullable_to_non_nullable
              as List<ClothingCategoriesList>?,
      monthProductsVolume: freezed == monthProductsVolume
          ? _value.monthProductsVolume
          : monthProductsVolume // ignore: cast_nullable_to_non_nullable
              as int?,
      manufacturerPrioritiesList: freezed == manufacturerPrioritiesList
          ? _value._manufacturerPrioritiesList
          : manufacturerPrioritiesList // ignore: cast_nullable_to_non_nullable
              as List<ClothingCategoriesList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManufacturerSurveyModelImpl implements _ManufacturerSurveyModel {
  const _$ManufacturerSurveyModelImpl(
      {final List<ClothingCategoriesList>? clothingCategoriesList,
      this.monthProductsVolume,
      final List<ClothingCategoriesList>? manufacturerPrioritiesList})
      : _clothingCategoriesList = clothingCategoriesList,
        _manufacturerPrioritiesList = manufacturerPrioritiesList;

  factory _$ManufacturerSurveyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManufacturerSurveyModelImplFromJson(json);

  final List<ClothingCategoriesList>? _clothingCategoriesList;
  @override
  List<ClothingCategoriesList>? get clothingCategoriesList {
    final value = _clothingCategoriesList;
    if (value == null) return null;
    if (_clothingCategoriesList is EqualUnmodifiableListView)
      return _clothingCategoriesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? monthProductsVolume;
  final List<ClothingCategoriesList>? _manufacturerPrioritiesList;
  @override
  List<ClothingCategoriesList>? get manufacturerPrioritiesList {
    final value = _manufacturerPrioritiesList;
    if (value == null) return null;
    if (_manufacturerPrioritiesList is EqualUnmodifiableListView)
      return _manufacturerPrioritiesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ManufacturerSurveyModel(clothingCategoriesList: $clothingCategoriesList, monthProductsVolume: $monthProductsVolume, manufacturerPrioritiesList: $manufacturerPrioritiesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManufacturerSurveyModelImpl &&
            const DeepCollectionEquality().equals(
                other._clothingCategoriesList, _clothingCategoriesList) &&
            (identical(other.monthProductsVolume, monthProductsVolume) ||
                other.monthProductsVolume == monthProductsVolume) &&
            const DeepCollectionEquality().equals(
                other._manufacturerPrioritiesList,
                _manufacturerPrioritiesList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_clothingCategoriesList),
      monthProductsVolume,
      const DeepCollectionEquality().hash(_manufacturerPrioritiesList));

  /// Create a copy of ManufacturerSurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManufacturerSurveyModelImplCopyWith<_$ManufacturerSurveyModelImpl>
      get copyWith => __$$ManufacturerSurveyModelImplCopyWithImpl<
          _$ManufacturerSurveyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManufacturerSurveyModelImplToJson(
      this,
    );
  }
}

abstract class _ManufacturerSurveyModel implements ManufacturerSurveyModel {
  const factory _ManufacturerSurveyModel(
          {final List<ClothingCategoriesList>? clothingCategoriesList,
          final int? monthProductsVolume,
          final List<ClothingCategoriesList>? manufacturerPrioritiesList}) =
      _$ManufacturerSurveyModelImpl;

  factory _ManufacturerSurveyModel.fromJson(Map<String, dynamic> json) =
      _$ManufacturerSurveyModelImpl.fromJson;

  @override
  List<ClothingCategoriesList>? get clothingCategoriesList;
  @override
  int? get monthProductsVolume;
  @override
  List<ClothingCategoriesList>? get manufacturerPrioritiesList;

  /// Create a copy of ManufacturerSurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManufacturerSurveyModelImplCopyWith<_$ManufacturerSurveyModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClothingCategoriesList _$ClothingCategoriesListFromJson(
    Map<String, dynamic> json) {
  return _ClothingCategoriesList.fromJson(json);
}

/// @nodoc
mixin _$ClothingCategoriesList {
  int? get id => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<ClothingCategoriesList>? get subcategories =>
      throw _privateConstructorUsedError;

  /// Serializes this ClothingCategoriesList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClothingCategoriesList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClothingCategoriesListCopyWith<ClothingCategoriesList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClothingCategoriesListCopyWith<$Res> {
  factory $ClothingCategoriesListCopyWith(ClothingCategoriesList value,
          $Res Function(ClothingCategoriesList) then) =
      _$ClothingCategoriesListCopyWithImpl<$Res, ClothingCategoriesList>;
  @useResult
  $Res call(
      {int? id,
      String? slug,
      String? name,
      List<ClothingCategoriesList>? subcategories});
}

/// @nodoc
class _$ClothingCategoriesListCopyWithImpl<$Res,
        $Val extends ClothingCategoriesList>
    implements $ClothingCategoriesListCopyWith<$Res> {
  _$ClothingCategoriesListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClothingCategoriesList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? name = freezed,
    Object? subcategories = freezed,
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
      subcategories: freezed == subcategories
          ? _value.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<ClothingCategoriesList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClothingCategoriesListImplCopyWith<$Res>
    implements $ClothingCategoriesListCopyWith<$Res> {
  factory _$$ClothingCategoriesListImplCopyWith(
          _$ClothingCategoriesListImpl value,
          $Res Function(_$ClothingCategoriesListImpl) then) =
      __$$ClothingCategoriesListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? slug,
      String? name,
      List<ClothingCategoriesList>? subcategories});
}

/// @nodoc
class __$$ClothingCategoriesListImplCopyWithImpl<$Res>
    extends _$ClothingCategoriesListCopyWithImpl<$Res,
        _$ClothingCategoriesListImpl>
    implements _$$ClothingCategoriesListImplCopyWith<$Res> {
  __$$ClothingCategoriesListImplCopyWithImpl(
      _$ClothingCategoriesListImpl _value,
      $Res Function(_$ClothingCategoriesListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClothingCategoriesList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? name = freezed,
    Object? subcategories = freezed,
  }) {
    return _then(_$ClothingCategoriesListImpl(
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
      subcategories: freezed == subcategories
          ? _value._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<ClothingCategoriesList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClothingCategoriesListImpl implements _ClothingCategoriesList {
  const _$ClothingCategoriesListImpl(
      {this.id,
      this.slug,
      this.name,
      final List<ClothingCategoriesList>? subcategories})
      : _subcategories = subcategories;

  factory _$ClothingCategoriesListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClothingCategoriesListImplFromJson(json);

  @override
  final int? id;
  @override
  final String? slug;
  @override
  final String? name;
  final List<ClothingCategoriesList>? _subcategories;
  @override
  List<ClothingCategoriesList>? get subcategories {
    final value = _subcategories;
    if (value == null) return null;
    if (_subcategories is EqualUnmodifiableListView) return _subcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ClothingCategoriesList(id: $id, slug: $slug, name: $name, subcategories: $subcategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClothingCategoriesListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, slug, name,
      const DeepCollectionEquality().hash(_subcategories));

  /// Create a copy of ClothingCategoriesList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClothingCategoriesListImplCopyWith<_$ClothingCategoriesListImpl>
      get copyWith => __$$ClothingCategoriesListImplCopyWithImpl<
          _$ClothingCategoriesListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClothingCategoriesListImplToJson(
      this,
    );
  }
}

abstract class _ClothingCategoriesList implements ClothingCategoriesList {
  const factory _ClothingCategoriesList(
          {final int? id,
          final String? slug,
          final String? name,
          final List<ClothingCategoriesList>? subcategories}) =
      _$ClothingCategoriesListImpl;

  factory _ClothingCategoriesList.fromJson(Map<String, dynamic> json) =
      _$ClothingCategoriesListImpl.fromJson;

  @override
  int? get id;
  @override
  String? get slug;
  @override
  String? get name;
  @override
  List<ClothingCategoriesList>? get subcategories;

  /// Create a copy of ClothingCategoriesList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClothingCategoriesListImplCopyWith<_$ClothingCategoriesListImpl>
      get copyWith => throw _privateConstructorUsedError;
}
