// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetCategoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategories,
    required TResult Function(String slug) getSpecificCategory,
    required TResult Function() getProductCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategories,
    TResult? Function(String slug)? getSpecificCategory,
    TResult? Function()? getProductCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategories,
    TResult Function(String slug)? getSpecificCategory,
    TResult Function()? getProductCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getAllCategories,
    required TResult Function(_GetSpecificCategory value) getSpecificCategory,
    required TResult Function(_GetProductCategory value) getProductCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getAllCategories,
    TResult? Function(_GetSpecificCategory value)? getSpecificCategory,
    TResult? Function(_GetProductCategory value)? getProductCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getAllCategories,
    TResult Function(_GetSpecificCategory value)? getSpecificCategory,
    TResult Function(_GetProductCategory value)? getProductCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCategoriesEventCopyWith<$Res> {
  factory $GetCategoriesEventCopyWith(
          GetCategoriesEvent value, $Res Function(GetCategoriesEvent) then) =
      _$GetCategoriesEventCopyWithImpl<$Res, GetCategoriesEvent>;
}

/// @nodoc
class _$GetCategoriesEventCopyWithImpl<$Res, $Val extends GetCategoriesEvent>
    implements $GetCategoriesEventCopyWith<$Res> {
  _$GetCategoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$GetCategoriesEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'GetCategoriesEvent.getAllCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategories,
    required TResult Function(String slug) getSpecificCategory,
    required TResult Function() getProductCategory,
  }) {
    return getAllCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategories,
    TResult? Function(String slug)? getSpecificCategory,
    TResult? Function()? getProductCategory,
  }) {
    return getAllCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategories,
    TResult Function(String slug)? getSpecificCategory,
    TResult Function()? getProductCategory,
    required TResult orElse(),
  }) {
    if (getAllCategories != null) {
      return getAllCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getAllCategories,
    required TResult Function(_GetSpecificCategory value) getSpecificCategory,
    required TResult Function(_GetProductCategory value) getProductCategory,
  }) {
    return getAllCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getAllCategories,
    TResult? Function(_GetSpecificCategory value)? getSpecificCategory,
    TResult? Function(_GetProductCategory value)? getProductCategory,
  }) {
    return getAllCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getAllCategories,
    TResult Function(_GetSpecificCategory value)? getSpecificCategory,
    TResult Function(_GetProductCategory value)? getProductCategory,
    required TResult orElse(),
  }) {
    if (getAllCategories != null) {
      return getAllCategories(this);
    }
    return orElse();
  }
}

abstract class _Started implements GetCategoriesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetSpecificCategoryImplCopyWith<$Res> {
  factory _$$GetSpecificCategoryImplCopyWith(_$GetSpecificCategoryImpl value,
          $Res Function(_$GetSpecificCategoryImpl) then) =
      __$$GetSpecificCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String slug});
}

/// @nodoc
class __$$GetSpecificCategoryImplCopyWithImpl<$Res>
    extends _$GetCategoriesEventCopyWithImpl<$Res, _$GetSpecificCategoryImpl>
    implements _$$GetSpecificCategoryImplCopyWith<$Res> {
  __$$GetSpecificCategoryImplCopyWithImpl(_$GetSpecificCategoryImpl _value,
      $Res Function(_$GetSpecificCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
  }) {
    return _then(_$GetSpecificCategoryImpl(
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSpecificCategoryImpl implements _GetSpecificCategory {
  const _$GetSpecificCategoryImpl({required this.slug});

  @override
  final String slug;

  @override
  String toString() {
    return 'GetCategoriesEvent.getSpecificCategory(slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSpecificCategoryImpl &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slug);

  /// Create a copy of GetCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSpecificCategoryImplCopyWith<_$GetSpecificCategoryImpl> get copyWith =>
      __$$GetSpecificCategoryImplCopyWithImpl<_$GetSpecificCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategories,
    required TResult Function(String slug) getSpecificCategory,
    required TResult Function() getProductCategory,
  }) {
    return getSpecificCategory(slug);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategories,
    TResult? Function(String slug)? getSpecificCategory,
    TResult? Function()? getProductCategory,
  }) {
    return getSpecificCategory?.call(slug);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategories,
    TResult Function(String slug)? getSpecificCategory,
    TResult Function()? getProductCategory,
    required TResult orElse(),
  }) {
    if (getSpecificCategory != null) {
      return getSpecificCategory(slug);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getAllCategories,
    required TResult Function(_GetSpecificCategory value) getSpecificCategory,
    required TResult Function(_GetProductCategory value) getProductCategory,
  }) {
    return getSpecificCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getAllCategories,
    TResult? Function(_GetSpecificCategory value)? getSpecificCategory,
    TResult? Function(_GetProductCategory value)? getProductCategory,
  }) {
    return getSpecificCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getAllCategories,
    TResult Function(_GetSpecificCategory value)? getSpecificCategory,
    TResult Function(_GetProductCategory value)? getProductCategory,
    required TResult orElse(),
  }) {
    if (getSpecificCategory != null) {
      return getSpecificCategory(this);
    }
    return orElse();
  }
}

