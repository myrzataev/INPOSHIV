// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manufacturer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ManufacturerEvent {
  FormData get formData => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormData formData, String userId) createProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormData formData, String userId)? createProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormData formData, String userId)? createProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProfile value) createProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateProfile value)? createProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProfile value)? createProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ManufacturerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManufacturerEventCopyWith<ManufacturerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManufacturerEventCopyWith<$Res> {
  factory $ManufacturerEventCopyWith(
          ManufacturerEvent value, $Res Function(ManufacturerEvent) then) =
      _$ManufacturerEventCopyWithImpl<$Res, ManufacturerEvent>;
  @useResult
  $Res call({FormData formData, String userId});
}

/// @nodoc
class _$ManufacturerEventCopyWithImpl<$Res, $Val extends ManufacturerEvent>
    implements $ManufacturerEventCopyWith<$Res> {
  _$ManufacturerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManufacturerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formData = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      formData: null == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as FormData,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateProfileImplCopyWith<$Res>
    implements $ManufacturerEventCopyWith<$Res> {
  factory _$$CreateProfileImplCopyWith(
          _$CreateProfileImpl value, $Res Function(_$CreateProfileImpl) then) =
      __$$CreateProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormData formData, String userId});
}

/// @nodoc
class __$$CreateProfileImplCopyWithImpl<$Res>
    extends _$ManufacturerEventCopyWithImpl<$Res, _$CreateProfileImpl>
    implements _$$CreateProfileImplCopyWith<$Res> {
  __$$CreateProfileImplCopyWithImpl(
      _$CreateProfileImpl _value, $Res Function(_$CreateProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManufacturerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formData = null,
    Object? userId = null,
  }) {
    return _then(_$CreateProfileImpl(
      formData: null == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as FormData,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateProfileImpl implements _CreateProfile {
  const _$CreateProfileImpl({required this.formData, required this.userId});

  @override
  final FormData formData;
  @override
  final String userId;

  @override
  String toString() {
    return 'ManufacturerEvent.createProfile(formData: $formData, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProfileImpl &&
            (identical(other.formData, formData) ||
                other.formData == formData) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formData, userId);

  /// Create a copy of ManufacturerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProfileImplCopyWith<_$CreateProfileImpl> get copyWith =>
      __$$CreateProfileImplCopyWithImpl<_$CreateProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormData formData, String userId) createProfile,
  }) {
    return createProfile(formData, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormData formData, String userId)? createProfile,
  }) {
    return createProfile?.call(formData, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormData formData, String userId)? createProfile,
    required TResult orElse(),
  }) {
    if (createProfile != null) {
      return createProfile(formData, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProfile value) createProfile,
  }) {
    return createProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateProfile value)? createProfile,
  }) {
    return createProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProfile value)? createProfile,
    required TResult orElse(),
  }) {
    if (createProfile != null) {
      return createProfile(this);
    }
    return orElse();
  }
}

abstract class _CreateProfile implements ManufacturerEvent {
  const factory _CreateProfile(
      {required final FormData formData,
      required final String userId}) = _$CreateProfileImpl;

  @override
  FormData get formData;
  @override
  String get userId;

  /// Create a copy of ManufacturerEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateProfileImplCopyWith<_$CreateProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ManufacturerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ManufacturerModel model) createdProfile,
    required TResult Function(String errorText) errorWhileCreatingProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ManufacturerModel model)? createdProfile,
    TResult? Function(String errorText)? errorWhileCreatingProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ManufacturerModel model)? createdProfile,
    TResult Function(String errorText)? errorWhileCreatingProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CreatedProfile value) createdProfile,
    required TResult Function(_ErrorWhileCreatingProfile value)
        errorWhileCreatingProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreatedProfile value)? createdProfile,
    TResult? Function(_ErrorWhileCreatingProfile value)?
        errorWhileCreatingProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreatedProfile value)? createdProfile,
    TResult Function(_ErrorWhileCreatingProfile value)?
        errorWhileCreatingProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManufacturerStateCopyWith<$Res> {
  factory $ManufacturerStateCopyWith(
          ManufacturerState value, $Res Function(ManufacturerState) then) =
      _$ManufacturerStateCopyWithImpl<$Res, ManufacturerState>;
}

