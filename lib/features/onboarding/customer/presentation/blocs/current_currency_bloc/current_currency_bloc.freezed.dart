// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_currency_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentCurrencyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentCurrencyEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentCurrencyEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentCurrencyEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentCurrencyEvent value)
        getCurrentCurrencyEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentCurrencyEvent value)? getCurrentCurrencyEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentCurrencyEvent value)? getCurrentCurrencyEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentCurrencyEventCopyWith<$Res> {
  factory $CurrentCurrencyEventCopyWith(CurrentCurrencyEvent value,
          $Res Function(CurrentCurrencyEvent) then) =
      _$CurrentCurrencyEventCopyWithImpl<$Res, CurrentCurrencyEvent>;
}

/// @nodoc
class _$CurrentCurrencyEventCopyWithImpl<$Res,
        $Val extends CurrentCurrencyEvent>
    implements $CurrentCurrencyEventCopyWith<$Res> {
  _$CurrentCurrencyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentCurrencyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCurrentCurrencyEventImplCopyWith<$Res> {
  factory _$$GetCurrentCurrencyEventImplCopyWith(
          _$GetCurrentCurrencyEventImpl value,
          $Res Function(_$GetCurrentCurrencyEventImpl) then) =
      __$$GetCurrentCurrencyEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentCurrencyEventImplCopyWithImpl<$Res>
    extends _$CurrentCurrencyEventCopyWithImpl<$Res,
        _$GetCurrentCurrencyEventImpl>
    implements _$$GetCurrentCurrencyEventImplCopyWith<$Res> {
  __$$GetCurrentCurrencyEventImplCopyWithImpl(
      _$GetCurrentCurrencyEventImpl _value,
      $Res Function(_$GetCurrentCurrencyEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentCurrencyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCurrentCurrencyEventImpl implements _GetCurrentCurrencyEvent {
  const _$GetCurrentCurrencyEventImpl();

  @override
  String toString() {
    return 'CurrentCurrencyEvent.getCurrentCurrencyEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCurrentCurrencyEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentCurrencyEvent,
  }) {
    return getCurrentCurrencyEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentCurrencyEvent,
  }) {
    return getCurrentCurrencyEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentCurrencyEvent,
    required TResult orElse(),
  }) {
    if (getCurrentCurrencyEvent != null) {
      return getCurrentCurrencyEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentCurrencyEvent value)
        getCurrentCurrencyEvent,
  }) {
    return getCurrentCurrencyEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentCurrencyEvent value)? getCurrentCurrencyEvent,
  }) {
    return getCurrentCurrencyEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentCurrencyEvent value)? getCurrentCurrencyEvent,
    required TResult orElse(),
  }) {
    if (getCurrentCurrencyEvent != null) {
      return getCurrentCurrencyEvent(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentCurrencyEvent implements CurrentCurrencyEvent {
  const factory _GetCurrentCurrencyEvent() = _$GetCurrentCurrencyEventImpl;
}

/// @nodoc
mixin _$CurrentCurrencyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CurrencyConvertModel model) currencyLoaded,
    required TResult Function(String errorText) getCurrencyError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CurrencyConvertModel model)? currencyLoaded,
    TResult? Function(String errorText)? getCurrencyError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CurrencyConvertModel model)? currencyLoaded,
    TResult Function(String errorText)? getCurrencyError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCurrencyLoaded value) currencyLoaded,
    required TResult Function(_GetCurrencyError value) getCurrencyError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCurrencyLoaded value)? currencyLoaded,
    TResult? Function(_GetCurrencyError value)? getCurrencyError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCurrencyLoaded value)? currencyLoaded,
    TResult Function(_GetCurrencyError value)? getCurrencyError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentCurrencyStateCopyWith<$Res> {
  factory $CurrentCurrencyStateCopyWith(CurrentCurrencyState value,
          $Res Function(CurrentCurrencyState) then) =
      _$CurrentCurrencyStateCopyWithImpl<$Res, CurrentCurrencyState>;
}