abstract class _GetSpecificCategory implements GetCategoriesEvent {
  const factory _GetSpecificCategory({required final String slug}) =
      _$GetSpecificCategoryImpl;

  String get slug;

  /// Create a copy of GetCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSpecificCategoryImplCopyWith<_$GetSpecificCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductCategoryImplCopyWith<$Res> {
  factory _$$GetProductCategoryImplCopyWith(_$GetProductCategoryImpl value,
          $Res Function(_$GetProductCategoryImpl) then) =
      __$$GetProductCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductCategoryImplCopyWithImpl<$Res>
    extends _$GetCategoriesEventCopyWithImpl<$Res, _$GetProductCategoryImpl>
    implements _$$GetProductCategoryImplCopyWith<$Res> {
  __$$GetProductCategoryImplCopyWithImpl(_$GetProductCategoryImpl _value,
      $Res Function(_$GetProductCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetProductCategoryImpl implements _GetProductCategory {
  const _$GetProductCategoryImpl();

  @override
  String toString() {
    return 'GetCategoriesEvent.getProductCategory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProductCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategories,
    required TResult Function(String slug) getSpecificCategory,
    required TResult Function() getProductCategory,
  }) {
    return getProductCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategories,
    TResult? Function(String slug)? getSpecificCategory,
    TResult? Function()? getProductCategory,
  }) {
    return getProductCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategories,
    TResult Function(String slug)? getSpecificCategory,
    TResult Function()? getProductCategory,
    required TResult orElse(),
  }) {
    if (getProductCategory != null) {
      return getProductCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getAllCategories,
    required TResult Function(_GetSpecificCategory value) getSpecificCategory,
    required TResult Function(_GetProductCategory value) getProductCategory,
  }) {
    return getProductCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getAllCategories,
    TResult? Function(_GetSpecificCategory value)? getSpecificCategory,
    TResult? Function(_GetProductCategory value)? getProductCategory,
  }) {
    return getProductCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getAllCategories,
    TResult Function(_GetSpecificCategory value)? getSpecificCategory,
    TResult Function(_GetProductCategory value)? getProductCategory,
    required TResult orElse(),
  }) {
    if (getProductCategory != null) {
      return getProductCategory(this);
    }
    return orElse();
  }
}

abstract class _GetProductCategory implements GetCategoriesEvent {
  const factory _GetProductCategory() = _$GetProductCategoryImpl;
}

/// @nodoc
mixin _$GetCategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoriesEntity> entity) loaded,
    required TResult Function(List<Subcategory?> entity) specificCategoryLoaded,
    required TResult Function(String errorText) errorSpecificCategory,
    required TResult Function(AppError error) error,
    required TResult Function(List<ProductCategoriesModel> model)
        getProductCategoriesLoaded,
    required TResult Function() getProductCategoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoriesEntity> entity)? loaded,
    TResult? Function(List<Subcategory?> entity)? specificCategoryLoaded,
    TResult? Function(String errorText)? errorSpecificCategory,
    TResult? Function(AppError error)? error,
    TResult? Function(List<ProductCategoriesModel> model)?
        getProductCategoriesLoaded,
    TResult? Function()? getProductCategoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoriesEntity> entity)? loaded,
    TResult Function(List<Subcategory?> entity)? specificCategoryLoaded,
    TResult Function(String errorText)? errorSpecificCategory,
    TResult Function(AppError error)? error,
    TResult Function(List<ProductCategoriesModel> model)?
        getProductCategoriesLoaded,
    TResult Function()? getProductCategoriesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SpecificCategoryLoaded value)
        specificCategoryLoaded,
    required TResult Function(_SpecificCategoryError value)
        errorSpecificCategory,
    required TResult Function(_Error value) error,
    required TResult Function(_GetProductCategoriesLoaded value)
        getProductCategoriesLoaded,
    required TResult Function(_GetProductCategoriesError value)
        getProductCategoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SpecificCategoryLoaded value)? specificCategoryLoaded,
    TResult? Function(_SpecificCategoryError value)? errorSpecificCategory,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetProductCategoriesLoaded value)?
        getProductCategoriesLoaded,
    TResult? Function(_GetProductCategoriesError value)?
        getProductCategoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SpecificCategoryLoaded value)? specificCategoryLoaded,
    TResult Function(_SpecificCategoryError value)? errorSpecificCategory,
    TResult Function(_Error value)? error,
    TResult Function(_GetProductCategoriesLoaded value)?
        getProductCategoriesLoaded,
    TResult Function(_GetProductCategoriesError value)?
        getProductCategoriesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCategoriesStateCopyWith<$Res> {
  factory $GetCategoriesStateCopyWith(
          GetCategoriesState value, $Res Function(GetCategoriesState) then) =
      _$GetCategoriesStateCopyWithImpl<$Res, GetCategoriesState>;
}

