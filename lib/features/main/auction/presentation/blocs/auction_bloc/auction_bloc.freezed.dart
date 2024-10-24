// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuctionEvent {
  String get auctionId => throw _privateConstructorUsedError;
  String get manufacturerId => throw _privateConstructorUsedError;
  double get bidPrice => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String auctionId, String manufacturerId,
            double bidPrice, String currencyCode)
        makeBid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String auctionId, String manufacturerId, double bidPrice,
            String currencyCode)?
        makeBid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String auctionId, String manufacturerId, double bidPrice,
            String currencyCode)?
        makeBid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MakeBidEvent value) makeBid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MakeBidEvent value)? makeBid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakeBidEvent value)? makeBid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AuctionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionEventCopyWith<AuctionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionEventCopyWith<$Res> {
  factory $AuctionEventCopyWith(
          AuctionEvent value, $Res Function(AuctionEvent) then) =
      _$AuctionEventCopyWithImpl<$Res, AuctionEvent>;
  @useResult
  $Res call(
      {String auctionId,
      String manufacturerId,
      double bidPrice,
      String currencyCode});
}

/// @nodoc
class _$AuctionEventCopyWithImpl<$Res, $Val extends AuctionEvent>
    implements $AuctionEventCopyWith<$Res> {
  _$AuctionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctionId = null,
    Object? manufacturerId = null,
    Object? bidPrice = null,
    Object? currencyCode = null,
  }) {
    return _then(_value.copyWith(
      auctionId: null == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturerId: null == manufacturerId
          ? _value.manufacturerId
          : manufacturerId // ignore: cast_nullable_to_non_nullable
              as String,
      bidPrice: null == bidPrice
          ? _value.bidPrice
          : bidPrice // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MakeBidEventImplCopyWith<$Res>
    implements $AuctionEventCopyWith<$Res> {
  factory _$$MakeBidEventImplCopyWith(
          _$MakeBidEventImpl value, $Res Function(_$MakeBidEventImpl) then) =
      __$$MakeBidEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String auctionId,
      String manufacturerId,
      double bidPrice,
      String currencyCode});
}

/// @nodoc
class __$$MakeBidEventImplCopyWithImpl<$Res>
    extends _$AuctionEventCopyWithImpl<$Res, _$MakeBidEventImpl>
    implements _$$MakeBidEventImplCopyWith<$Res> {
  __$$MakeBidEventImplCopyWithImpl(
      _$MakeBidEventImpl _value, $Res Function(_$MakeBidEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuctionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctionId = null,
    Object? manufacturerId = null,
    Object? bidPrice = null,
    Object? currencyCode = null,
  }) {
    return _then(_$MakeBidEventImpl(
      auctionId: null == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturerId: null == manufacturerId
          ? _value.manufacturerId
          : manufacturerId // ignore: cast_nullable_to_non_nullable
              as String,
      bidPrice: null == bidPrice
          ? _value.bidPrice
          : bidPrice // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MakeBidEventImpl implements MakeBidEvent {
  const _$MakeBidEventImpl(
      {required this.auctionId,
      required this.manufacturerId,
      required this.bidPrice,
      required this.currencyCode});

  @override
  final String auctionId;
  @override
  final String manufacturerId;
  @override
  final double bidPrice;
  @override
  final String currencyCode;

  @override
  String toString() {
    return 'AuctionEvent.makeBid(auctionId: $auctionId, manufacturerId: $manufacturerId, bidPrice: $bidPrice, currencyCode: $currencyCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakeBidEventImpl &&
            (identical(other.auctionId, auctionId) ||
                other.auctionId == auctionId) &&
            (identical(other.manufacturerId, manufacturerId) ||
                other.manufacturerId == manufacturerId) &&
            (identical(other.bidPrice, bidPrice) ||
                other.bidPrice == bidPrice) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, auctionId, manufacturerId, bidPrice, currencyCode);

  /// Create a copy of AuctionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MakeBidEventImplCopyWith<_$MakeBidEventImpl> get copyWith =>
      __$$MakeBidEventImplCopyWithImpl<_$MakeBidEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String auctionId, String manufacturerId,
            double bidPrice, String currencyCode)
        makeBid,
  }) {
    return makeBid(auctionId, manufacturerId, bidPrice, currencyCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String auctionId, String manufacturerId, double bidPrice,
            String currencyCode)?
        makeBid,
  }) {
    return makeBid?.call(auctionId, manufacturerId, bidPrice, currencyCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String auctionId, String manufacturerId, double bidPrice,
            String currencyCode)?
        makeBid,
    required TResult orElse(),
  }) {
    if (makeBid != null) {
      return makeBid(auctionId, manufacturerId, bidPrice, currencyCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MakeBidEvent value) makeBid,
  }) {
    return makeBid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MakeBidEvent value)? makeBid,
  }) {
    return makeBid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakeBidEvent value)? makeBid,
    required TResult orElse(),
  }) {
    if (makeBid != null) {
      return makeBid(this);
    }
    return orElse();
  }
}

