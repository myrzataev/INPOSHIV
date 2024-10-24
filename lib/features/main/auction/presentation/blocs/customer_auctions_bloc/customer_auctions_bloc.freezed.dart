// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_auctions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerAuctionsEvent {
  String get customerId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerId) getCustomerAuctions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerId)? getCustomerAuctions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerId)? getCustomerAuctions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCustomerAuctions value) getCustomerAuctions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCustomerAuctions value)? getCustomerAuctions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCustomerAuctions value)? getCustomerAuctions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CustomerAuctionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerAuctionsEventCopyWith<CustomerAuctionsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAuctionsEventCopyWith<$Res> {
  factory $CustomerAuctionsEventCopyWith(CustomerAuctionsEvent value,
          $Res Function(CustomerAuctionsEvent) then) =
      _$CustomerAuctionsEventCopyWithImpl<$Res, CustomerAuctionsEvent>;
  @useResult
  $Res call({String customerId});
}

/// @nodoc
class _$CustomerAuctionsEventCopyWithImpl<$Res,
        $Val extends CustomerAuctionsEvent>
    implements $CustomerAuctionsEventCopyWith<$Res> {
  _$CustomerAuctionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerAuctionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_value.copyWith(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCustomerAuctionsImplCopyWith<$Res>
    implements $CustomerAuctionsEventCopyWith<$Res> {
  factory _$$GetCustomerAuctionsImplCopyWith(_$GetCustomerAuctionsImpl value,
          $Res Function(_$GetCustomerAuctionsImpl) then) =
      __$$GetCustomerAuctionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String customerId});
}

/// @nodoc
class __$$GetCustomerAuctionsImplCopyWithImpl<$Res>
    extends _$CustomerAuctionsEventCopyWithImpl<$Res, _$GetCustomerAuctionsImpl>
    implements _$$GetCustomerAuctionsImplCopyWith<$Res> {
  __$$GetCustomerAuctionsImplCopyWithImpl(_$GetCustomerAuctionsImpl _value,
      $Res Function(_$GetCustomerAuctionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerAuctionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_$GetCustomerAuctionsImpl(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCustomerAuctionsImpl implements _GetCustomerAuctions {
  const _$GetCustomerAuctionsImpl({required this.customerId});

  @override
  final String customerId;

  @override
  String toString() {
    return 'CustomerAuctionsEvent.getCustomerAuctions(customerId: $customerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomerAuctionsImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId);

  /// Create a copy of CustomerAuctionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomerAuctionsImplCopyWith<_$GetCustomerAuctionsImpl> get copyWith =>
      __$$GetCustomerAuctionsImplCopyWithImpl<_$GetCustomerAuctionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerId) getCustomerAuctions,
  }) {
    return getCustomerAuctions(customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerId)? getCustomerAuctions,
  }) {
    return getCustomerAuctions?.call(customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerId)? getCustomerAuctions,
    required TResult orElse(),
  }) {
    if (getCustomerAuctions != null) {
      return getCustomerAuctions(customerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCustomerAuctions value) getCustomerAuctions,
  }) {
    return getCustomerAuctions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCustomerAuctions value)? getCustomerAuctions,
  }) {
    return getCustomerAuctions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCustomerAuctions value)? getCustomerAuctions,
    required TResult orElse(),
  }) {
    if (getCustomerAuctions != null) {
      return getCustomerAuctions(this);
    }
    return orElse();
  }
}

abstract class _GetCustomerAuctions implements CustomerAuctionsEvent {
  const factory _GetCustomerAuctions({required final String customerId}) =
      _$GetCustomerAuctionsImpl;

  @override
  String get customerId;

  /// Create a copy of CustomerAuctionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCustomerAuctionsImplCopyWith<_$GetCustomerAuctionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerAuctionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CustomerOrdersModel> customerOrdersModel)
        customerOrdersLoaded,
    required TResult Function(String errorText) customerOrdersError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CustomerOrdersModel> customerOrdersModel)?
        customerOrdersLoaded,
    TResult? Function(String errorText)? customerOrdersError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CustomerOrdersModel> customerOrdersModel)?
        customerOrdersLoaded,
    TResult Function(String errorText)? customerOrdersError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CustomerOrdersLoaded value) customerOrdersLoaded,
    required TResult Function(_CustomerOrdersError value) customerOrdersError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CustomerOrdersLoaded value)? customerOrdersLoaded,
    TResult? Function(_CustomerOrdersError value)? customerOrdersError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CustomerOrdersLoaded value)? customerOrdersLoaded,
    TResult Function(_CustomerOrdersError value)? customerOrdersError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAuctionsStateCopyWith<$Res> {
  factory $CustomerAuctionsStateCopyWith(CustomerAuctionsState value,
          $Res Function(CustomerAuctionsState) then) =
      _$CustomerAuctionsStateCopyWithImpl<$Res, CustomerAuctionsState>;
}