/// @nodoc
class _$GetCategoriesStateCopyWithImpl<$Res, $Val extends GetCategoriesState>
    implements $GetCategoriesStateCopyWith<$Res> {
  _$GetCategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GetCategoriesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GetCategoriesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoriesEntity> entity) loaded,
    required TResult Function(List<Subcategory?> entity) specificCategoryLoaded,
    required TResult Function(String errorText) errorSpecificCategory,
    required TResult Function(AppError error) error,
    required TResult Function(List<ProductCategoriesModel> model)
        getProductCategoriesLoaded,
    required TResult Function() getProductCategoriesError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoriesEntity> entity)? loaded,
    TResult? Function(List<Subcategory?> entity)? specificCategoryLoaded,
    TResult? Function(String errorText)? errorSpecificCategory,
    TResult? Function(AppError error)? error,
    TResult? Function(List<ProductCategoriesModel> model)?
        getProductCategoriesLoaded,
    TResult? Function()? getProductCategoriesError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoriesEntity> entity)? loaded,
    TResult Function(List<Subcategory?> entity)? specificCategoryLoaded,
    TResult Function(String errorText)? errorSpecificCategory,
    TResult Function(AppError error)? error,
    TResult Function(List<ProductCategoriesModel> model)?
        getProductCategoriesLoaded,
    TResult Function()? getProductCategoriesError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SpecificCategoryLoaded value)
        specificCategoryLoaded,
    required TResult Function(_SpecificCategoryError value)
        errorSpecificCategory,
    required TResult Function(_Error value) error,
    required TResult Function(_GetProductCategoriesLoaded value)
        getProductCategoriesLoaded,
    required TResult Function(_GetProductCategoriesError value)
        getProductCategoriesError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SpecificCategoryLoaded value)? specificCategoryLoaded,
    TResult? Function(_SpecificCategoryError value)? errorSpecificCategory,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetProductCategoriesLoaded value)?
        getProductCategoriesLoaded,
    TResult? Function(_GetProductCategoriesError value)?
        getProductCategoriesError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SpecificCategoryLoaded value)? specificCategoryLoaded,
    TResult Function(_SpecificCategoryError value)? errorSpecificCategory,
    TResult Function(_Error value)? error,
    TResult Function(_GetProductCategoriesLoaded value)?
        getProductCategoriesLoaded,
    TResult Function(_GetProductCategoriesError value)?
        getProductCategoriesError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GetCategoriesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$GetCategoriesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'GetCategoriesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoriesEntity> entity) loaded,
    required TResult Function(List<Subcategory?> entity) specificCategoryLoaded,
    required TResult Function(String errorText) errorSpecificCategory,
    required TResult Function(AppError error) error,
    required TResult Function(List<ProductCategoriesModel> model)
        getProductCategoriesLoaded,
    required TResult Function() getProductCategoriesError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoriesEntity> entity)? loaded,
    TResult? Function(List<Subcategory?> entity)? specificCategoryLoaded,
    TResult? Function(String errorText)? errorSpecificCategory,
    TResult? Function(AppError error)? error,
    TResult? Function(List<ProductCategoriesModel> model)?
        getProductCategoriesLoaded,
    TResult? Function()? getProductCategoriesError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoriesEntity> entity)? loaded,
    TResult Function(List<Subcategory?> entity)? specificCategoryLoaded,
    TResult Function(String errorText)? errorSpecificCategory,
    TResult Function(AppError error)? error,
    TResult Function(List<ProductCategoriesModel> model)?
        getProductCategoriesLoaded,
    TResult Function()? getProductCategoriesError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SpecificCategoryLoaded value)
        specificCategoryLoaded,
    required TResult Function(_SpecificCategoryError value)
        errorSpecificCategory,
    required TResult Function(_Error value) error,
    required TResult Function(_GetProductCategoriesLoaded value)
        getProductCategoriesLoaded,
    required TResult Function(_GetProductCategoriesError value)
        getProductCategoriesError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SpecificCategoryLoaded value)? specificCategoryLoaded,
    TResult? Function(_SpecificCategoryError value)? errorSpecificCategory,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetProductCategoriesLoaded value)?
        getProductCategoriesLoaded,
    TResult? Function(_GetProductCategoriesError value)?
        getProductCategoriesError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SpecificCategoryLoaded value)? specificCategoryLoaded,
    TResult Function(_SpecificCategoryError value)? errorSpecificCategory,
    TResult Function(_Error value)? error,
    TResult Function(_GetProductCategoriesLoaded value)?
        getProductCategoriesLoaded,
    TResult Function(_GetProductCategoriesError value)?
        getProductCategoriesError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GetCategoriesState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoriesEntity> entity});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$GetCategoriesStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$LoadedImpl(
      entity: null == entity
          ? _value._entity
          : entity // ignore: cast_nullable_to_non_nullable
              as List<CategoriesEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<CategoriesEntity> entity})
      : _entity = entity;

  final List<CategoriesEntity> _entity;
  @override
  List<CategoriesEntity> get entity {
    if (_entity is EqualUnmodifiableListView) return _entity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entity);
  }

  @override
  String toString() {
    return 'GetCategoriesState.loaded(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._entity, _entity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_entity));

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoriesEntity> entity) loaded,
    required TResult Function(List<Subcategory?> entity) specificCategoryLoaded,
    required TResult Function(String errorText) errorSpecificCategory,
    required TResult Function(AppError error) error,
    required TResult Function(List<ProductCategoriesModel> model)
        getProductCategoriesLoaded,
    required TResult Function() getProductCategoriesError,
  }) {
    return loaded(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoriesEntity> entity)? loaded,
    TResult? Function(List<Subcategory?> entity)? specificCategoryLoaded,
    TResult? Function(String errorText)? errorSpecificCategory,
    TResult? Function(AppError error)? error,
    TResult? Function(List<ProductCategoriesModel> model)?
        getProductCategoriesLoaded,
    TResult? Function()? getProductCategoriesError,
  }) {
    return loaded?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoriesEntity> entity)? loaded,
    TResult Function(List<Subcategory?> entity)? specificCategoryLoaded,
    TResult Function(String errorText)? errorSpecificCategory,
    TResult Function(AppError error)? error,
    TResult Function(List<ProductCategoriesModel> model)?
        getProductCategoriesLoaded,
    TResult Function()? getProductCategoriesError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SpecificCategoryLoaded value)
        specificCategoryLoaded,
    required TResult Function(_SpecificCategoryError value)
        errorSpecificCategory,
    required TResult Function(_Error value) error,
    required TResult Function(_GetProductCategoriesLoaded value)
        getProductCategoriesLoaded,
    required TResult Function(_GetProductCategoriesError value)
        getProductCategoriesError,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SpecificCategoryLoaded value)? specificCategoryLoaded,
    TResult? Function(_SpecificCategoryError value)? errorSpecificCategory,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetProductCategoriesLoaded value)?
        getProductCategoriesLoaded,
    TResult? Function(_GetProductCategoriesError value)?
        getProductCategoriesError,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SpecificCategoryLoaded value)? specificCategoryLoaded,
    TResult Function(_SpecificCategoryError value)? errorSpecificCategory,
    TResult Function(_Error value)? error,
    TResult Function(_GetProductCategoriesLoaded value)?
        getProductCategoriesLoaded,
    TResult Function(_GetProductCategoriesError value)?
        getProductCategoriesError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements GetCategoriesState {
  const factory _Loaded({required final List<CategoriesEntity> entity}) =
      _$LoadedImpl;

  List<CategoriesEntity> get entity;

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpecificCategoryLoadedImplCopyWith<$Res> {
  factory _$$SpecificCategoryLoadedImplCopyWith(
          _$SpecificCategoryLoadedImpl value,
          $Res Function(_$SpecificCategoryLoadedImpl) then) =
      __$$SpecificCategoryLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Subcategory?> entity});
}

