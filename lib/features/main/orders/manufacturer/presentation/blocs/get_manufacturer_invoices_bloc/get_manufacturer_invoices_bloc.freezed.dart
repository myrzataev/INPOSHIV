// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_manufacturer_invoices_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetManufacturerInvoicesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String manufactureId) getManufacturerInvoices,
    required TResult Function(String customerUuid) getCustomerInvoices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String manufactureId)? getManufacturerInvoices,
    TResult? Function(String customerUuid)? getCustomerInvoices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String manufactureId)? getManufacturerInvoices,
    TResult Function(String customerUuid)? getCustomerInvoices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetManufacturerInvoices value)
        getManufacturerInvoices,
    required TResult Function(_GetCustomerInvoices value) getCustomerInvoices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetManufacturerInvoices value)? getManufacturerInvoices,
    TResult? Function(_GetCustomerInvoices value)? getCustomerInvoices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetManufacturerInvoices value)? getManufacturerInvoices,
    TResult Function(_GetCustomerInvoices value)? getCustomerInvoices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetManufacturerInvoicesEventCopyWith<$Res> {
  factory $GetManufacturerInvoicesEventCopyWith(
          GetManufacturerInvoicesEvent value,
          $Res Function(GetManufacturerInvoicesEvent) then) =
      _$GetManufacturerInvoicesEventCopyWithImpl<$Res,
          GetManufacturerInvoicesEvent>;
}

/// @nodoc
class _$GetManufacturerInvoicesEventCopyWithImpl<$Res,
        $Val extends GetManufacturerInvoicesEvent>
    implements $GetManufacturerInvoicesEventCopyWith<$Res> {
  _$GetManufacturerInvoicesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetManufacturerInvoicesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetManufacturerInvoicesImplCopyWith<$Res> {
  factory _$$GetManufacturerInvoicesImplCopyWith(
          _$GetManufacturerInvoicesImpl value,
          $Res Function(_$GetManufacturerInvoicesImpl) then) =
      __$$GetManufacturerInvoicesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String manufactureId});
}

/// @nodoc
class __$$GetManufacturerInvoicesImplCopyWithImpl<$Res>
    extends _$GetManufacturerInvoicesEventCopyWithImpl<$Res,
        _$GetManufacturerInvoicesImpl>
    implements _$$GetManufacturerInvoicesImplCopyWith<$Res> {
  __$$GetManufacturerInvoicesImplCopyWithImpl(
      _$GetManufacturerInvoicesImpl _value,
      $Res Function(_$GetManufacturerInvoicesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetManufacturerInvoicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manufactureId = null,
  }) {
    return _then(_$GetManufacturerInvoicesImpl(
      manufactureId: null == manufactureId
          ? _value.manufactureId
          : manufactureId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetManufacturerInvoicesImpl implements _GetManufacturerInvoices {
  const _$GetManufacturerInvoicesImpl({required this.manufactureId});

  @override
  final String manufactureId;

  @override
  String toString() {
    return 'GetManufacturerInvoicesEvent.getManufacturerInvoices(manufactureId: $manufactureId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetManufacturerInvoicesImpl &&
            (identical(other.manufactureId, manufactureId) ||
                other.manufactureId == manufactureId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, manufactureId);

  /// Create a copy of GetManufacturerInvoicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetManufacturerInvoicesImplCopyWith<_$GetManufacturerInvoicesImpl>
      get copyWith => __$$GetManufacturerInvoicesImplCopyWithImpl<
          _$GetManufacturerInvoicesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String manufactureId) getManufacturerInvoices,
    required TResult Function(String customerUuid) getCustomerInvoices,
  }) {
    return getManufacturerInvoices(manufactureId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String manufactureId)? getManufacturerInvoices,
    TResult? Function(String customerUuid)? getCustomerInvoices,
  }) {
    return getManufacturerInvoices?.call(manufactureId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String manufactureId)? getManufacturerInvoices,
    TResult Function(String customerUuid)? getCustomerInvoices,
    required TResult orElse(),
  }) {
    if (getManufacturerInvoices != null) {
      return getManufacturerInvoices(manufactureId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetManufacturerInvoices value)
        getManufacturerInvoices,
    required TResult Function(_GetCustomerInvoices value) getCustomerInvoices,
  }) {
    return getManufacturerInvoices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetManufacturerInvoices value)? getManufacturerInvoices,
    TResult? Function(_GetCustomerInvoices value)? getCustomerInvoices,
  }) {
    return getManufacturerInvoices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetManufacturerInvoices value)? getManufacturerInvoices,
    TResult Function(_GetCustomerInvoices value)? getCustomerInvoices,
    required TResult orElse(),
  }) {
    if (getManufacturerInvoices != null) {
      return getManufacturerInvoices(this);
    }
    return orElse();
  }
}