/// @nodoc
class _$CustomerAuctionsStateCopyWithImpl<$Res,
        $Val extends CustomerAuctionsState>
    implements $CustomerAuctionsStateCopyWith<$Res> {
  _$CustomerAuctionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerAuctionsState
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
    extends _$CustomerAuctionsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerAuctionsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CustomerAuctionsState.initial()';
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
    required TResult Function(List<CustomerOrdersModel> customerOrdersModel)
        customerOrdersLoaded,
    required TResult Function(String errorText) customerOrdersError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CustomerOrdersModel> customerOrdersModel)?
        customerOrdersLoaded,
    TResult? Function(String errorText)? customerOrdersError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CustomerOrdersModel> customerOrdersModel)?
        customerOrdersLoaded,
    TResult Function(String errorText)? customerOrdersError,
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
    required TResult Function(_CustomerOrdersLoaded value) customerOrdersLoaded,
    required TResult Function(_CustomerOrdersError value) customerOrdersError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CustomerOrdersLoaded value)? customerOrdersLoaded,
    TResult? Function(_CustomerOrdersError value)? customerOrdersError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CustomerOrdersLoaded value)? customerOrdersLoaded,
    TResult Function(_CustomerOrdersError value)? customerOrdersError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CustomerAuctionsState {
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
    extends _$CustomerAuctionsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerAuctionsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CustomerAuctionsState.loading()';
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
    required TResult Function(List<CustomerOrdersModel> customerOrdersModel)
        customerOrdersLoaded,
    required TResult Function(String errorText) customerOrdersError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CustomerOrdersModel> customerOrdersModel)?
        customerOrdersLoaded,
    TResult? Function(String errorText)? customerOrdersError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CustomerOrdersModel> customerOrdersModel)?
        customerOrdersLoaded,
    TResult Function(String errorText)? customerOrdersError,
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
    required TResult Function(_CustomerOrdersLoaded value) customerOrdersLoaded,
    required TResult Function(_CustomerOrdersError value) customerOrdersError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CustomerOrdersLoaded value)? customerOrdersLoaded,
    TResult? Function(_CustomerOrdersError value)? customerOrdersError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CustomerOrdersLoaded value)? customerOrdersLoaded,
    TResult Function(_CustomerOrdersError value)? customerOrdersError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CustomerAuctionsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$CustomerOrdersLoadedImplCopyWith<$Res> {
  factory _$$CustomerOrdersLoadedImplCopyWith(_$CustomerOrdersLoadedImpl value,
          $Res Function(_$CustomerOrdersLoadedImpl) then) =
      __$$CustomerOrdersLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CustomerOrdersModel> customerOrdersModel});
}

/// @nodoc
class __$$CustomerOrdersLoadedImplCopyWithImpl<$Res>
    extends _$CustomerAuctionsStateCopyWithImpl<$Res,
        _$CustomerOrdersLoadedImpl>
    implements _$$CustomerOrdersLoadedImplCopyWith<$Res> {
  __$$CustomerOrdersLoadedImplCopyWithImpl(_$CustomerOrdersLoadedImpl _value,
      $Res Function(_$CustomerOrdersLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerAuctionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerOrdersModel = null,
  }) {
    return _then(_$CustomerOrdersLoadedImpl(
      customerOrdersModel: null == customerOrdersModel
          ? _value._customerOrdersModel
          : customerOrdersModel // ignore: cast_nullable_to_non_nullable
              as List<CustomerOrdersModel>,
    ));
  }
}

/// @nodoc

class _$CustomerOrdersLoadedImpl implements _CustomerOrdersLoaded {
  const _$CustomerOrdersLoadedImpl(
      {required final List<CustomerOrdersModel> customerOrdersModel})
      : _customerOrdersModel = customerOrdersModel;

