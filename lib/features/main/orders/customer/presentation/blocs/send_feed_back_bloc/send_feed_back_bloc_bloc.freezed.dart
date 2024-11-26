// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_feed_back_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SendFeedBackBlocEvent {
  String get manufacturerUuid => throw _privateConstructorUsedError;
  String get customerUuid => throw _privateConstructorUsedError;
  Map<String, dynamic> get body => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String manufacturerUuid, String customerUuid,
            Map<String, dynamic> body)
        sendFeedBackToManufacturer,
    required TResult Function(String manufacturerUuid, String customerUuid,
            Map<String, dynamic> body)
        sendFeedBackToCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String manufacturerUuid, String customerUuid,
            Map<String, dynamic> body)?
        sendFeedBackToManufacturer,
    TResult? Function(String manufacturerUuid, String customerUuid,
            Map<String, dynamic> body)?
        sendFeedBackToCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String manufacturerUuid, String customerUuid,
            Map<String, dynamic> body)?
        sendFeedBackToManufacturer,
    TResult Function(String manufacturerUuid, String customerUuid,
            Map<String, dynamic> body)?
        sendFeedBackToCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendFeedBackToManufacturer value)
        sendFeedBackToManufacturer,
    required TResult Function(_SendFeedBackToCustomer value)
        sendFeedBackToCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendFeedBackToManufacturer value)?
        sendFeedBackToManufacturer,
    TResult? Function(_SendFeedBackToCustomer value)? sendFeedBackToCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendFeedBackToManufacturer value)?
        sendFeedBackToManufacturer,
    TResult Function(_SendFeedBackToCustomer value)? sendFeedBackToCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SendFeedBackBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendFeedBackBlocEventCopyWith<SendFeedBackBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendFeedBackBlocEventCopyWith<$Res> {
  factory $SendFeedBackBlocEventCopyWith(SendFeedBackBlocEvent value,
          $Res Function(SendFeedBackBlocEvent) then) =
      _$SendFeedBackBlocEventCopyWithImpl<$Res, SendFeedBackBlocEvent>;
  @useResult
  $Res call(
      {String manufacturerUuid,
      String customerUuid,
      Map<String, dynamic> body});
}

/// @nodoc
class _$SendFeedBackBlocEventCopyWithImpl<$Res,
        $Val extends SendFeedBackBlocEvent>
    implements $SendFeedBackBlocEventCopyWith<$Res> {
  _$SendFeedBackBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendFeedBackBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manufacturerUuid = null,
    Object? customerUuid = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      manufacturerUuid: null == manufacturerUuid
          ? _value.manufacturerUuid
          : manufacturerUuid // ignore: cast_nullable_to_non_nullable
              as String,
      customerUuid: null == customerUuid
          ? _value.customerUuid
          : customerUuid // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendFeedBackToManufacturerImplCopyWith<$Res>
    implements $SendFeedBackBlocEventCopyWith<$Res> {
  factory _$$SendFeedBackToManufacturerImplCopyWith(
          _$SendFeedBackToManufacturerImpl value,
          $Res Function(_$SendFeedBackToManufacturerImpl) then) =
      __$$SendFeedBackToManufacturerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String manufacturerUuid,
      String customerUuid,
      Map<String, dynamic> body});
}

