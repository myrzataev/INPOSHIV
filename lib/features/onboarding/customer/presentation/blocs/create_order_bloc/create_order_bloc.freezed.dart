// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSizesEvent,
    required TResult Function(FormData formData, String customerUuid)
        createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSizesEvent,
    TResult? Function(FormData formData, String customerUuid)? createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSizesEvent,
    TResult Function(FormData formData, String customerUuid)? createOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSizes value) getSizesEvent,
    required TResult Function(_CreateOrder value) createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSizes value)? getSizesEvent,
    TResult? Function(_CreateOrder value)? createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSizes value)? getSizesEvent,
    TResult Function(_CreateOrder value)? createOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderEventCopyWith<$Res> {
  factory $CreateOrderEventCopyWith(
          CreateOrderEvent value, $Res Function(CreateOrderEvent) then) =
      _$CreateOrderEventCopyWithImpl<$Res, CreateOrderEvent>;
}

/// @nodoc
class _$CreateOrderEventCopyWithImpl<$Res, $Val extends CreateOrderEvent>
    implements $CreateOrderEventCopyWith<$Res> {
  _$CreateOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetSizesImplCopyWith<$Res> {
  factory _$$GetSizesImplCopyWith(
          _$GetSizesImpl value, $Res Function(_$GetSizesImpl) then) =
      __$$GetSizesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSizesImplCopyWithImpl<$Res>
    extends _$CreateOrderEventCopyWithImpl<$Res, _$GetSizesImpl>
    implements _$$GetSizesImplCopyWith<$Res> {
  __$$GetSizesImplCopyWithImpl(
      _$GetSizesImpl _value, $Res Function(_$GetSizesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetSizesImpl implements _GetSizes {
  const _$GetSizesImpl();

  @override
  String toString() {
    return 'CreateOrderEvent.getSizesEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSizesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSizesEvent,
    required TResult Function(FormData formData, String customerUuid)
        createOrder,
  }) {
    return getSizesEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSizesEvent,
    TResult? Function(FormData formData, String customerUuid)? createOrder,
  }) {
    return getSizesEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSizesEvent,
    TResult Function(FormData formData, String customerUuid)? createOrder,
    required TResult orElse(),
  }) {
    if (getSizesEvent != null) {
      return getSizesEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSizes value) getSizesEvent,
    required TResult Function(_CreateOrder value) createOrder,
  }) {
    return getSizesEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSizes value)? getSizesEvent,
    TResult? Function(_CreateOrder value)? createOrder,
  }) {
    return getSizesEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSizes value)? getSizesEvent,
    TResult Function(_CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (getSizesEvent != null) {
      return getSizesEvent(this);
    }
    return orElse();
  }
}

abstract class _GetSizes implements CreateOrderEvent {
  const factory _GetSizes() = _$GetSizesImpl;
}

/// @nodoc
abstract class _$$CreateOrderImplCopyWith<$Res> {
  factory _$$CreateOrderImplCopyWith(
          _$CreateOrderImpl value, $Res Function(_$CreateOrderImpl) then) =
      __$$CreateOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormData formData, String customerUuid});
}

