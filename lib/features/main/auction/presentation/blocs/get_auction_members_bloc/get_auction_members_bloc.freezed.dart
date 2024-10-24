// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_auction_members_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetAuctionMembersEvent {
  String get auctionId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String auctionId) getAuctionMembersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String auctionId)? getAuctionMembersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String auctionId)? getAuctionMembersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAuctionMembers value) getAuctionMembersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAuctionMembers value)? getAuctionMembersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAuctionMembers value)? getAuctionMembersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GetAuctionMembersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAuctionMembersEventCopyWith<GetAuctionMembersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAuctionMembersEventCopyWith<$Res> {
  factory $GetAuctionMembersEventCopyWith(GetAuctionMembersEvent value,
          $Res Function(GetAuctionMembersEvent) then) =
      _$GetAuctionMembersEventCopyWithImpl<$Res, GetAuctionMembersEvent>;
  @useResult
  $Res call({String auctionId});
}

/// @nodoc
class _$GetAuctionMembersEventCopyWithImpl<$Res,
        $Val extends GetAuctionMembersEvent>
    implements $GetAuctionMembersEventCopyWith<$Res> {
  _$GetAuctionMembersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAuctionMembersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctionId = null,
  }) {
    return _then(_value.copyWith(
      auctionId: null == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAuctionMembersImplCopyWith<$Res>
    implements $GetAuctionMembersEventCopyWith<$Res> {
  factory _$$GetAuctionMembersImplCopyWith(_$GetAuctionMembersImpl value,
          $Res Function(_$GetAuctionMembersImpl) then) =
      __$$GetAuctionMembersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String auctionId});
}

/// @nodoc
class __$$GetAuctionMembersImplCopyWithImpl<$Res>
    extends _$GetAuctionMembersEventCopyWithImpl<$Res, _$GetAuctionMembersImpl>
    implements _$$GetAuctionMembersImplCopyWith<$Res> {
  __$$GetAuctionMembersImplCopyWithImpl(_$GetAuctionMembersImpl _value,
      $Res Function(_$GetAuctionMembersImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAuctionMembersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctionId = null,
  }) {
    return _then(_$GetAuctionMembersImpl(
      auctionId: null == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAuctionMembersImpl implements GetAuctionMembers {
  const _$GetAuctionMembersImpl({required this.auctionId});

  @override
  final String auctionId;

  @override
  String toString() {
    return 'GetAuctionMembersEvent.getAuctionMembersEvent(auctionId: $auctionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAuctionMembersImpl &&
            (identical(other.auctionId, auctionId) ||
                other.auctionId == auctionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auctionId);

  /// Create a copy of GetAuctionMembersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAuctionMembersImplCopyWith<_$GetAuctionMembersImpl> get copyWith =>
      __$$GetAuctionMembersImplCopyWithImpl<_$GetAuctionMembersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String auctionId) getAuctionMembersEvent,
  }) {
    return getAuctionMembersEvent(auctionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String auctionId)? getAuctionMembersEvent,
  }) {
    return getAuctionMembersEvent?.call(auctionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String auctionId)? getAuctionMembersEvent,
    required TResult orElse(),
  }) {
    if (getAuctionMembersEvent != null) {
      return getAuctionMembersEvent(auctionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAuctionMembers value) getAuctionMembersEvent,
  }) {
    return getAuctionMembersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAuctionMembers value)? getAuctionMembersEvent,
  }) {
    return getAuctionMembersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAuctionMembers value)? getAuctionMembersEvent,
    required TResult orElse(),
  }) {
    if (getAuctionMembersEvent != null) {
      return getAuctionMembersEvent(this);
    }
    return orElse();
  }
}

abstract class GetAuctionMembers implements GetAuctionMembersEvent {
  const factory GetAuctionMembers({required final String auctionId}) =
      _$GetAuctionMembersImpl;

  @override
  String get auctionId;

  /// Create a copy of GetAuctionMembersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAuctionMembersImplCopyWith<_$GetAuctionMembersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetAuctionMembersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AuctionMembersModel> auctionMembersModel)
        auctionMembersLoaded,
    required TResult Function(String errorText) auctionMembersError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AuctionMembersModel> auctionMembersModel)?
        auctionMembersLoaded,
    TResult? Function(String errorText)? auctionMembersError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AuctionMembersModel> auctionMembersModel)?
        auctionMembersLoaded,
    TResult Function(String errorText)? auctionMembersError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AuctionMembersLoaded value) auctionMembersLoaded,
    required TResult Function(_AuctionMembersError value) auctionMembersError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuctionMembersLoaded value)? auctionMembersLoaded,
    TResult? Function(_AuctionMembersError value)? auctionMembersError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AuctionMembersLoaded value)? auctionMembersLoaded,
    TResult Function(_AuctionMembersError value)? auctionMembersError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAuctionMembersStateCopyWith<$Res> {
  factory $GetAuctionMembersStateCopyWith(GetAuctionMembersState value,
          $Res Function(GetAuctionMembersState) then) =
      _$GetAuctionMembersStateCopyWithImpl<$Res, GetAuctionMembersState>;
}