/// @nodoc
class __$$SpecificCategoryLoadedImplCopyWithImpl<$Res>
    extends _$GetCategoriesStateCopyWithImpl<$Res, _$SpecificCategoryLoadedImpl>
    implements _$$SpecificCategoryLoadedImplCopyWith<$Res> {
  __$$SpecificCategoryLoadedImplCopyWithImpl(
      _$SpecificCategoryLoadedImpl _value,
      $Res Function(_$SpecificCategoryLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$SpecificCategoryLoadedImpl(
      entity: null == entity
          ? _value._entity
          : entity // ignore: cast_nullable_to_non_nullable
              as List<Subcategory?>,
    ));
  }
}

/// @nodoc

class _$SpecificCategoryLoadedImpl implements _SpecificCategoryLoaded {
  const _$SpecificCategoryLoadedImpl({required final List<Subcategory?> entity})
      : _entity = entity;

  final List<Subcategory?> _entity;
  @override
  List<Subcategory?> get entity {
    if (_entity is EqualUnmodifiableListView) return _entity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entity);
  }

  @override
  String toString() {
    return 'GetCategoriesState.specificCategoryLoaded(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecificCategoryLoadedImpl &&
            const DeepCollectionEquality().equals(other._entity, _entity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_entity));

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecificCategoryLoadedImplCopyWith<_$SpecificCategoryLoadedImpl>
      get copyWith => __$$SpecificCategoryLoadedImplCopyWithImpl<
          _$SpecificCategoryLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoriesEntity> entity) loaded,
    required TResult Function(List<Subcategory?> entity) specificCategoryLoaded,
    required TResult Function(String errorText) errorSpecificCategory,
    required TResult Function(AppError error) error,
    required TResult Function(List<ProductCategoriesModel> model)
        getProductCategoriesLoaded,
    required TResult Function() getProductCategoriesError,
  }) {
    return specificCategoryLoaded(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoriesEntity> entity)? loaded,
    TResult? Function(List<Subcategory?> entity)? specificCategoryLoaded,
    TResult? Function(String errorText)? errorSpecificCategory,
    TResult? Function(AppError error)? error,
    TResult? Function(List<ProductCategoriesModel> model)?
        getProductCategoriesLoaded,
    TResult? Function()? getProductCategoriesError,
  }) {
    return specificCategoryLoaded?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoriesEntity> entity)? loaded,
    TResult Function(List<Subcategory?> entity)? specificCategoryLoaded,
    TResult Function(String errorText)? errorSpecificCategory,
    TResult Function(AppError error)? error,
    TResult Function(List<ProductCategoriesModel> model)?
        getProductCategoriesLoaded,
    TResult Function()? getProductCategoriesError,
    required TResult orElse(),
  }) {
    if (specificCategoryLoaded != null) {
      return specificCategoryLoaded(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SpecificCategoryLoaded value)
        specificCategoryLoaded,
    required TResult Function(_SpecificCategoryError value)
        errorSpecificCategory,
    required TResult Function(_Error value) error,
    required TResult Function(_GetProductCategoriesLoaded value)
        getProductCategoriesLoaded,
    required TResult Function(_GetProductCategoriesError value)
        getProductCategoriesError,
  }) {
    return specificCategoryLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SpecificCategoryLoaded value)? specificCategoryLoaded,
    TResult? Function(_SpecificCategoryError value)? errorSpecificCategory,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetProductCategoriesLoaded value)?
        getProductCategoriesLoaded,
    TResult? Function(_GetProductCategoriesError value)?
        getProductCategoriesError,
  }) {
    return specificCategoryLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SpecificCategoryLoaded value)? specificCategoryLoaded,
    TResult Function(_SpecificCategoryError value)? errorSpecificCategory,
    TResult Function(_Error value)? error,
    TResult Function(_GetProductCategoriesLoaded value)?
        getProductCategoriesLoaded,
    TResult Function(_GetProductCategoriesError value)?
        getProductCategoriesError,
    required TResult orElse(),
  }) {
    if (specificCategoryLoaded != null) {
      return specificCategoryLoaded(this);
    }
    return orElse();
  }
}

