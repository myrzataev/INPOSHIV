// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_auction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateAuctionEvent {
  int get orderId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId) createAuction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? createAuction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? createAuction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateAuction value) createAuction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateAuction value)? createAuction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateAuction value)? createAuction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CreateAuctionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateAuctionEventCopyWith<CreateAuctionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAuctionEventCopyWith<$Res> {
  factory $CreateAuctionEventCopyWith(
          CreateAuctionEvent value, $Res Function(CreateAuctionEvent) then) =
      _$CreateAuctionEventCopyWithImpl<$Res, CreateAuctionEvent>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class _$CreateAuctionEventCopyWithImpl<$Res, $Val extends CreateAuctionEvent>
    implements $CreateAuctionEventCopyWith<$Res> {
  _$CreateAuctionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateAuctionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAuctionImplCopyWith<$Res>
    implements $CreateAuctionEventCopyWith<$Res> {
  factory _$$CreateAuctionImplCopyWith(
          _$CreateAuctionImpl value, $Res Function(_$CreateAuctionImpl) then) =
      __$$CreateAuctionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$CreateAuctionImplCopyWithImpl<$Res>
    extends _$CreateAuctionEventCopyWithImpl<$Res, _$CreateAuctionImpl>
    implements _$$CreateAuctionImplCopyWith<$Res> {
  __$$CreateAuctionImplCopyWithImpl(
      _$CreateAuctionImpl _value, $Res Function(_$CreateAuctionImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAuctionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$CreateAuctionImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateAuctionImpl implements _CreateAuction {
  const _$CreateAuctionImpl({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'CreateAuctionEvent.createAuction(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAuctionImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  /// Create a copy of CreateAuctionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAuctionImplCopyWith<_$CreateAuctionImpl> get copyWith =>
      __$$CreateAuctionImplCopyWithImpl<_$CreateAuctionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId) createAuction,
  }) {
    return createAuction(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? createAuction,
  }) {
    return createAuction?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? createAuction,
    required TResult orElse(),
  }) {
    if (createAuction != null) {
      return createAuction(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateAuction value) createAuction,
  }) {
    return createAuction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateAuction value)? createAuction,
  }) {
    return createAuction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateAuction value)? createAuction,
    required TResult orElse(),
  }) {
    if (createAuction != null) {
      return createAuction(this);
    }
    return orElse();
  }
}

abstract class _CreateAuction implements CreateAuctionEvent {
  const factory _CreateAuction({required final int orderId}) =
      _$CreateAuctionImpl;

  @override
  int get orderId;

  /// Create a copy of CreateAuctionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateAuctionImplCopyWith<_$CreateAuctionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateAuctionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() auctionCreated,
    required TResult Function(String errorText) auctionCreationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? auctionCreated,
    TResult? Function(String errorText)? auctionCreationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? auctionCreated,
    TResult Function(String errorText)? auctionCreationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AuctionCreated value) auctionCreated,
    required TResult Function(_AuctionCreationError value) auctionCreationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuctionCreated value)? auctionCreated,
    TResult? Function(_AuctionCreationError value)? auctionCreationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AuctionCreated value)? auctionCreated,
    TResult Function(_AuctionCreationError value)? auctionCreationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAuctionStateCopyWith<$Res> {
  factory $CreateAuctionStateCopyWith(
          CreateAuctionState value, $Res Function(CreateAuctionState) then) =
      _$CreateAuctionStateCopyWithImpl<$Res, CreateAuctionState>;
}