/// @nodoc
class _$GetAuctionMembersStateCopyWithImpl<$Res,
        $Val extends GetAuctionMembersState>
    implements $GetAuctionMembersStateCopyWith<$Res> {
  _$GetAuctionMembersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAuctionMembersState
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
    extends _$GetAuctionMembersStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAuctionMembersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GetAuctionMembersState.initial()';
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
    required TResult Function(List<AuctionMembersModel> auctionMembersModel)
        auctionMembersLoaded,
    required TResult Function(String errorText) auctionMembersError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AuctionMembersModel> auctionMembersModel)?
        auctionMembersLoaded,
    TResult? Function(String errorText)? auctionMembersError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AuctionMembersModel> auctionMembersModel)?
        auctionMembersLoaded,
    TResult Function(String errorText)? auctionMembersError,
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
    required TResult Function(_AuctionMembersLoaded value) auctionMembersLoaded,
    required TResult Function(_AuctionMembersError value) auctionMembersError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuctionMembersLoaded value)? auctionMembersLoaded,
    TResult? Function(_AuctionMembersError value)? auctionMembersError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AuctionMembersLoaded value)? auctionMembersLoaded,
    TResult Function(_AuctionMembersError value)? auctionMembersError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GetAuctionMembersState {
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
    extends _$GetAuctionMembersStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAuctionMembersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'GetAuctionMembersState.loading()';
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
    required TResult Function(List<AuctionMembersModel> auctionMembersModel)
        auctionMembersLoaded,
    required TResult Function(String errorText) auctionMembersError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AuctionMembersModel> auctionMembersModel)?
        auctionMembersLoaded,
    TResult? Function(String errorText)? auctionMembersError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AuctionMembersModel> auctionMembersModel)?
        auctionMembersLoaded,
    TResult Function(String errorText)? auctionMembersError,
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
    required TResult Function(_AuctionMembersLoaded value) auctionMembersLoaded,
    required TResult Function(_AuctionMembersError value) auctionMembersError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuctionMembersLoaded value)? auctionMembersLoaded,
    TResult? Function(_AuctionMembersError value)? auctionMembersError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AuctionMembersLoaded value)? auctionMembersLoaded,
    TResult Function(_AuctionMembersError value)? auctionMembersError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GetAuctionMembersState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AuctionMembersLoadedImplCopyWith<$Res> {
  factory _$$AuctionMembersLoadedImplCopyWith(_$AuctionMembersLoadedImpl value,
          $Res Function(_$AuctionMembersLoadedImpl) then) =
      __$$AuctionMembersLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AuctionMembersModel> auctionMembersModel});
}

/// @nodoc
class __$$AuctionMembersLoadedImplCopyWithImpl<$Res>
    extends _$GetAuctionMembersStateCopyWithImpl<$Res,
        _$AuctionMembersLoadedImpl>
    implements _$$AuctionMembersLoadedImplCopyWith<$Res> {
  __$$AuctionMembersLoadedImplCopyWithImpl(_$AuctionMembersLoadedImpl _value,
      $Res Function(_$AuctionMembersLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAuctionMembersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctionMembersModel = null,
  }) {
    return _then(_$AuctionMembersLoadedImpl(
      auctionMembersModel: null == auctionMembersModel
          ? _value._auctionMembersModel
          : auctionMembersModel // ignore: cast_nullable_to_non_nullable
              as List<AuctionMembersModel>,
    ));
  }
}

/// @nodoc

class _$AuctionMembersLoadedImpl implements _AuctionMembersLoaded {
  const _$AuctionMembersLoadedImpl(
      {required final List<AuctionMembersModel> auctionMembersModel})
      : _auctionMembersModel = auctionMembersModel;