abstract class _SpecificCategoryLoaded implements GetCategoriesState {
  const factory _SpecificCategoryLoaded(
          {required final List<Subcategory?> entity}) =
      _$SpecificCategoryLoadedImpl;

  List<Subcategory?> get entity;

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecificCategoryLoadedImplCopyWith<_$SpecificCategoryLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpecificCategoryErrorImplCopyWith<$Res> {
  factory _$$SpecificCategoryErrorImplCopyWith(
          _$SpecificCategoryErrorImpl value,
          $Res Function(_$SpecificCategoryErrorImpl) then) =
      __$$SpecificCategoryErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorText});
}

/// @nodoc
class __$$SpecificCategoryErrorImplCopyWithImpl<$Res>
    extends _$GetCategoriesStateCopyWithImpl<$Res, _$SpecificCategoryErrorImpl>
    implements _$$SpecificCategoryErrorImplCopyWith<$Res> {
  __$$SpecificCategoryErrorImplCopyWithImpl(_$SpecificCategoryErrorImpl _value,
      $Res Function(_$SpecificCategoryErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
  }) {
    return _then(_$SpecificCategoryErrorImpl(
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SpecificCategoryErrorImpl implements _SpecificCategoryError {
  const _$SpecificCategoryErrorImpl({required this.errorText});

  @override
  final String errorText;

  @override
  String toString() {
    return 'GetCategoriesState.errorSpecificCategory(errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecificCategoryErrorImpl &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecificCategoryErrorImplCopyWith<_$SpecificCategoryErrorImpl>
      get copyWith => __$$SpecificCategoryErrorImplCopyWithImpl<
          _$SpecificCategoryErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoriesEntity> entity) loaded,
    required TResult Function(List<Subcategory?> entity) specificCategoryLoaded,
    required TResult Function(String errorText) errorSpecificCategory,
    required TResult Function(AppError error) error,
    required TResult Function(List<ProductCategoriesModel> model)
        getProductCategoriesLoaded,
    required TResult Function() getProductCategoriesError,
  }) {
    return errorSpecificCategory(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoriesEntity> entity)? loaded,
    TResult? Function(List<Subcategory?> entity)? specificCategoryLoaded,
    TResult? Function(String errorText)? errorSpecificCategory,
    TResult? Function(AppError error)? error,
    TResult? Function(List<ProductCategoriesModel> model)?
        getProductCategoriesLoaded,
    TResult? Function()? getProductCategoriesError,
  }) {
    return errorSpecificCategory?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoriesEntity> entity)? loaded,
    TResult Function(List<Subcategory?> entity)? specificCategoryLoaded,
    TResult Function(String errorText)? errorSpecificCategory,
    TResult Function(AppError error)? error,
    TResult Function(List<ProductCategoriesModel> model)?
        getProductCategoriesLoaded,
    TResult Function()? getProductCategoriesError,
    required TResult orElse(),
  }) {
    if (errorSpecificCategory != null) {
      return errorSpecificCategory(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SpecificCategoryLoaded value)
        specificCategoryLoaded,
    required TResult Function(_SpecificCategoryError value)
        errorSpecificCategory,
    required TResult Function(_Error value) error,
    required TResult Function(_GetProductCategoriesLoaded value)
        getProductCategoriesLoaded,
    required TResult Function(_GetProductCategoriesError value)
        getProductCategoriesError,
  }) {
    return errorSpecificCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SpecificCategoryLoaded value)? specificCategoryLoaded,
    TResult? Function(_SpecificCategoryError value)? errorSpecificCategory,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetProductCategoriesLoaded value)?
        getProductCategoriesLoaded,
    TResult? Function(_GetProductCategoriesError value)?
        getProductCategoriesError,
  }) {
    return errorSpecificCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SpecificCategoryLoaded value)? specificCategoryLoaded,
    TResult Function(_SpecificCategoryError value)? errorSpecificCategory,
    TResult Function(_Error value)? error,
    TResult Function(_GetProductCategoriesLoaded value)?
        getProductCategoriesLoaded,
    TResult Function(_GetProductCategoriesError value)?
        getProductCategoriesError,
    required TResult orElse(),
  }) {
    if (errorSpecificCategory != null) {
      return errorSpecificCategory(this);
    }
    return orElse();
  }
}