abstract class MakeBidEvent implements AuctionEvent {
  const factory MakeBidEvent(
      {required final String auctionId,
      required final String manufacturerId,
      required final double bidPrice,
      required final String currencyCode}) = _$MakeBidEventImpl;

  @override
  String get auctionId;
  @override
  String get manufacturerId;
  @override
  double get bidPrice;
  @override
  String get currencyCode;

  /// Create a copy of AuctionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MakeBidEventImplCopyWith<_$MakeBidEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuctionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuctionModel model) makeBidSuccess,
    required TResult Function(String errorText) makeBidError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuctionModel model)? makeBidSuccess,
    TResult? Function(String errorText)? makeBidError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuctionModel model)? makeBidSuccess,
    TResult Function(String errorText)? makeBidError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_MakeBidSuccess value) makeBidSuccess,
    required TResult Function(_MakeBidError value) makeBidError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_MakeBidSuccess value)? makeBidSuccess,
    TResult? Function(_MakeBidError value)? makeBidError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_MakeBidSuccess value)? makeBidSuccess,
    TResult Function(_MakeBidError value)? makeBidError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionStateCopyWith<$Res> {
  factory $AuctionStateCopyWith(
          AuctionState value, $Res Function(AuctionState) then) =
      _$AuctionStateCopyWithImpl<$Res, AuctionState>;
}

/// @nodoc
class _$AuctionStateCopyWithImpl<$Res, $Val extends AuctionState>
    implements $AuctionStateCopyWith<$Res> {
  _$AuctionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionState
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
    extends _$AuctionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuctionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuctionState.initial()';
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
    required TResult Function(AuctionModel model) makeBidSuccess,
    required TResult Function(String errorText) makeBidError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuctionModel model)? makeBidSuccess,
    TResult? Function(String errorText)? makeBidError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuctionModel model)? makeBidSuccess,
    TResult Function(String errorText)? makeBidError,
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
    required TResult Function(_MakeBidSuccess value) makeBidSuccess,
    required TResult Function(_MakeBidError value) makeBidError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_MakeBidSuccess value)? makeBidSuccess,
    TResult? Function(_MakeBidError value)? makeBidError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_MakeBidSuccess value)? makeBidSuccess,
    TResult Function(_MakeBidError value)? makeBidError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuctionState {
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
    extends _$AuctionStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuctionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuctionState.loading()';
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
    required TResult Function(AuctionModel model) makeBidSuccess,
    required TResult Function(String errorText) makeBidError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuctionModel model)? makeBidSuccess,
    TResult? Function(String errorText)? makeBidError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuctionModel model)? makeBidSuccess,
    TResult Function(String errorText)? makeBidError,
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
    required TResult Function(_MakeBidSuccess value) makeBidSuccess,
    required TResult Function(_MakeBidError value) makeBidError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_MakeBidSuccess value)? makeBidSuccess,
    TResult? Function(_MakeBidError value)? makeBidError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_MakeBidSuccess value)? makeBidSuccess,
    TResult Function(_MakeBidError value)? makeBidError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuctionState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$MakeBidSuccessImplCopyWith<$Res> {
  factory _$$MakeBidSuccessImplCopyWith(_$MakeBidSuccessImpl value,
          $Res Function(_$MakeBidSuccessImpl) then) =
      __$$MakeBidSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuctionModel model});

  $AuctionModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$MakeBidSuccessImplCopyWithImpl<$Res>
    extends _$AuctionStateCopyWithImpl<$Res, _$MakeBidSuccessImpl>
    implements _$$MakeBidSuccessImplCopyWith<$Res> {
  __$$MakeBidSuccessImplCopyWithImpl(
      _$MakeBidSuccessImpl _value, $Res Function(_$MakeBidSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuctionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$MakeBidSuccessImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AuctionModel,
    ));
  }

  /// Create a copy of AuctionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuctionModelCopyWith<$Res> get model {
    return $AuctionModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$MakeBidSuccessImpl implements _MakeBidSuccess {
  const _$MakeBidSuccessImpl({required this.model});

  @override
  final AuctionModel model;

  @override
  String toString() {
    return 'AuctionState.makeBidSuccess(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakeBidSuccessImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of AuctionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MakeBidSuccessImplCopyWith<_$MakeBidSuccessImpl> get copyWith =>
      __$$MakeBidSuccessImplCopyWithImpl<_$MakeBidSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuctionModel model) makeBidSuccess,
    required TResult Function(String errorText) makeBidError,
  }) {
    return makeBidSuccess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuctionModel model)? makeBidSuccess,
    TResult? Function(String errorText)? makeBidError,
  }) {
    return makeBidSuccess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuctionModel model)? makeBidSuccess,
    TResult Function(String errorText)? makeBidError,
    required TResult orElse(),
  }) {
    if (makeBidSuccess != null) {
      return makeBidSuccess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_MakeBidSuccess value) makeBidSuccess,
    required TResult Function(_MakeBidError value) makeBidError,
  }) {
    return makeBidSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_MakeBidSuccess value)? makeBidSuccess,
    TResult? Function(_MakeBidError value)? makeBidError,
  }) {
    return makeBidSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_MakeBidSuccess value)? makeBidSuccess,
    TResult Function(_MakeBidError value)? makeBidError,
    required TResult orElse(),
  }) {
    if (makeBidSuccess != null) {
      return makeBidSuccess(this);
    }
    return orElse();
  }
}

