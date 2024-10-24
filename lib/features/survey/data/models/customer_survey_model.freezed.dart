// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_survey_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerSurveyModel _$CustomerSurveyModelFromJson(Map<String, dynamic> json) {
  return _CustomerSurveyModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerSurveyModel {
  List<ClothingCategoriesList>? get clothingCategoriesList =>
      throw _privateConstructorUsedError;
  int? get monthSalesVolume => throw _privateConstructorUsedError;
  List<ClothingCategoriesList>? get customerPrioritiesList =>
      throw _privateConstructorUsedError;

  /// Serializes this CustomerSurveyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerSurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerSurveyModelCopyWith<CustomerSurveyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerSurveyModelCopyWith<$Res> {
  factory $CustomerSurveyModelCopyWith(
          CustomerSurveyModel value, $Res Function(CustomerSurveyModel) then) =
      _$CustomerSurveyModelCopyWithImpl<$Res, CustomerSurveyModel>;
  @useResult
  $Res call(
      {List<ClothingCategoriesList>? clothingCategoriesList,
      int? monthSalesVolume,
      List<ClothingCategoriesList>? customerPrioritiesList});
}

/// @nodoc
class _$CustomerSurveyModelCopyWithImpl<$Res, $Val extends CustomerSurveyModel>
    implements $CustomerSurveyModelCopyWith<$Res> {
  _$CustomerSurveyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerSurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clothingCategoriesList = freezed,
    Object? monthSalesVolume = freezed,
    Object? customerPrioritiesList = freezed,
  }) {
    return _then(_value.copyWith(
      clothingCategoriesList: freezed == clothingCategoriesList
          ? _value.clothingCategoriesList
          : clothingCategoriesList // ignore: cast_nullable_to_non_nullable
              as List<ClothingCategoriesList>?,
      monthSalesVolume: freezed == monthSalesVolume
          ? _value.monthSalesVolume
          : monthSalesVolume // ignore: cast_nullable_to_non_nullable
              as int?,
      customerPrioritiesList: freezed == customerPrioritiesList
          ? _value.customerPrioritiesList
          : customerPrioritiesList // ignore: cast_nullable_to_non_nullable
              as List<ClothingCategoriesList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerSurveyModelImplCopyWith<$Res>
    implements $CustomerSurveyModelCopyWith<$Res> {
  factory _$$CustomerSurveyModelImplCopyWith(_$CustomerSurveyModelImpl value,
          $Res Function(_$CustomerSurveyModelImpl) then) =
      __$$CustomerSurveyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ClothingCategoriesList>? clothingCategoriesList,
      int? monthSalesVolume,
      List<ClothingCategoriesList>? customerPrioritiesList});
}

/// @nodoc
class __$$CustomerSurveyModelImplCopyWithImpl<$Res>
    extends _$CustomerSurveyModelCopyWithImpl<$Res, _$CustomerSurveyModelImpl>
    implements _$$CustomerSurveyModelImplCopyWith<$Res> {
  __$$CustomerSurveyModelImplCopyWithImpl(_$CustomerSurveyModelImpl _value,
      $Res Function(_$CustomerSurveyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerSurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clothingCategoriesList = freezed,
    Object? monthSalesVolume = freezed,
    Object? customerPrioritiesList = freezed,
  }) {
    return _then(_$CustomerSurveyModelImpl(
      clothingCategoriesList: freezed == clothingCategoriesList
          ? _value._clothingCategoriesList
          : clothingCategoriesList // ignore: cast_nullable_to_non_nullable
              as List<ClothingCategoriesList>?,
      monthSalesVolume: freezed == monthSalesVolume
          ? _value.monthSalesVolume
          : monthSalesVolume // ignore: cast_nullable_to_non_nullable
              as int?,
      customerPrioritiesList: freezed == customerPrioritiesList
          ? _value._customerPrioritiesList
          : customerPrioritiesList // ignore: cast_nullable_to_non_nullable
              as List<ClothingCategoriesList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerSurveyModelImpl implements _CustomerSurveyModel {
  const _$CustomerSurveyModelImpl(
      {final List<ClothingCategoriesList>? clothingCategoriesList,
      this.monthSalesVolume,
      final List<ClothingCategoriesList>? customerPrioritiesList})
      : _clothingCategoriesList = clothingCategoriesList,
        _customerPrioritiesList = customerPrioritiesList;

  factory _$CustomerSurveyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerSurveyModelImplFromJson(json);

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
  final int? monthSalesVolume;
  final List<ClothingCategoriesList>? _customerPrioritiesList;
  @override
  List<ClothingCategoriesList>? get customerPrioritiesList {
    final value = _customerPrioritiesList;
    if (value == null) return null;
    if (_customerPrioritiesList is EqualUnmodifiableListView)
      return _customerPrioritiesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CustomerSurveyModel(clothingCategoriesList: $clothingCategoriesList, monthSalesVolume: $monthSalesVolume, customerPrioritiesList: $customerPrioritiesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerSurveyModelImpl &&
            const DeepCollectionEquality().equals(
                other._clothingCategoriesList, _clothingCategoriesList) &&
            (identical(other.monthSalesVolume, monthSalesVolume) ||
                other.monthSalesVolume == monthSalesVolume) &&
            const DeepCollectionEquality().equals(
                other._customerPrioritiesList, _customerPrioritiesList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_clothingCategoriesList),
      monthSalesVolume,
      const DeepCollectionEquality().hash(_customerPrioritiesList));

  /// Create a copy of CustomerSurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerSurveyModelImplCopyWith<_$CustomerSurveyModelImpl> get copyWith =>
      __$$CustomerSurveyModelImplCopyWithImpl<_$CustomerSurveyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerSurveyModelImplToJson(
      this,
    );
  }
}

abstract class _CustomerSurveyModel implements CustomerSurveyModel {
  const factory _CustomerSurveyModel(
          {final List<ClothingCategoriesList>? clothingCategoriesList,
          final int? monthSalesVolume,
          final List<ClothingCategoriesList>? customerPrioritiesList}) =
      _$CustomerSurveyModelImpl;

  factory _CustomerSurveyModel.fromJson(Map<String, dynamic> json) =
      _$CustomerSurveyModelImpl.fromJson;

  @override
  List<ClothingCategoriesList>? get clothingCategoriesList;
  @override
  int? get monthSalesVolume;
  @override
  List<ClothingCategoriesList>? get customerPrioritiesList;

  /// Create a copy of CustomerSurveyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerSurveyModelImplCopyWith<_$CustomerSurveyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