/// @nodoc
class _$ManufacturerStateCopyWithImpl<$Res, $Val extends ManufacturerState>
    implements $ManufacturerStateCopyWith<$Res> {
  _$ManufacturerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManufacturerState
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
    extends _$ManufacturerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManufacturerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ManufacturerState.initial()';
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
    required TResult Function(ManufacturerModel model) createdProfile,
    required TResult Function(String errorText) errorWhileCreatingProfile,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ManufacturerModel model)? createdProfile,
    TResult? Function(String errorText)? errorWhileCreatingProfile,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ManufacturerModel model)? createdProfile,
    TResult Function(String errorText)? errorWhileCreatingProfile,
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
    required TResult Function(_CreatedProfile value) createdProfile,
    required TResult Function(_ErrorWhileCreatingProfile value)
        errorWhileCreatingProfile,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreatedProfile value)? createdProfile,
    TResult? Function(_ErrorWhileCreatingProfile value)?
        errorWhileCreatingProfile,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreatedProfile value)? createdProfile,
    TResult Function(_ErrorWhileCreatingProfile value)?
        errorWhileCreatingProfile,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ManufacturerState {
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
    extends _$ManufacturerStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManufacturerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ManufacturerState.loading()';
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
    required TResult Function(ManufacturerModel model) createdProfile,
    required TResult Function(String errorText) errorWhileCreatingProfile,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ManufacturerModel model)? createdProfile,
    TResult? Function(String errorText)? errorWhileCreatingProfile,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ManufacturerModel model)? createdProfile,
    TResult Function(String errorText)? errorWhileCreatingProfile,
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
    required TResult Function(_CreatedProfile value) createdProfile,
    required TResult Function(_ErrorWhileCreatingProfile value)
        errorWhileCreatingProfile,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreatedProfile value)? createdProfile,
    TResult? Function(_ErrorWhileCreatingProfile value)?
        errorWhileCreatingProfile,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreatedProfile value)? createdProfile,
    TResult Function(_ErrorWhileCreatingProfile value)?
        errorWhileCreatingProfile,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ManufacturerState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$CreatedProfileImplCopyWith<$Res> {
  factory _$$CreatedProfileImplCopyWith(_$CreatedProfileImpl value,
          $Res Function(_$CreatedProfileImpl) then) =
      __$$CreatedProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ManufacturerModel model});

  $ManufacturerModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$CreatedProfileImplCopyWithImpl<$Res>
    extends _$ManufacturerStateCopyWithImpl<$Res, _$CreatedProfileImpl>
    implements _$$CreatedProfileImplCopyWith<$Res> {
  __$$CreatedProfileImplCopyWithImpl(
      _$CreatedProfileImpl _value, $Res Function(_$CreatedProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManufacturerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$CreatedProfileImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ManufacturerModel,
    ));
  }

  /// Create a copy of ManufacturerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ManufacturerModelCopyWith<$Res> get model {
    return $ManufacturerModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$CreatedProfileImpl implements _CreatedProfile {
  const _$CreatedProfileImpl({required this.model});

  @override
  final ManufacturerModel model;

  @override
  String toString() {
    return 'ManufacturerState.createdProfile(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedProfileImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of ManufacturerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedProfileImplCopyWith<_$CreatedProfileImpl> get copyWith =>
      __$$CreatedProfileImplCopyWithImpl<_$CreatedProfileImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ManufacturerModel model) createdProfile,
    required TResult Function(String errorText) errorWhileCreatingProfile,
  }) {
    return createdProfile(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ManufacturerModel model)? createdProfile,
    TResult? Function(String errorText)? errorWhileCreatingProfile,
  }) {
    return createdProfile?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ManufacturerModel model)? createdProfile,
    TResult Function(String errorText)? errorWhileCreatingProfile,
    required TResult orElse(),
  }) {
    if (createdProfile != null) {
      return createdProfile(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CreatedProfile value) createdProfile,
    required TResult Function(_ErrorWhileCreatingProfile value)
        errorWhileCreatingProfile,
  }) {
    return createdProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreatedProfile value)? createdProfile,
    TResult? Function(_ErrorWhileCreatingProfile value)?
        errorWhileCreatingProfile,
  }) {
    return createdProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreatedProfile value)? createdProfile,
    TResult Function(_ErrorWhileCreatingProfile value)?
        errorWhileCreatingProfile,
    required TResult orElse(),
  }) {
    if (createdProfile != null) {
      return createdProfile(this);
    }
    return orElse();
  }
}