/// @nodoc
class __$$CreateOrderImplCopyWithImpl<$Res>
    extends _$CreateOrderEventCopyWithImpl<$Res, _$CreateOrderImpl>
    implements _$$CreateOrderImplCopyWith<$Res> {
  __$$CreateOrderImplCopyWithImpl(
      _$CreateOrderImpl _value, $Res Function(_$CreateOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formData = null,
    Object? customerUuid = null,
  }) {
    return _then(_$CreateOrderImpl(
      null == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as FormData,
      null == customerUuid
          ? _value.customerUuid
          : customerUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateOrderImpl implements _CreateOrder {
  const _$CreateOrderImpl(this.formData, this.customerUuid);

  @override
  final FormData formData;
  @override
  final String customerUuid;

  @override
  String toString() {
    return 'CreateOrderEvent.createOrder(formData: $formData, customerUuid: $customerUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderImpl &&
            (identical(other.formData, formData) ||
                other.formData == formData) &&
            (identical(other.customerUuid, customerUuid) ||
                other.customerUuid == customerUuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formData, customerUuid);

  /// Create a copy of CreateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderImplCopyWith<_$CreateOrderImpl> get copyWith =>
      __$$CreateOrderImplCopyWithImpl<_$CreateOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSizesEvent,
    required TResult Function(FormData formData, String customerUuid)
        createOrder,
  }) {
    return createOrder(formData, customerUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSizesEvent,
    TResult? Function(FormData formData, String customerUuid)? createOrder,
  }) {
    return createOrder?.call(formData, customerUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSizesEvent,
    TResult Function(FormData formData, String customerUuid)? createOrder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(formData, customerUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSizes value) getSizesEvent,
    required TResult Function(_CreateOrder value) createOrder,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSizes value)? getSizesEvent,
    TResult? Function(_CreateOrder value)? createOrder,
  }) {
    return createOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSizes value)? getSizesEvent,
    TResult Function(_CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(this);
    }
    return orElse();
  }
}

abstract class _CreateOrder implements CreateOrderEvent {
  const factory _CreateOrder(
      final FormData formData, final String customerUuid) = _$CreateOrderImpl;

  FormData get formData;
  String get customerUuid;

  /// Create a copy of CreateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateOrderImplCopyWith<_$CreateOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SizeModel> model) sizesLoaded,
    required TResult Function(AppError error) sizesError,
    required TResult Function(OrderModel model) createOrderLoaded,
    required TResult Function(AppError error) createOrderError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SizeModel> model)? sizesLoaded,
    TResult? Function(AppError error)? sizesError,
    TResult? Function(OrderModel model)? createOrderLoaded,
    TResult? Function(AppError error)? createOrderError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SizeModel> model)? sizesLoaded,
    TResult Function(AppError error)? sizesError,
    TResult Function(OrderModel model)? createOrderLoaded,
    TResult Function(AppError error)? createOrderError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SizesLoaded value) sizesLoaded,
    required TResult Function(_SizesError value) sizesError,
    required TResult Function(_CreateOrderLoaded value) createOrderLoaded,
    required TResult Function(_CreateOrderError value) createOrderError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SizesLoaded value)? sizesLoaded,
    TResult? Function(_SizesError value)? sizesError,
    TResult? Function(_CreateOrderLoaded value)? createOrderLoaded,
    TResult? Function(_CreateOrderError value)? createOrderError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SizesLoaded value)? sizesLoaded,
    TResult Function(_SizesError value)? sizesError,
    TResult Function(_CreateOrderLoaded value)? createOrderLoaded,
    TResult Function(_CreateOrderError value)? createOrderError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderStateCopyWith<$Res> {
  factory $CreateOrderStateCopyWith(
          CreateOrderState value, $Res Function(CreateOrderState) then) =
      _$CreateOrderStateCopyWithImpl<$Res, CreateOrderState>;
}

/// @nodoc
class _$CreateOrderStateCopyWithImpl<$Res, $Val extends CreateOrderState>
    implements $CreateOrderStateCopyWith<$Res> {
  _$CreateOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateOrderState
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
    extends _$CreateOrderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CreateOrderState.initial()';
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
    required TResult Function(List<SizeModel> model) sizesLoaded,
    required TResult Function(AppError error) sizesError,
    required TResult Function(OrderModel model) createOrderLoaded,
    required TResult Function(AppError error) createOrderError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SizeModel> model)? sizesLoaded,
    TResult? Function(AppError error)? sizesError,
    TResult? Function(OrderModel model)? createOrderLoaded,
    TResult? Function(AppError error)? createOrderError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SizeModel> model)? sizesLoaded,
    TResult Function(AppError error)? sizesError,
    TResult Function(OrderModel model)? createOrderLoaded,
    TResult Function(AppError error)? createOrderError,
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
    required TResult Function(_SizesLoaded value) sizesLoaded,
    required TResult Function(_SizesError value) sizesError,
    required TResult Function(_CreateOrderLoaded value) createOrderLoaded,
    required TResult Function(_CreateOrderError value) createOrderError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SizesLoaded value)? sizesLoaded,
    TResult? Function(_SizesError value)? sizesError,
    TResult? Function(_CreateOrderLoaded value)? createOrderLoaded,
    TResult? Function(_CreateOrderError value)? createOrderError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SizesLoaded value)? sizesLoaded,
    TResult Function(_SizesError value)? sizesError,
    TResult Function(_CreateOrderLoaded value)? createOrderLoaded,
    TResult Function(_CreateOrderError value)? createOrderError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateOrderState {
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
    extends _$CreateOrderStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CreateOrderState.loading()';
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
    required TResult Function(List<SizeModel> model) sizesLoaded,
    required TResult Function(AppError error) sizesError,
    required TResult Function(OrderModel model) createOrderLoaded,
    required TResult Function(AppError error) createOrderError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SizeModel> model)? sizesLoaded,
    TResult? Function(AppError error)? sizesError,
    TResult? Function(OrderModel model)? createOrderLoaded,
    TResult? Function(AppError error)? createOrderError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SizeModel> model)? sizesLoaded,
    TResult Function(AppError error)? sizesError,
    TResult Function(OrderModel model)? createOrderLoaded,
    TResult Function(AppError error)? createOrderError,
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
    required TResult Function(_SizesLoaded value) sizesLoaded,
    required TResult Function(_SizesError value) sizesError,
    required TResult Function(_CreateOrderLoaded value) createOrderLoaded,
    required TResult Function(_CreateOrderError value) createOrderError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SizesLoaded value)? sizesLoaded,
    TResult? Function(_SizesError value)? sizesError,
    TResult? Function(_CreateOrderLoaded value)? createOrderLoaded,
    TResult? Function(_CreateOrderError value)? createOrderError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SizesLoaded value)? sizesLoaded,
    TResult Function(_SizesError value)? sizesError,
    TResult Function(_CreateOrderLoaded value)? createOrderLoaded,
    TResult Function(_CreateOrderError value)? createOrderError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CreateOrderState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SizesLoadedImplCopyWith<$Res> {
  factory _$$SizesLoadedImplCopyWith(
          _$SizesLoadedImpl value, $Res Function(_$SizesLoadedImpl) then) =
      __$$SizesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SizeModel> model});
}