abstract class _SpecificCategoryError implements GetCategoriesState {
  const factory _SpecificCategoryError({required final String errorText}) =
      _$SpecificCategoryErrorImpl;

  String get errorText;

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecificCategoryErrorImplCopyWith<_$SpecificCategoryErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppError error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$GetCategoriesStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.error});

  @override
  final AppError error;

  @override
  String toString() {
    return 'GetCategoriesState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoriesEntity> entity) loaded,
    required TResult Function(List<Subcategory?> entity) specificCategoryLoaded,
    required TResult Function(String errorText) errorSpecificCategory,
    required TResult Function(AppError error) error,
    required TResult Function(List<ProductCategoriesModel> model)
        getProductCategoriesLoaded,
    required TResult Function() getProductCategoriesError,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoriesEntity> entity)? loaded,
    TResult? Function(List<Subcategory?> entity)? specificCategoryLoaded,
    TResult? Function(String errorText)? errorSpecificCategory,
    TResult? Function(AppError error)? error,
    TResult? Function(List<ProductCategoriesModel> model)?
        getProductCategoriesLoaded,
    TResult? Function()? getProductCategoriesError,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoriesEntity> entity)? loaded,
    TResult Function(List<Subcategory?> entity)? specificCategoryLoaded,
    TResult Function(String errorText)? errorSpecificCategory,
    TResult Function(AppError error)? error,
    TResult Function(List<ProductCategoriesModel> model)?
        getProductCategoriesLoaded,
    TResult Function()? getProductCategoriesError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SpecificCategoryLoaded value)
        specificCategoryLoaded,
    required TResult Function(_SpecificCategoryError value)
        errorSpecificCategory,
    required TResult Function(_Error value) error,
    required TResult Function(_GetProductCategoriesLoaded value)
        getProductCategoriesLoaded,
    required TResult Function(_GetProductCategoriesError value)
        getProductCategoriesError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SpecificCategoryLoaded value)? specificCategoryLoaded,
    TResult? Function(_SpecificCategoryError value)? errorSpecificCategory,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetProductCategoriesLoaded value)?
        getProductCategoriesLoaded,
    TResult? Function(_GetProductCategoriesError value)?
        getProductCategoriesError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SpecificCategoryLoaded value)? specificCategoryLoaded,
    TResult Function(_SpecificCategoryError value)? errorSpecificCategory,
    TResult Function(_Error value)? error,
    TResult Function(_GetProductCategoriesLoaded value)?
        getProductCategoriesLoaded,
    TResult Function(_GetProductCategoriesError value)?
        getProductCategoriesError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements GetCategoriesState {
  const factory _Error({required final AppError error}) = _$ErrorImpl;

  AppError get error;

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductCategoriesLoadedImplCopyWith<$Res> {
  factory _$$GetProductCategoriesLoadedImplCopyWith(
          _$GetProductCategoriesLoadedImpl value,
          $Res Function(_$GetProductCategoriesLoadedImpl) then) =
      __$$GetProductCategoriesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductCategoriesModel> model});
}