abstract class _GetManufacturerInvoices
    implements GetManufacturerInvoicesEvent {
  const factory _GetManufacturerInvoices(
      {required final String manufactureId}) = _$GetManufacturerInvoicesImpl;

  String get manufactureId;

  /// Create a copy of GetManufacturerInvoicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetManufacturerInvoicesImplCopyWith<_$GetManufacturerInvoicesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCustomerInvoicesImplCopyWith<$Res> {
  factory _$$GetCustomerInvoicesImplCopyWith(_$GetCustomerInvoicesImpl value,
          $Res Function(_$GetCustomerInvoicesImpl) then) =
      __$$GetCustomerInvoicesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String customerUuid});
}

/// @nodoc
class __$$GetCustomerInvoicesImplCopyWithImpl<$Res>
    extends _$GetManufacturerInvoicesEventCopyWithImpl<$Res,
        _$GetCustomerInvoicesImpl>
    implements _$$GetCustomerInvoicesImplCopyWith<$Res> {
  __$$GetCustomerInvoicesImplCopyWithImpl(_$GetCustomerInvoicesImpl _value,
      $Res Function(_$GetCustomerInvoicesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetManufacturerInvoicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerUuid = null,
  }) {
    return _then(_$GetCustomerInvoicesImpl(
      customerUuid: null == customerUuid
          ? _value.customerUuid
          : customerUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCustomerInvoicesImpl implements _GetCustomerInvoices {
  const _$GetCustomerInvoicesImpl({required this.customerUuid});

  @override
  final String customerUuid;

  @override
  String toString() {
    return 'GetManufacturerInvoicesEvent.getCustomerInvoices(customerUuid: $customerUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomerInvoicesImpl &&
            (identical(other.customerUuid, customerUuid) ||
                other.customerUuid == customerUuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerUuid);

  /// Create a copy of GetManufacturerInvoicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomerInvoicesImplCopyWith<_$GetCustomerInvoicesImpl> get copyWith =>
      __$$GetCustomerInvoicesImplCopyWithImpl<_$GetCustomerInvoicesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String manufactureId) getManufacturerInvoices,
    required TResult Function(String customerUuid) getCustomerInvoices,
  }) {
    return getCustomerInvoices(customerUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String manufactureId)? getManufacturerInvoices,
    TResult? Function(String customerUuid)? getCustomerInvoices,
  }) {
    return getCustomerInvoices?.call(customerUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String manufactureId)? getManufacturerInvoices,
    TResult Function(String customerUuid)? getCustomerInvoices,
    required TResult orElse(),
  }) {
    if (getCustomerInvoices != null) {
      return getCustomerInvoices(customerUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetManufacturerInvoices value)
        getManufacturerInvoices,
    required TResult Function(_GetCustomerInvoices value) getCustomerInvoices,
  }) {
    return getCustomerInvoices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetManufacturerInvoices value)? getManufacturerInvoices,
    TResult? Function(_GetCustomerInvoices value)? getCustomerInvoices,
  }) {
    return getCustomerInvoices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetManufacturerInvoices value)? getManufacturerInvoices,
    TResult Function(_GetCustomerInvoices value)? getCustomerInvoices,
    required TResult orElse(),
  }) {
    if (getCustomerInvoices != null) {
      return getCustomerInvoices(this);
    }
    return orElse();
  }
}