/// @nodoc
class _$CurrentCurrencyStateCopyWithImpl<$Res,
        $Val extends CurrentCurrencyState>
    implements $CurrentCurrencyStateCopyWith<$Res> {
  _$CurrentCurrencyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentCurrencyState
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
    extends _$CurrentCurrencyStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentCurrencyState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CurrentCurrencyState.initial()';
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
    required TResult Function(CurrencyConvertModel model) currencyLoaded,
    required TResult Function(String errorText) getCurrencyError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CurrencyConvertModel model)? currencyLoaded,
    TResult? Function(String errorText)? getCurrencyError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CurrencyConvertModel model)? currencyLoaded,
    TResult Function(String errorText)? getCurrencyError,
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
    required TResult Function(_GetCurrencyLoaded value) currencyLoaded,
    required TResult Function(_GetCurrencyError value) getCurrencyError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCurrencyLoaded value)? currencyLoaded,
    TResult? Function(_GetCurrencyError value)? getCurrencyError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCurrencyLoaded value)? currencyLoaded,
    TResult Function(_GetCurrencyError value)? getCurrencyError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CurrentCurrencyState {
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
    extends _$CurrentCurrencyStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentCurrencyState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CurrentCurrencyState.loading()';
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
    required TResult Function(CurrencyConvertModel model) currencyLoaded,
    required TResult Function(String errorText) getCurrencyError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CurrencyConvertModel model)? currencyLoaded,
    TResult? Function(String errorText)? getCurrencyError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CurrencyConvertModel model)? currencyLoaded,
    TResult Function(String errorText)? getCurrencyError,
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
    required TResult Function(_GetCurrencyLoaded value) currencyLoaded,
    required TResult Function(_GetCurrencyError value) getCurrencyError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCurrencyLoaded value)? currencyLoaded,
    TResult? Function(_GetCurrencyError value)? getCurrencyError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCurrencyLoaded value)? currencyLoaded,
    TResult Function(_GetCurrencyError value)? getCurrencyError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CurrentCurrencyState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$GetCurrencyLoadedImplCopyWith<$Res> {
  factory _$$GetCurrencyLoadedImplCopyWith(_$GetCurrencyLoadedImpl value,
          $Res Function(_$GetCurrencyLoadedImpl) then) =
      __$$GetCurrencyLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrencyConvertModel model});

  $CurrencyConvertModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$GetCurrencyLoadedImplCopyWithImpl<$Res>
    extends _$CurrentCurrencyStateCopyWithImpl<$Res, _$GetCurrencyLoadedImpl>
    implements _$$GetCurrencyLoadedImplCopyWith<$Res> {
  __$$GetCurrencyLoadedImplCopyWithImpl(_$GetCurrencyLoadedImpl _value,
      $Res Function(_$GetCurrencyLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentCurrencyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$GetCurrencyLoadedImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CurrencyConvertModel,
    ));
  }

  /// Create a copy of CurrentCurrencyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyConvertModelCopyWith<$Res> get model {
    return $CurrencyConvertModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$GetCurrencyLoadedImpl implements _GetCurrencyLoaded {
  const _$GetCurrencyLoadedImpl({required this.model});

  @override
  final CurrencyConvertModel model;

  @override
  String toString() {
    return 'CurrentCurrencyState.currencyLoaded(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCurrencyLoadedImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of CurrentCurrencyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCurrencyLoadedImplCopyWith<_$GetCurrencyLoadedImpl> get copyWith =>
      __$$GetCurrencyLoadedImplCopyWithImpl<_$GetCurrencyLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CurrencyConvertModel model) currencyLoaded,
    required TResult Function(String errorText) getCurrencyError,
  }) {
    return currencyLoaded(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CurrencyConvertModel model)? currencyLoaded,
    TResult? Function(String errorText)? getCurrencyError,
  }) {
    return currencyLoaded?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CurrencyConvertModel model)? currencyLoaded,
    TResult Function(String errorText)? getCurrencyError,
    required TResult orElse(),
  }) {
    if (currencyLoaded != null) {
      return currencyLoaded(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCurrencyLoaded value) currencyLoaded,
    required TResult Function(_GetCurrencyError value) getCurrencyError,
  }) {
    return currencyLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCurrencyLoaded value)? currencyLoaded,
    TResult? Function(_GetCurrencyError value)? getCurrencyError,
  }) {
    return currencyLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCurrencyLoaded value)? currencyLoaded,
    TResult Function(_GetCurrencyError value)? getCurrencyError,
    required TResult orElse(),
  }) {
    if (currencyLoaded != null) {
      return currencyLoaded(this);
    }
    return orElse();
  }
}