/// @nodoc
class __$$GetProductCategoriesLoadedImplCopyWithImpl<$Res>
    extends _$GetCategoriesStateCopyWithImpl<$Res,
        _$GetProductCategoriesLoadedImpl>
    implements _$$GetProductCategoriesLoadedImplCopyWith<$Res> {
  __$$GetProductCategoriesLoadedImplCopyWithImpl(
      _$GetProductCategoriesLoadedImpl _value,
      $Res Function(_$GetProductCategoriesLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$GetProductCategoriesLoadedImpl(
      model: null == model
          ? _value._model
          : model // ignore: cast_nullable_to_non_nullable
              as List<ProductCategoriesModel>,
    ));
  }
}

/// @nodoc

class _$GetProductCategoriesLoadedImpl implements _GetProductCategoriesLoaded {
  const _$GetProductCategoriesLoadedImpl(
      {required final List<ProductCategoriesModel> model})
      : _model = model;

  final List<ProductCategoriesModel> _model;
  @override
  List<ProductCategoriesModel> get model {
    if (_model is EqualUnmodifiableListView) return _model;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_model);
  }

  @override
  String toString() {
    return 'GetCategoriesState.getProductCategoriesLoaded(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductCategoriesLoadedImpl &&
            const DeepCollectionEquality().equals(other._model, _model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_model));

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductCategoriesLoadedImplCopyWith<_$GetProductCategoriesLoadedImpl>
      get copyWith => __$$GetProductCategoriesLoadedImplCopyWithImpl<
          _$GetProductCategoriesLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoriesEntity> entity) loaded,
    required TResult Function(List<Subcategory?> entity) specificCategoryLoaded,
    required TResult Function(String errorText) errorSpecificCategory,
    required TResult Function(AppError error) error,
    required TResult Function(List<ProductCategoriesModel> model)
        getProductCategoriesLoaded,
    required TResult Function() getProductCategoriesError,
  }) {
    return getProductCategoriesLoaded(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoriesEntity> entity)? loaded,
    TResult? Function(List<Subcategory?> entity)? specificCategoryLoaded,
    TResult? Function(String errorText)? errorSpecificCategory,
    TResult? Function(AppError error)? error,
    TResult? Function(List<ProductCategoriesModel> model)?
        getProductCategoriesLoaded,
    TResult? Function()? getProductCategoriesError,
  }) {
    return getProductCategoriesLoaded?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoriesEntity> entity)? loaded,
    TResult Function(List<Subcategory?> entity)? specificCategoryLoaded,
    TResult Function(String errorText)? errorSpecificCategory,
    TResult Function(AppError error)? error,
    TResult Function(List<ProductCategoriesModel> model)?
        getProductCategoriesLoaded,
    TResult Function()? getProductCategoriesError,
    required TResult orElse(),
  }) {
    if (getProductCategoriesLoaded != null) {
      return getProductCategoriesLoaded(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SpecificCategoryLoaded value)
        specificCategoryLoaded,
    required TResult Function(_SpecificCategoryError value)
        errorSpecificCategory,
    required TResult Function(_Error value) error,
    required TResult Function(_GetProductCategoriesLoaded value)
        getProductCategoriesLoaded,
    required TResult Function(_GetProductCategoriesError value)
        getProductCategoriesError,
  }) {
    return getProductCategoriesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SpecificCategoryLoaded value)? specificCategoryLoaded,
    TResult? Function(_SpecificCategoryError value)? errorSpecificCategory,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetProductCategoriesLoaded value)?
        getProductCategoriesLoaded,
    TResult? Function(_GetProductCategoriesError value)?
        getProductCategoriesError,
  }) {
    return getProductCategoriesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SpecificCategoryLoaded value)? specificCategoryLoaded,
    TResult Function(_SpecificCategoryError value)? errorSpecificCategory,
    TResult Function(_Error value)? error,
    TResult Function(_GetProductCategoriesLoaded value)?
        getProductCategoriesLoaded,
    TResult Function(_GetProductCategoriesError value)?
        getProductCategoriesError,
    required TResult orElse(),
  }) {
    if (getProductCategoriesLoaded != null) {
      return getProductCategoriesLoaded(this);
    }
    return orElse();
  }
}