abstract class _GetCustomerInvoices implements GetManufacturerInvoicesEvent {
  const factory _GetCustomerInvoices({required final String customerUuid}) =
      _$GetCustomerInvoicesImpl;

  String get customerUuid;

  /// Create a copy of GetManufacturerInvoicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCustomerInvoicesImplCopyWith<_$GetCustomerInvoicesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetManufacturerInvoicesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<InvoiceModel> model) loaded,
    required TResult Function(AppError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<InvoiceModel> model)? loaded,
    TResult? Function(AppError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<InvoiceModel> model)? loaded,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetManufacturerInvoicesStateCopyWith<$Res> {
  factory $GetManufacturerInvoicesStateCopyWith(
          GetManufacturerInvoicesState value,
          $Res Function(GetManufacturerInvoicesState) then) =
      _$GetManufacturerInvoicesStateCopyWithImpl<$Res,
          GetManufacturerInvoicesState>;
}

/// @nodoc
class _$GetManufacturerInvoicesStateCopyWithImpl<$Res,
        $Val extends GetManufacturerInvoicesState>
    implements $GetManufacturerInvoicesStateCopyWith<$Res> {
  _$GetManufacturerInvoicesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetManufacturerInvoicesState
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
    extends _$GetManufacturerInvoicesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetManufacturerInvoicesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GetManufacturerInvoicesState.initial()';
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
    required TResult Function(List<InvoiceModel> model) loaded,
    required TResult Function(AppError error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<InvoiceModel> model)? loaded,
    TResult? Function(AppError error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<InvoiceModel> model)? loaded,
    TResult Function(AppError error)? error,
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
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GetManufacturerInvoicesState {
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
    extends _$GetManufacturerInvoicesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetManufacturerInvoicesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'GetManufacturerInvoicesState.loading()';
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
    required TResult Function(List<InvoiceModel> model) loaded,
    required TResult Function(AppError error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<InvoiceModel> model)? loaded,
    TResult? Function(AppError error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<InvoiceModel> model)? loaded,
    TResult Function(AppError error)? error,
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
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GetManufacturerInvoicesState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InvoiceModel> model});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$GetManufacturerInvoicesStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetManufacturerInvoicesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$LoadedImpl(
      model: null == model
          ? _value._model
          : model // ignore: cast_nullable_to_non_nullable
              as List<InvoiceModel>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<InvoiceModel> model})
      : _model = model;

  final List<InvoiceModel> _model;
  @override
  List<InvoiceModel> get model {
    if (_model is EqualUnmodifiableListView) return _model;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_model);
  }

  @override
  String toString() {
    return 'GetManufacturerInvoicesState.loaded(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._model, _model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_model));

  /// Create a copy of GetManufacturerInvoicesState
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
    required TResult Function(List<InvoiceModel> model) loaded,
    required TResult Function(AppError error) error,
  }) {
    return loaded(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<InvoiceModel> model)? loaded,
    TResult? Function(AppError error)? error,
  }) {
    return loaded?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<InvoiceModel> model)? loaded,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements GetManufacturerInvoicesState {
  const factory _Loaded({required final List<InvoiceModel> model}) =
      _$LoadedImpl;

  List<InvoiceModel> get model;

  /// Create a copy of GetManufacturerInvoicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$GetManufacturerInvoicesStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetManufacturerInvoicesState
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
    return 'GetManufacturerInvoicesState.error(error: $error)';
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

  /// Create a copy of GetManufacturerInvoicesState
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
    required TResult Function(List<InvoiceModel> model) loaded,
    required TResult Function(AppError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<InvoiceModel> model)? loaded,
    TResult? Function(AppError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<InvoiceModel> model)? loaded,
    TResult Function(AppError error)? error,
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
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements GetManufacturerInvoicesState {
  const factory _Error({required final AppError error}) = _$ErrorImpl;

  AppError get error;

  /// Create a copy of GetManufacturerInvoicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