abstract class _GetCurrencyLoaded implements CurrentCurrencyState {
  const factory _GetCurrencyLoaded(
      {required final CurrencyConvertModel model}) = _$GetCurrencyLoadedImpl;

  CurrencyConvertModel get model;

  /// Create a copy of CurrentCurrencyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCurrencyLoadedImplCopyWith<_$GetCurrencyLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCurrencyErrorImplCopyWith<$Res> {
  factory _$$GetCurrencyErrorImplCopyWith(_$GetCurrencyErrorImpl value,
          $Res Function(_$GetCurrencyErrorImpl) then) =
      __$$GetCurrencyErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorText});
}

/// @nodoc
class __$$GetCurrencyErrorImplCopyWithImpl<$Res>
    extends _$CurrentCurrencyStateCopyWithImpl<$Res, _$GetCurrencyErrorImpl>
    implements _$$GetCurrencyErrorImplCopyWith<$Res> {
  __$$GetCurrencyErrorImplCopyWithImpl(_$GetCurrencyErrorImpl _value,
      $Res Function(_$GetCurrencyErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentCurrencyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
  }) {
    return _then(_$GetCurrencyErrorImpl(
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCurrencyErrorImpl implements _GetCurrencyError {
  const _$GetCurrencyErrorImpl({required this.errorText});

  @override
  final String errorText;

  @override
  String toString() {
    return 'CurrentCurrencyState.getCurrencyError(errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCurrencyErrorImpl &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  /// Create a copy of CurrentCurrencyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCurrencyErrorImplCopyWith<_$GetCurrencyErrorImpl> get copyWith =>
      __$$GetCurrencyErrorImplCopyWithImpl<_$GetCurrencyErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CurrencyConvertModel model) currencyLoaded,
    required TResult Function(String errorText) getCurrencyError,
  }) {
    return getCurrencyError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CurrencyConvertModel model)? currencyLoaded,
    TResult? Function(String errorText)? getCurrencyError,
  }) {
    return getCurrencyError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CurrencyConvertModel model)? currencyLoaded,
    TResult Function(String errorText)? getCurrencyError,
    required TResult orElse(),
  }) {
    if (getCurrencyError != null) {
      return getCurrencyError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCurrencyLoaded value) currencyLoaded,
    required TResult Function(_GetCurrencyError value) getCurrencyError,
  }) {
    return getCurrencyError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCurrencyLoaded value)? currencyLoaded,
    TResult? Function(_GetCurrencyError value)? getCurrencyError,
  }) {
    return getCurrencyError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCurrencyLoaded value)? currencyLoaded,
    TResult Function(_GetCurrencyError value)? getCurrencyError,
    required TResult orElse(),
  }) {
    if (getCurrencyError != null) {
      return getCurrencyError(this);
    }
    return orElse();
  }
}

abstract class _GetCurrencyError implements CurrentCurrencyState {
  const factory _GetCurrencyError({required final String errorText}) =
      _$GetCurrencyErrorImpl;

  String get errorText;

  /// Create a copy of CurrentCurrencyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCurrencyErrorImplCopyWith<_$GetCurrencyErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