/// @nodoc
class __$$SizesLoadedImplCopyWithImpl<$Res>
    extends _$CreateOrderStateCopyWithImpl<$Res, _$SizesLoadedImpl>
    implements _$$SizesLoadedImplCopyWith<$Res> {
  __$$SizesLoadedImplCopyWithImpl(
      _$SizesLoadedImpl _value, $Res Function(_$SizesLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$SizesLoadedImpl(
      model: null == model
          ? _value._model
          : model // ignore: cast_nullable_to_non_nullable
              as List<SizeModel>,
    ));
  }
}

/// @nodoc

class _$SizesLoadedImpl implements _SizesLoaded {
  const _$SizesLoadedImpl({required final List<SizeModel> model})
      : _model = model;

  final List<SizeModel> _model;
  @override
  List<SizeModel> get model {
    if (_model is EqualUnmodifiableListView) return _model;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_model);
  }

  @override
  String toString() {
    return 'CreateOrderState.sizesLoaded(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizesLoadedImpl &&
            const DeepCollectionEquality().equals(other._model, _model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_model));

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SizesLoadedImplCopyWith<_$SizesLoadedImpl> get copyWith =>
      __$$SizesLoadedImplCopyWithImpl<_$SizesLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SizeModel> model) sizesLoaded,
    required TResult Function(AppError error) sizesError,
    required TResult Function(OrderModel model) createOrderLoaded,
    required TResult Function(AppError error) createOrderError,
  }) {
    return sizesLoaded(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SizeModel> model)? sizesLoaded,
    TResult? Function(AppError error)? sizesError,
    TResult? Function(OrderModel model)? createOrderLoaded,
    TResult? Function(AppError error)? createOrderError,
  }) {
    return sizesLoaded?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SizeModel> model)? sizesLoaded,
    TResult Function(AppError error)? sizesError,
    TResult Function(OrderModel model)? createOrderLoaded,
    TResult Function(AppError error)? createOrderError,
    required TResult orElse(),
  }) {
    if (sizesLoaded != null) {
      return sizesLoaded(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SizesLoaded value) sizesLoaded,
    required TResult Function(_SizesError value) sizesError,
    required TResult Function(_CreateOrderLoaded value) createOrderLoaded,
    required TResult Function(_CreateOrderError value) createOrderError,
  }) {
    return sizesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SizesLoaded value)? sizesLoaded,
    TResult? Function(_SizesError value)? sizesError,
    TResult? Function(_CreateOrderLoaded value)? createOrderLoaded,
    TResult? Function(_CreateOrderError value)? createOrderError,
  }) {
    return sizesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SizesLoaded value)? sizesLoaded,
    TResult Function(_SizesError value)? sizesError,
    TResult Function(_CreateOrderLoaded value)? createOrderLoaded,
    TResult Function(_CreateOrderError value)? createOrderError,
    required TResult orElse(),
  }) {
    if (sizesLoaded != null) {
      return sizesLoaded(this);
    }
    return orElse();
  }
}

abstract class _SizesLoaded implements CreateOrderState {
  const factory _SizesLoaded({required final List<SizeModel> model}) =
      _$SizesLoadedImpl;

  List<SizeModel> get model;

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SizesLoadedImplCopyWith<_$SizesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SizesErrorImplCopyWith<$Res> {
  factory _$$SizesErrorImplCopyWith(
          _$SizesErrorImpl value, $Res Function(_$SizesErrorImpl) then) =
      __$$SizesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppError error});
}