/// @nodoc
class __$$SendFeedBackToManufacturerImplCopyWithImpl<$Res>
    extends _$SendFeedBackBlocEventCopyWithImpl<$Res,
        _$SendFeedBackToManufacturerImpl>
    implements _$$SendFeedBackToManufacturerImplCopyWith<$Res> {
  __$$SendFeedBackToManufacturerImplCopyWithImpl(
      _$SendFeedBackToManufacturerImpl _value,
      $Res Function(_$SendFeedBackToManufacturerImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendFeedBackBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manufacturerUuid = null,
    Object? customerUuid = null,
    Object? body = null,
  }) {
    return _then(_$SendFeedBackToManufacturerImpl(
      manufacturerUuid: null == manufacturerUuid
          ? _value.manufacturerUuid
          : manufacturerUuid // ignore: cast_nullable_to_non_nullable
              as String,
      customerUuid: null == customerUuid
          ? _value.customerUuid
          : customerUuid // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value._body
          : body // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$SendFeedBackToManufacturerImpl implements _SendFeedBackToManufacturer {
  const _$SendFeedBackToManufacturerImpl(
      {required this.manufacturerUuid,
      required this.customerUuid,
      required final Map<String, dynamic> body})
      : _body = body;

  @override
  final String manufacturerUuid;
  @override
  final String customerUuid;
  final Map<String, dynamic> _body;
  @override
  Map<String, dynamic> get body {
    if (_body is EqualUnmodifiableMapView) return _body;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_body);
  }

  @override
  String toString() {
    return 'SendFeedBackBlocEvent.sendFeedBackToManufacturer(manufacturerUuid: $manufacturerUuid, customerUuid: $customerUuid, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendFeedBackToManufacturerImpl &&
            (identical(other.manufacturerUuid, manufacturerUuid) ||
                other.manufacturerUuid == manufacturerUuid) &&
            (identical(other.customerUuid, customerUuid) ||
                other.customerUuid == customerUuid) &&
            const DeepCollectionEquality().equals(other._body, _body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, manufacturerUuid, customerUuid,
      const DeepCollectionEquality().hash(_body));

  /// Create a copy of SendFeedBackBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendFeedBackToManufacturerImplCopyWith<_$SendFeedBackToManufacturerImpl>
      get copyWith => __$$SendFeedBackToManufacturerImplCopyWithImpl<
          _$SendFeedBackToManufacturerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String manufacturerUuid, String customerUuid,
            Map<String, dynamic> body)
        sendFeedBackToManufacturer,
    required TResult Function(String manufacturerUuid, String customerUuid,
            Map<String, dynamic> body)
        sendFeedBackToCustomer,
  }) {
    return sendFeedBackToManufacturer(manufacturerUuid, customerUuid, body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String manufacturerUuid, String customerUuid,
            Map<String, dynamic> body)?
        sendFeedBackToManufacturer,
    TResult? Function(String manufacturerUuid, String customerUuid,
            Map<String, dynamic> body)?
        sendFeedBackToCustomer,
  }) {
    return sendFeedBackToManufacturer?.call(
        manufacturerUuid, customerUuid, body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String manufacturerUuid, String customerUuid,
            Map<String, dynamic> body)?
        sendFeedBackToManufacturer,
    TResult Function(String manufacturerUuid, String customerUuid,
            Map<String, dynamic> body)?
        sendFeedBackToCustomer,
    required TResult orElse(),
  }) {
    if (sendFeedBackToManufacturer != null) {
      return sendFeedBackToManufacturer(manufacturerUuid, customerUuid, body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendFeedBackToManufacturer value)
        sendFeedBackToManufacturer,
    required TResult Function(_SendFeedBackToCustomer value)
        sendFeedBackToCustomer,
  }) {
    return sendFeedBackToManufacturer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendFeedBackToManufacturer value)?
        sendFeedBackToManufacturer,
    TResult? Function(_SendFeedBackToCustomer value)? sendFeedBackToCustomer,
  }) {
    return sendFeedBackToManufacturer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendFeedBackToManufacturer value)?
        sendFeedBackToManufacturer,
    TResult Function(_SendFeedBackToCustomer value)? sendFeedBackToCustomer,
    required TResult orElse(),
  }) {
    if (sendFeedBackToManufacturer != null) {
      return sendFeedBackToManufacturer(this);
    }
    return orElse();
  }
}

abstract class _SendFeedBackToManufacturer implements SendFeedBackBlocEvent {
  const factory _SendFeedBackToManufacturer(
          {required final String manufacturerUuid,
          required final String customerUuid,
          required final Map<String, dynamic> body}) =
      _$SendFeedBackToManufacturerImpl;

  @override
  String get manufacturerUuid;
  @override
  String get customerUuid;
  @override
  Map<String, dynamic> get body;

  /// Create a copy of SendFeedBackBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendFeedBackToManufacturerImplCopyWith<_$SendFeedBackToManufacturerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendFeedBackToCustomerImplCopyWith<$Res>
    implements $SendFeedBackBlocEventCopyWith<$Res> {
  factory _$$SendFeedBackToCustomerImplCopyWith(
          _$SendFeedBackToCustomerImpl value,
          $Res Function(_$SendFeedBackToCustomerImpl) then) =
      __$$SendFeedBackToCustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String manufacturerUuid,
      String customerUuid,
      Map<String, dynamic> body});
}