  final List<AuctionMembersModel> _auctionMembersModel;
  @override
  List<AuctionMembersModel> get auctionMembersModel {
    if (_auctionMembersModel is EqualUnmodifiableListView)
      return _auctionMembersModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_auctionMembersModel);
  }

  @override
  String toString() {
    return 'GetAuctionMembersState.auctionMembersLoaded(auctionMembersModel: $auctionMembersModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionMembersLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._auctionMembersModel, _auctionMembersModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_auctionMembersModel));

  /// Create a copy of GetAuctionMembersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionMembersLoadedImplCopyWith<_$AuctionMembersLoadedImpl>
      get copyWith =>
          __$$AuctionMembersLoadedImplCopyWithImpl<_$AuctionMembersLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AuctionMembersModel> auctionMembersModel)
        auctionMembersLoaded,
    required TResult Function(String errorText) auctionMembersError,
  }) {
    return auctionMembersLoaded(auctionMembersModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AuctionMembersModel> auctionMembersModel)?
        auctionMembersLoaded,
    TResult? Function(String errorText)? auctionMembersError,
  }) {
    return auctionMembersLoaded?.call(auctionMembersModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AuctionMembersModel> auctionMembersModel)?
        auctionMembersLoaded,
    TResult Function(String errorText)? auctionMembersError,
    required TResult orElse(),
  }) {
    if (auctionMembersLoaded != null) {
      return auctionMembersLoaded(auctionMembersModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AuctionMembersLoaded value) auctionMembersLoaded,
    required TResult Function(_AuctionMembersError value) auctionMembersError,
  }) {
    return auctionMembersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuctionMembersLoaded value)? auctionMembersLoaded,
    TResult? Function(_AuctionMembersError value)? auctionMembersError,
  }) {
    return auctionMembersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AuctionMembersLoaded value)? auctionMembersLoaded,
    TResult Function(_AuctionMembersError value)? auctionMembersError,
    required TResult orElse(),
  }) {
    if (auctionMembersLoaded != null) {
      return auctionMembersLoaded(this);
    }
    return orElse();
  }
}

abstract class _AuctionMembersLoaded implements GetAuctionMembersState {
  const factory _AuctionMembersLoaded(
          {required final List<AuctionMembersModel> auctionMembersModel}) =
      _$AuctionMembersLoadedImpl;

  List<AuctionMembersModel> get auctionMembersModel;

  /// Create a copy of GetAuctionMembersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionMembersLoadedImplCopyWith<_$AuctionMembersLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuctionMembersErrorImplCopyWith<$Res> {
  factory _$$AuctionMembersErrorImplCopyWith(_$AuctionMembersErrorImpl value,
          $Res Function(_$AuctionMembersErrorImpl) then) =
      __$$AuctionMembersErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorText});
}

/// @nodoc
class __$$AuctionMembersErrorImplCopyWithImpl<$Res>
    extends _$GetAuctionMembersStateCopyWithImpl<$Res,
        _$AuctionMembersErrorImpl>
    implements _$$AuctionMembersErrorImplCopyWith<$Res> {
  __$$AuctionMembersErrorImplCopyWithImpl(_$AuctionMembersErrorImpl _value,
      $Res Function(_$AuctionMembersErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAuctionMembersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
  }) {
    return _then(_$AuctionMembersErrorImpl(
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuctionMembersErrorImpl implements _AuctionMembersError {
  const _$AuctionMembersErrorImpl({required this.errorText});

  @override
  final String errorText;

  @override
  String toString() {
    return 'GetAuctionMembersState.auctionMembersError(errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionMembersErrorImpl &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  /// Create a copy of GetAuctionMembersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionMembersErrorImplCopyWith<_$AuctionMembersErrorImpl> get copyWith =>
      __$$AuctionMembersErrorImplCopyWithImpl<_$AuctionMembersErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AuctionMembersModel> auctionMembersModel)
        auctionMembersLoaded,
    required TResult Function(String errorText) auctionMembersError,
  }) {
    return auctionMembersError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AuctionMembersModel> auctionMembersModel)?
        auctionMembersLoaded,
    TResult? Function(String errorText)? auctionMembersError,
  }) {
    return auctionMembersError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AuctionMembersModel> auctionMembersModel)?
        auctionMembersLoaded,
    TResult Function(String errorText)? auctionMembersError,
    required TResult orElse(),
  }) {
    if (auctionMembersError != null) {
      return auctionMembersError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AuctionMembersLoaded value) auctionMembersLoaded,
    required TResult Function(_AuctionMembersError value) auctionMembersError,
  }) {
    return auctionMembersError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuctionMembersLoaded value)? auctionMembersLoaded,
    TResult? Function(_AuctionMembersError value)? auctionMembersError,
  }) {
    return auctionMembersError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AuctionMembersLoaded value)? auctionMembersLoaded,
    TResult Function(_AuctionMembersError value)? auctionMembersError,
    required TResult orElse(),
  }) {
    if (auctionMembersError != null) {
      return auctionMembersError(this);
    }
    return orElse();
  }
}

abstract class _AuctionMembersError implements GetAuctionMembersState {
  const factory _AuctionMembersError({required final String errorText}) =
      _$AuctionMembersErrorImpl;

  String get errorText;

  /// Create a copy of GetAuctionMembersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionMembersErrorImplCopyWith<_$AuctionMembersErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