/// @nodoc
class __$$SizesErrorImplCopyWithImpl<$Res>
    extends _$CreateOrderStateCopyWithImpl<$Res, _$SizesErrorImpl>
    implements _$$SizesErrorImplCopyWith<$Res> {
  __$$SizesErrorImplCopyWithImpl(
      _$SizesErrorImpl _value, $Res Function(_$SizesErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SizesErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$SizesErrorImpl implements _SizesError {
  const _$SizesErrorImpl({required this.error});

  @override
  final AppError error;

  @override
  String toString() {
    return 'CreateOrderState.sizesError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizesErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SizesErrorImplCopyWith<_$SizesErrorImpl> get copyWith =>
      __$$SizesErrorImplCopyWithImpl<_$SizesErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SizeModel> model) sizesLoaded,
    required TResult Function(AppError error) sizesError,
    required TResult Function(OrderModel model) createOrderLoaded,
    required TResult Function(AppError error) createOrderError,
  }) {
    return sizesError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SizeModel> model)? sizesLoaded,
    TResult? Function(AppError error)? sizesError,
    TResult? Function(OrderModel model)? createOrderLoaded,
    TResult? Function(AppError error)? createOrderError,
  }) {
    return sizesError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SizeModel> model)? sizesLoaded,
    TResult Function(AppError error)? sizesError,
    TResult Function(OrderModel model)? createOrderLoaded,
    TResult Function(AppError error)? createOrderError,
    required TResult orElse(),
  }) {
    if (sizesError != null) {
      return sizesError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SizesLoaded value) sizesLoaded,
    required TResult Function(_SizesError value) sizesError,
    required TResult Function(_CreateOrderLoaded value) createOrderLoaded,
    required TResult Function(_CreateOrderError value) createOrderError,
  }) {
    return sizesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SizesLoaded value)? sizesLoaded,
    TResult? Function(_SizesError value)? sizesError,
    TResult? Function(_CreateOrderLoaded value)? createOrderLoaded,
    TResult? Function(_CreateOrderError value)? createOrderError,
  }) {
    return sizesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SizesLoaded value)? sizesLoaded,
    TResult Function(_SizesError value)? sizesError,
    TResult Function(_CreateOrderLoaded value)? createOrderLoaded,
    TResult Function(_CreateOrderError value)? createOrderError,
    required TResult orElse(),
  }) {
    if (sizesError != null) {
      return sizesError(this);
    }
    return orElse();
  }
}

abstract class _SizesError implements CreateOrderState {
  const factory _SizesError({required final AppError error}) = _$SizesErrorImpl;

  AppError get error;

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SizesErrorImplCopyWith<_$SizesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateOrderLoadedImplCopyWith<$Res> {
  factory _$$CreateOrderLoadedImplCopyWith(_$CreateOrderLoadedImpl value,
          $Res Function(_$CreateOrderLoadedImpl) then) =
      __$$CreateOrderLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderModel model});

  $OrderModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$CreateOrderLoadedImplCopyWithImpl<$Res>
    extends _$CreateOrderStateCopyWithImpl<$Res, _$CreateOrderLoadedImpl>
    implements _$$CreateOrderLoadedImplCopyWith<$Res> {
  __$$CreateOrderLoadedImplCopyWithImpl(_$CreateOrderLoadedImpl _value,
      $Res Function(_$CreateOrderLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$CreateOrderLoadedImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ));
  }

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<$Res> get model {
    return $OrderModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$CreateOrderLoadedImpl implements _CreateOrderLoaded {
  const _$CreateOrderLoadedImpl({required this.model});

  @override
  final OrderModel model;

  @override
  String toString() {
    return 'CreateOrderState.createOrderLoaded(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderLoadedImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderLoadedImplCopyWith<_$CreateOrderLoadedImpl> get copyWith =>
      __$$CreateOrderLoadedImplCopyWithImpl<_$CreateOrderLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SizeModel> model) sizesLoaded,
    required TResult Function(AppError error) sizesError,
    required TResult Function(OrderModel model) createOrderLoaded,
    required TResult Function(AppError error) createOrderError,
  }) {
    return createOrderLoaded(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SizeModel> model)? sizesLoaded,
    TResult? Function(AppError error)? sizesError,
    TResult? Function(OrderModel model)? createOrderLoaded,
    TResult? Function(AppError error)? createOrderError,
  }) {
    return createOrderLoaded?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SizeModel> model)? sizesLoaded,
    TResult Function(AppError error)? sizesError,
    TResult Function(OrderModel model)? createOrderLoaded,
    TResult Function(AppError error)? createOrderError,
    required TResult orElse(),
  }) {
    if (createOrderLoaded != null) {
      return createOrderLoaded(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SizesLoaded value) sizesLoaded,
    required TResult Function(_SizesError value) sizesError,
    required TResult Function(_CreateOrderLoaded value) createOrderLoaded,
    required TResult Function(_CreateOrderError value) createOrderError,
  }) {
    return createOrderLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SizesLoaded value)? sizesLoaded,
    TResult? Function(_SizesError value)? sizesError,
    TResult? Function(_CreateOrderLoaded value)? createOrderLoaded,
    TResult? Function(_CreateOrderError value)? createOrderError,
  }) {
    return createOrderLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SizesLoaded value)? sizesLoaded,
    TResult Function(_SizesError value)? sizesError,
    TResult Function(_CreateOrderLoaded value)? createOrderLoaded,
    TResult Function(_CreateOrderError value)? createOrderError,
    required TResult orElse(),
  }) {
    if (createOrderLoaded != null) {
      return createOrderLoaded(this);
    }
    return orElse();
  }
}