abstract class _MakeBidSuccess implements AuctionState {
  const factory _MakeBidSuccess({required final AuctionModel model}) =
      _$MakeBidSuccessImpl;

  AuctionModel get model;

  /// Create a copy of AuctionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MakeBidSuccessImplCopyWith<_$MakeBidSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MakeBidErrorImplCopyWith<$Res> {
  factory _$$MakeBidErrorImplCopyWith(
          _$MakeBidErrorImpl value, $Res Function(_$MakeBidErrorImpl) then) =
      __$$MakeBidErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorText});
}

/// @nodoc
class __$$MakeBidErrorImplCopyWithImpl<$Res>
    extends _$AuctionStateCopyWithImpl<$Res, _$MakeBidErrorImpl>
    implements _$$MakeBidErrorImplCopyWith<$Res> {
  __$$MakeBidErrorImplCopyWithImpl(
      _$MakeBidErrorImpl _value, $Res Function(_$MakeBidErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuctionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
  }) {
    return _then(_$MakeBidErrorImpl(
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MakeBidErrorImpl implements _MakeBidError {
  const _$MakeBidErrorImpl({required this.errorText});

  @override
  final String errorText;

  @override
  String toString() {
    return 'AuctionState.makeBidError(errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakeBidErrorImpl &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  /// Create a copy of AuctionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MakeBidErrorImplCopyWith<_$MakeBidErrorImpl> get copyWith =>
      __$$MakeBidErrorImplCopyWithImpl<_$MakeBidErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuctionModel model) makeBidSuccess,
    required TResult Function(String errorText) makeBidError,
  }) {
    return makeBidError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuctionModel model)? makeBidSuccess,
    TResult? Function(String errorText)? makeBidError,
  }) {
    return makeBidError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuctionModel model)? makeBidSuccess,
    TResult Function(String errorText)? makeBidError,
    required TResult orElse(),
  }) {
    if (makeBidError != null) {
      return makeBidError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_MakeBidSuccess value) makeBidSuccess,
    required TResult Function(_MakeBidError value) makeBidError,
  }) {
    return makeBidError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_MakeBidSuccess value)? makeBidSuccess,
    TResult? Function(_MakeBidError value)? makeBidError,
  }) {
    return makeBidError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_MakeBidSuccess value)? makeBidSuccess,
    TResult Function(_MakeBidError value)? makeBidError,
    required TResult orElse(),
  }) {
    if (makeBidError != null) {
      return makeBidError(this);
    }
    return orElse();
  }
}

abstract class _MakeBidError implements AuctionState {
  const factory _MakeBidError({required final String errorText}) =
      _$MakeBidErrorImpl;

  String get errorText;

  /// Create a copy of AuctionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MakeBidErrorImplCopyWith<_$MakeBidErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