/// @nodoc
class _$CreateAuctionStateCopyWithImpl<$Res, $Val extends CreateAuctionState>
    implements $CreateAuctionStateCopyWith<$Res> {
  _$CreateAuctionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateAuctionState
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
    extends _$CreateAuctionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAuctionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CreateAuctionState.initial()';
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
    required TResult Function() auctionCreated,
    required TResult Function(String errorText) auctionCreationError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? auctionCreated,
    TResult? Function(String errorText)? auctionCreationError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? auctionCreated,
    TResult Function(String errorText)? auctionCreationError,
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
    required TResult Function(_AuctionCreated value) auctionCreated,
    required TResult Function(_AuctionCreationError value) auctionCreationError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuctionCreated value)? auctionCreated,
    TResult? Function(_AuctionCreationError value)? auctionCreationError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AuctionCreated value)? auctionCreated,
    TResult Function(_AuctionCreationError value)? auctionCreationError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateAuctionState {
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
    extends _$CreateAuctionStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAuctionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CreateAuctionState.loading()';
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
    required TResult Function() auctionCreated,
    required TResult Function(String errorText) auctionCreationError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? auctionCreated,
    TResult? Function(String errorText)? auctionCreationError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? auctionCreated,
    TResult Function(String errorText)? auctionCreationError,
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
    required TResult Function(_AuctionCreated value) auctionCreated,
    required TResult Function(_AuctionCreationError value) auctionCreationError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuctionCreated value)? auctionCreated,
    TResult? Function(_AuctionCreationError value)? auctionCreationError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AuctionCreated value)? auctionCreated,
    TResult Function(_AuctionCreationError value)? auctionCreationError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CreateAuctionState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AuctionCreatedImplCopyWith<$Res> {
  factory _$$AuctionCreatedImplCopyWith(_$AuctionCreatedImpl value,
          $Res Function(_$AuctionCreatedImpl) then) =
      __$$AuctionCreatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuctionCreatedImplCopyWithImpl<$Res>
    extends _$CreateAuctionStateCopyWithImpl<$Res, _$AuctionCreatedImpl>
    implements _$$AuctionCreatedImplCopyWith<$Res> {
  __$$AuctionCreatedImplCopyWithImpl(
      _$AuctionCreatedImpl _value, $Res Function(_$AuctionCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAuctionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuctionCreatedImpl implements _AuctionCreated {
  const _$AuctionCreatedImpl();

  @override
  String toString() {
    return 'CreateAuctionState.auctionCreated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuctionCreatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() auctionCreated,
    required TResult Function(String errorText) auctionCreationError,
  }) {
    return auctionCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? auctionCreated,
    TResult? Function(String errorText)? auctionCreationError,
  }) {
    return auctionCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? auctionCreated,
    TResult Function(String errorText)? auctionCreationError,
    required TResult orElse(),
  }) {
    if (auctionCreated != null) {
      return auctionCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AuctionCreated value) auctionCreated,
    required TResult Function(_AuctionCreationError value) auctionCreationError,
  }) {
    return auctionCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuctionCreated value)? auctionCreated,
    TResult? Function(_AuctionCreationError value)? auctionCreationError,
  }) {
    return auctionCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AuctionCreated value)? auctionCreated,
    TResult Function(_AuctionCreationError value)? auctionCreationError,
    required TResult orElse(),
  }) {
    if (auctionCreated != null) {
      return auctionCreated(this);
    }
    return orElse();
  }
}

abstract class _AuctionCreated implements CreateAuctionState {
  const factory _AuctionCreated() = _$AuctionCreatedImpl;
}

/// @nodoc
abstract class _$$AuctionCreationErrorImplCopyWith<$Res> {
  factory _$$AuctionCreationErrorImplCopyWith(_$AuctionCreationErrorImpl value,
          $Res Function(_$AuctionCreationErrorImpl) then) =
      __$$AuctionCreationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorText});
}

/// @nodoc
class __$$AuctionCreationErrorImplCopyWithImpl<$Res>
    extends _$CreateAuctionStateCopyWithImpl<$Res, _$AuctionCreationErrorImpl>
    implements _$$AuctionCreationErrorImplCopyWith<$Res> {
  __$$AuctionCreationErrorImplCopyWithImpl(_$AuctionCreationErrorImpl _value,
      $Res Function(_$AuctionCreationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAuctionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
  }) {
    return _then(_$AuctionCreationErrorImpl(
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuctionCreationErrorImpl implements _AuctionCreationError {
  const _$AuctionCreationErrorImpl({required this.errorText});

  @override
  final String errorText;

  @override
  String toString() {
    return 'CreateAuctionState.auctionCreationError(errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionCreationErrorImpl &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  /// Create a copy of CreateAuctionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionCreationErrorImplCopyWith<_$AuctionCreationErrorImpl>
      get copyWith =>
          __$$AuctionCreationErrorImplCopyWithImpl<_$AuctionCreationErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() auctionCreated,
    required TResult Function(String errorText) auctionCreationError,
  }) {
    return auctionCreationError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? auctionCreated,
    TResult? Function(String errorText)? auctionCreationError,
  }) {
    return auctionCreationError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? auctionCreated,
    TResult Function(String errorText)? auctionCreationError,
    required TResult orElse(),
  }) {
    if (auctionCreationError != null) {
      return auctionCreationError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AuctionCreated value) auctionCreated,
    required TResult Function(_AuctionCreationError value) auctionCreationError,
  }) {
    return auctionCreationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuctionCreated value)? auctionCreated,
    TResult? Function(_AuctionCreationError value)? auctionCreationError,
  }) {
    return auctionCreationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AuctionCreated value)? auctionCreated,
    TResult Function(_AuctionCreationError value)? auctionCreationError,
    required TResult orElse(),
  }) {
    if (auctionCreationError != null) {
      return auctionCreationError(this);
    }
    return orElse();
  }
}

abstract class _AuctionCreationError implements CreateAuctionState {
  const factory _AuctionCreationError({required final String errorText}) =
      _$AuctionCreationErrorImpl;

  String get errorText;

  /// Create a copy of CreateAuctionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionCreationErrorImplCopyWith<_$AuctionCreationErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