abstract class _GetProductCategoriesLoaded implements GetCategoriesState {
  const factory _GetProductCategoriesLoaded(
          {required final List<ProductCategoriesModel> model}) =
      _$GetProductCategoriesLoadedImpl;

  List<ProductCategoriesModel> get model;

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProductCategoriesLoadedImplCopyWith<_$GetProductCategoriesLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductCategoriesErrorImplCopyWith<$Res> {
  factory _$$GetProductCategoriesErrorImplCopyWith(
          _$GetProductCategoriesErrorImpl value,
          $Res Function(_$GetProductCategoriesErrorImpl) then) =
      __$$GetProductCategoriesErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductCategoriesErrorImplCopyWithImpl<$Res>
    extends _$GetCategoriesStateCopyWithImpl<$Res,
        _$GetProductCategoriesErrorImpl>
    implements _$$GetProductCategoriesErrorImplCopyWith<$Res> {
  __$$GetProductCategoriesErrorImplCopyWithImpl(
      _$GetProductCategoriesErrorImpl _value,
      $Res Function(_$GetProductCategoriesErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetProductCategoriesErrorImpl implements _GetProductCategoriesError {
  const _$GetProductCategoriesErrorImpl();

  @override
  String toString() {
    return 'GetCategoriesState.getProductCategoriesError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductCategoriesErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoriesEntity> entity) loaded,
    required TResult Function(List<Subcategory?> entity) specificCategoryLoaded,
    required TResult Function(String errorText) errorSpecificCategory,
    required TResult Function(AppError error) error,
    required TResult Function(List<ProductCategoriesModel> model)
        getProductCategoriesLoaded,
    required TResult Function() getProductCategoriesError,
  }) {
    return getProductCategoriesError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoriesEntity> entity)? loaded,
    TResult? Function(List<Subcategory?> entity)? specificCategoryLoaded,
    TResult? Function(String errorText)? errorSpecificCategory,
    TResult? Function(AppError error)? error,
    TResult? Function(List<ProductCategoriesModel> model)?
        getProductCategoriesLoaded,
    TResult? Function()? getProductCategoriesError,
  }) {
    return getProductCategoriesError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoriesEntity> entity)? loaded,
    TResult Function(List<Subcategory?> entity)? specificCategoryLoaded,
    TResult Function(String errorText)? errorSpecificCategory,
    TResult Function(AppError error)? error,
    TResult Function(List<ProductCategoriesModel> model)?
        getProductCategoriesLoaded,
    TResult Function()? getProductCategoriesError,
    required TResult orElse(),
  }) {
    if (getProductCategoriesError != null) {
      return getProductCategoriesError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SpecificCategoryLoaded value)
        specificCategoryLoaded,
    required TResult Function(_SpecificCategoryError value)
        errorSpecificCategory,
    required TResult Function(_Error value) error,
    required TResult Function(_GetProductCategoriesLoaded value)
        getProductCategoriesLoaded,
    required TResult Function(_GetProductCategoriesError value)
        getProductCategoriesError,
  }) {
    return getProductCategoriesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SpecificCategoryLoaded value)? specificCategoryLoaded,
    TResult? Function(_SpecificCategoryError value)? errorSpecificCategory,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetProductCategoriesLoaded value)?
        getProductCategoriesLoaded,
    TResult? Function(_GetProductCategoriesError value)?
        getProductCategoriesError,
  }) {
    return getProductCategoriesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SpecificCategoryLoaded value)? specificCategoryLoaded,
    TResult Function(_SpecificCategoryError value)? errorSpecificCategory,
    TResult Function(_Error value)? error,
    TResult Function(_GetProductCategoriesLoaded value)?
        getProductCategoriesLoaded,
    TResult Function(_GetProductCategoriesError value)?
        getProductCategoriesError,
    required TResult orElse(),
  }) {
    if (getProductCategoriesError != null) {
      return getProductCategoriesError(this);
    }
    return orElse();
  }
}

abstract class _GetProductCategoriesError implements GetCategoriesState {
  const factory _GetProductCategoriesError() = _$GetProductCategoriesErrorImpl;
}