abstract class _CreateOrderLoaded implements CreateOrderState {
  const factory _CreateOrderLoaded({required final OrderModel model}) =
      _$CreateOrderLoadedImpl;

  OrderModel get model;

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateOrderLoadedImplCopyWith<_$CreateOrderLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateOrderErrorImplCopyWith<$Res> {
  factory _$$CreateOrderErrorImplCopyWith(_$CreateOrderErrorImpl value,
          $Res Function(_$CreateOrderErrorImpl) then) =
      __$$CreateOrderErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppError error});
}

/// @nodoc
class __$$CreateOrderErrorImplCopyWithImpl<$Res>
    extends _$CreateOrderStateCopyWithImpl<$Res, _$CreateOrderErrorImpl>
    implements _$$CreateOrderErrorImplCopyWith<$Res> {
  __$$CreateOrderErrorImplCopyWithImpl(_$CreateOrderErrorImpl _value,
      $Res Function(_$CreateOrderErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CreateOrderErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$CreateOrderErrorImpl implements _CreateOrderError {
  const _$CreateOrderErrorImpl({required this.error});

  @override
  final AppError error;

  @override
  String toString() {
    return 'CreateOrderState.createOrderError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderErrorImplCopyWith<_$CreateOrderErrorImpl> get copyWith =>
      __$$CreateOrderErrorImplCopyWithImpl<_$CreateOrderErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SizeModel> model) sizesLoaded,
    required TResult Function(AppError error) sizesError,
    required TResult Function(OrderModel model) createOrderLoaded,
    required TResult Function(AppError error) createOrderError,
  }) {
    return createOrderError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SizeModel> model)? sizesLoaded,
    TResult? Function(AppError error)? sizesError,
    TResult? Function(OrderModel model)? createOrderLoaded,
    TResult? Function(AppError error)? createOrderError,
  }) {
    return createOrderError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SizeModel> model)? sizesLoaded,
    TResult Function(AppError error)? sizesError,
    TResult Function(OrderModel model)? createOrderLoaded,
    TResult Function(AppError error)? createOrderError,
    required TResult orElse(),
  }) {
    if (createOrderError != null) {
      return createOrderError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SizesLoaded value) sizesLoaded,
    required TResult Function(_SizesError value) sizesError,
    required TResult Function(_CreateOrderLoaded value) createOrderLoaded,
    required TResult Function(_CreateOrderError value) createOrderError,
  }) {
    return createOrderError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SizesLoaded value)? sizesLoaded,
    TResult? Function(_SizesError value)? sizesError,
    TResult? Function(_CreateOrderLoaded value)? createOrderLoaded,
    TResult? Function(_CreateOrderError value)? createOrderError,
  }) {
    return createOrderError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SizesLoaded value)? sizesLoaded,
    TResult Function(_SizesError value)? sizesError,
    TResult Function(_CreateOrderLoaded value)? createOrderLoaded,
    TResult Function(_CreateOrderError value)? createOrderError,
    required TResult orElse(),
  }) {
    if (createOrderError != null) {
      return createOrderError(this);
    }
    return orElse();
  }
}

abstract class _CreateOrderError implements CreateOrderState {
  const factory _CreateOrderError({required final AppError error}) =
      _$CreateOrderErrorImpl;

  AppError get error;

  /// Create a copy of CreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateOrderErrorImplCopyWith<_$CreateOrderErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