abstract class _CreatedProfile implements ManufacturerState {
  const factory _CreatedProfile({required final ManufacturerModel model}) =
      _$CreatedProfileImpl;

  ManufacturerModel get model;

  /// Create a copy of ManufacturerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatedProfileImplCopyWith<_$CreatedProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorWhileCreatingProfileImplCopyWith<$Res> {
  factory _$$ErrorWhileCreatingProfileImplCopyWith(
          _$ErrorWhileCreatingProfileImpl value,
          $Res Function(_$ErrorWhileCreatingProfileImpl) then) =
      __$$ErrorWhileCreatingProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorText});
}

/// @nodoc
class __$$ErrorWhileCreatingProfileImplCopyWithImpl<$Res>
    extends _$ManufacturerStateCopyWithImpl<$Res,
        _$ErrorWhileCreatingProfileImpl>
    implements _$$ErrorWhileCreatingProfileImplCopyWith<$Res> {
  __$$ErrorWhileCreatingProfileImplCopyWithImpl(
      _$ErrorWhileCreatingProfileImpl _value,
      $Res Function(_$ErrorWhileCreatingProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManufacturerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
  }) {
    return _then(_$ErrorWhileCreatingProfileImpl(
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorWhileCreatingProfileImpl implements _ErrorWhileCreatingProfile {
  const _$ErrorWhileCreatingProfileImpl({required this.errorText});

  @override
  final String errorText;

  @override
  String toString() {
    return 'ManufacturerState.errorWhileCreatingProfile(errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorWhileCreatingProfileImpl &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  /// Create a copy of ManufacturerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorWhileCreatingProfileImplCopyWith<_$ErrorWhileCreatingProfileImpl>
      get copyWith => __$$ErrorWhileCreatingProfileImplCopyWithImpl<
          _$ErrorWhileCreatingProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ManufacturerModel model) createdProfile,
    required TResult Function(String errorText) errorWhileCreatingProfile,
  }) {
    return errorWhileCreatingProfile(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ManufacturerModel model)? createdProfile,
    TResult? Function(String errorText)? errorWhileCreatingProfile,
  }) {
    return errorWhileCreatingProfile?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ManufacturerModel model)? createdProfile,
    TResult Function(String errorText)? errorWhileCreatingProfile,
    required TResult orElse(),
  }) {
    if (errorWhileCreatingProfile != null) {
      return errorWhileCreatingProfile(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CreatedProfile value) createdProfile,
    required TResult Function(_ErrorWhileCreatingProfile value)
        errorWhileCreatingProfile,
  }) {
    return errorWhileCreatingProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreatedProfile value)? createdProfile,
    TResult? Function(_ErrorWhileCreatingProfile value)?
        errorWhileCreatingProfile,
  }) {
    return errorWhileCreatingProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreatedProfile value)? createdProfile,
    TResult Function(_ErrorWhileCreatingProfile value)?
        errorWhileCreatingProfile,
    required TResult orElse(),
  }) {
    if (errorWhileCreatingProfile != null) {
      return errorWhileCreatingProfile(this);
    }
    return orElse();
  }
}

abstract class _ErrorWhileCreatingProfile implements ManufacturerState {
  const factory _ErrorWhileCreatingProfile({required final String errorText}) =
      _$ErrorWhileCreatingProfileImpl;

  String get errorText;

  /// Create a copy of ManufacturerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorWhileCreatingProfileImplCopyWith<_$ErrorWhileCreatingProfileImpl>
      get copyWith => throw _privateConstructorUsedError;
}