  final List<CustomerOrdersModel> _customerOrdersModel;
  @override
  List<CustomerOrdersModel> get customerOrdersModel {
    if (_customerOrdersModel is EqualUnmodifiableListView)
      return _customerOrdersModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customerOrdersModel);
  }

  @override
  String toString() {
    return 'CustomerAuctionsState.customerOrdersLoaded(customerOrdersModel: $customerOrdersModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerOrdersLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._customerOrdersModel, _customerOrdersModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_customerOrdersModel));

  /// Create a copy of CustomerAuctionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerOrdersLoadedImplCopyWith<_$CustomerOrdersLoadedImpl>
      get copyWith =>
          __$$CustomerOrdersLoadedImplCopyWithImpl<_$CustomerOrdersLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CustomerOrdersModel> customerOrdersModel)
        customerOrdersLoaded,
    required TResult Function(String errorText) customerOrdersError,
  }) {
    return customerOrdersLoaded(customerOrdersModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CustomerOrdersModel> customerOrdersModel)?
        customerOrdersLoaded,
    TResult? Function(String errorText)? customerOrdersError,
  }) {
    return customerOrdersLoaded?.call(customerOrdersModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CustomerOrdersModel> customerOrdersModel)?
        customerOrdersLoaded,
    TResult Function(String errorText)? customerOrdersError,
    required TResult orElse(),
  }) {
    if (customerOrdersLoaded != null) {
      return customerOrdersLoaded(customerOrdersModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CustomerOrdersLoaded value) customerOrdersLoaded,
    required TResult Function(_CustomerOrdersError value) customerOrdersError,
  }) {
    return customerOrdersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CustomerOrdersLoaded value)? customerOrdersLoaded,
    TResult? Function(_CustomerOrdersError value)? customerOrdersError,
  }) {
    return customerOrdersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CustomerOrdersLoaded value)? customerOrdersLoaded,
    TResult Function(_CustomerOrdersError value)? customerOrdersError,
    required TResult orElse(),
  }) {
    if (customerOrdersLoaded != null) {
      return customerOrdersLoaded(this);
    }
    return orElse();
  }
}

abstract class _CustomerOrdersLoaded implements CustomerAuctionsState {
  const factory _CustomerOrdersLoaded(
          {required final List<CustomerOrdersModel> customerOrdersModel}) =
      _$CustomerOrdersLoadedImpl;

  List<CustomerOrdersModel> get customerOrdersModel;

  /// Create a copy of CustomerAuctionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerOrdersLoadedImplCopyWith<_$CustomerOrdersLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerOrdersErrorImplCopyWith<$Res> {
  factory _$$CustomerOrdersErrorImplCopyWith(_$CustomerOrdersErrorImpl value,
          $Res Function(_$CustomerOrdersErrorImpl) then) =
      __$$CustomerOrdersErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorText});
}

/// @nodoc
class __$$CustomerOrdersErrorImplCopyWithImpl<$Res>
    extends _$CustomerAuctionsStateCopyWithImpl<$Res, _$CustomerOrdersErrorImpl>
    implements _$$CustomerOrdersErrorImplCopyWith<$Res> {
  __$$CustomerOrdersErrorImplCopyWithImpl(_$CustomerOrdersErrorImpl _value,
      $Res Function(_$CustomerOrdersErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerAuctionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
  }) {
    return _then(_$CustomerOrdersErrorImpl(
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CustomerOrdersErrorImpl implements _CustomerOrdersError {
  const _$CustomerOrdersErrorImpl({required this.errorText});

  @override
  final String errorText;

  @override
  String toString() {
    return 'CustomerAuctionsState.customerOrdersError(errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerOrdersErrorImpl &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  /// Create a copy of CustomerAuctionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerOrdersErrorImplCopyWith<_$CustomerOrdersErrorImpl> get copyWith =>
      __$$CustomerOrdersErrorImplCopyWithImpl<_$CustomerOrdersErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CustomerOrdersModel> customerOrdersModel)
        customerOrdersLoaded,
    required TResult Function(String errorText) customerOrdersError,
  }) {
    return customerOrdersError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CustomerOrdersModel> customerOrdersModel)?
        customerOrdersLoaded,
    TResult? Function(String errorText)? customerOrdersError,
  }) {
    return customerOrdersError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CustomerOrdersModel> customerOrdersModel)?
        customerOrdersLoaded,
    TResult Function(String errorText)? customerOrdersError,
    required TResult orElse(),
  }) {
    if (customerOrdersError != null) {
      return customerOrdersError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CustomerOrdersLoaded value) customerOrdersLoaded,
    required TResult Function(_CustomerOrdersError value) customerOrdersError,
  }) {
    return customerOrdersError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CustomerOrdersLoaded value)? customerOrdersLoaded,
    TResult? Function(_CustomerOrdersError value)? customerOrdersError,
  }) {
    return customerOrdersError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CustomerOrdersLoaded value)? customerOrdersLoaded,
    TResult Function(_CustomerOrdersError value)? customerOrdersError,
    required TResult orElse(),
  }) {
    if (customerOrdersError != null) {
      return customerOrdersError(this);
    }
    return orElse();
  }
}

abstract class _CustomerOrdersError implements CustomerAuctionsState {
  const factory _CustomerOrdersError({required final String errorText}) =
      _$CustomerOrdersErrorImpl;

  String get errorText;

  /// Create a copy of CustomerAuctionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerOrdersErrorImplCopyWith<_$CustomerOrdersErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