/// @nodoc
class __$$SendFeedBackToCustomerImplCopyWithImpl<$Res>
    extends _$SendFeedBackBlocEventCopyWithImpl<$Res,
        _$SendFeedBackToCustomerImpl>
    implements _$$SendFeedBackToCustomerImplCopyWith<$Res> {
  __$$SendFeedBackToCustomerImplCopyWithImpl(
      _$SendFeedBackToCustomerImpl _value,
      $Res Function(_$SendFeedBackToCustomerImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendFeedBackBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manufacturerUuid = null,
    Object? customerUuid = null,
    Object? body = null,
  }) {
    return _then(_$SendFeedBackToCustomerImpl(
      manufacturerUuid: null == manufacturerUuid
          ? _value.manufacturerUuid
          : manufacturerUuid // ignore: cast_nullable_to_non_nullable
              as String,
      customerUuid: null == customerUuid
          ? _value.customerUuid
          : customerUuid // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value._body
          : body // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$SendFeedBackToCustomerImpl implements _SendFeedBackToCustomer {
  const _$SendFeedBackToCustomerImpl(
      {required this.manufacturerUuid,
      required this.customerUuid,
      required final Map<String, dynamic> body})
      : _body = body;

  @override
  final String manufacturerUuid;
  @override
  final String customerUuid;
  final Map<String, dynamic> _body;
  @override
  Map<String, dynamic> get body {
    if (_body is EqualUnmodifiableMapView) return _body;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_body);
  }

  @override
  String toString() {
    return 'SendFeedBackBlocEvent.sendFeedBackToCustomer(manufacturerUuid: $manufacturerUuid, customerUuid: $customerUuid, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendFeedBackToCustomerImpl &&
            (identical(other.manufacturerUuid, manufacturerUuid) ||
                other.manufacturerUuid == manufacturerUuid) &&
            (identical(other.customerUuid, customerUuid) ||
                other.customerUuid == customerUuid) &&
            const DeepCollectionEquality().equals(other._body, _body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, manufacturerUuid, customerUuid,
      const DeepCollectionEquality().hash(_body));

  /// Create a copy of SendFeedBackBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendFeedBackToCustomerImplCopyWith<_$SendFeedBackToCustomerImpl>
      get copyWith => __$$SendFeedBackToCustomerImplCopyWithImpl<
          _$SendFeedBackToCustomerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String manufacturerUuid, String customerUuid,
            Map<String, dynamic> body)
        sendFeedBackToManufacturer,
    required TResult Function(String manufacturerUuid, String customerUuid,
            Map<String, dynamic> body)
        sendFeedBackToCustomer,
  }) {
    return sendFeedBackToCustomer(manufacturerUuid, customerUuid, body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String manufacturerUuid, String customerUuid,
            Map<String, dynamic> body)?
        sendFeedBackToManufacturer,
    TResult? Function(String manufacturerUuid, String customerUuid,
            Map<String, dynamic> body)?
        sendFeedBackToCustomer,
  }) {
    return sendFeedBackToCustomer?.call(manufacturerUuid, customerUuid, body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String manufacturerUuid, String customerUuid,
            Map<String, dynamic> body)?
        sendFeedBackToManufacturer,
    TResult Function(String manufacturerUuid, String customerUuid,
            Map<String, dynamic> body)?
        sendFeedBackToCustomer,
    required TResult orElse(),
  }) {
    if (sendFeedBackToCustomer != null) {
      return sendFeedBackToCustomer(manufacturerUuid, customerUuid, body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendFeedBackToManufacturer value)
        sendFeedBackToManufacturer,
    required TResult Function(_SendFeedBackToCustomer value)
        sendFeedBackToCustomer,
  }) {
    return sendFeedBackToCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendFeedBackToManufacturer value)?
        sendFeedBackToManufacturer,
    TResult? Function(_SendFeedBackToCustomer value)? sendFeedBackToCustomer,
  }) {
    return sendFeedBackToCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendFeedBackToManufacturer value)?
        sendFeedBackToManufacturer,
    TResult Function(_SendFeedBackToCustomer value)? sendFeedBackToCustomer,
    required TResult orElse(),
  }) {
    if (sendFeedBackToCustomer != null) {
      return sendFeedBackToCustomer(this);
    }
    return orElse();
  }
}

abstract class _SendFeedBackToCustomer implements SendFeedBackBlocEvent {
  const factory _SendFeedBackToCustomer(
      {required final String manufacturerUuid,
      required final String customerUuid,
      required final Map<String, dynamic> body}) = _$SendFeedBackToCustomerImpl;

  @override
  String get manufacturerUuid;
  @override
  String get customerUuid;
  @override
  Map<String, dynamic> get body;

  /// Create a copy of SendFeedBackBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendFeedBackToCustomerImplCopyWith<_$SendFeedBackToCustomerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendFeedBackBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendFeedBackBlocStateCopyWith<$Res> {
  factory $SendFeedBackBlocStateCopyWith(SendFeedBackBlocState value,
          $Res Function(SendFeedBackBlocState) then) =
      _$SendFeedBackBlocStateCopyWithImpl<$Res, SendFeedBackBlocState>;
}

/// @nodoc
class _$SendFeedBackBlocStateCopyWithImpl<$Res,
        $Val extends SendFeedBackBlocState>
    implements $SendFeedBackBlocStateCopyWith<$Res> {
  _$SendFeedBackBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendFeedBackBlocState
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
    extends _$SendFeedBackBlocStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendFeedBackBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SendFeedBackBlocState.initial()';
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
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SendFeedBackBlocState {
  const factory _Initial() = _$InitialImpl;
}
