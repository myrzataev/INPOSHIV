// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_rooms_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatRoomsEvent {
  String get userUuid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUuid) getChatRoomsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUuid)? getChatRoomsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUuid)? getChatRoomsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChatRoomsList value) getChatRoomsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChatRoomsList value)? getChatRoomsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChatRoomsList value)? getChatRoomsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ChatRoomsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatRoomsEventCopyWith<ChatRoomsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomsEventCopyWith<$Res> {
  factory $ChatRoomsEventCopyWith(
          ChatRoomsEvent value, $Res Function(ChatRoomsEvent) then) =
      _$ChatRoomsEventCopyWithImpl<$Res, ChatRoomsEvent>;
  @useResult
  $Res call({String userUuid});
}

/// @nodoc
class _$ChatRoomsEventCopyWithImpl<$Res, $Val extends ChatRoomsEvent>
    implements $ChatRoomsEventCopyWith<$Res> {
  _$ChatRoomsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatRoomsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUuid = null,
  }) {
    return _then(_value.copyWith(
      userUuid: null == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetChatRoomsListImplCopyWith<$Res>
    implements $ChatRoomsEventCopyWith<$Res> {
  factory _$$GetChatRoomsListImplCopyWith(_$GetChatRoomsListImpl value,
          $Res Function(_$GetChatRoomsListImpl) then) =
      __$$GetChatRoomsListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userUuid});
}

/// @nodoc
class __$$GetChatRoomsListImplCopyWithImpl<$Res>
    extends _$ChatRoomsEventCopyWithImpl<$Res, _$GetChatRoomsListImpl>
    implements _$$GetChatRoomsListImplCopyWith<$Res> {
  __$$GetChatRoomsListImplCopyWithImpl(_$GetChatRoomsListImpl _value,
      $Res Function(_$GetChatRoomsListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatRoomsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUuid = null,
  }) {
    return _then(_$GetChatRoomsListImpl(
      userUuid: null == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetChatRoomsListImpl implements _GetChatRoomsList {
  const _$GetChatRoomsListImpl({required this.userUuid});

  @override
  final String userUuid;

  @override
  String toString() {
    return 'ChatRoomsEvent.getChatRoomsList(userUuid: $userUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChatRoomsListImpl &&
            (identical(other.userUuid, userUuid) ||
                other.userUuid == userUuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userUuid);

  /// Create a copy of ChatRoomsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChatRoomsListImplCopyWith<_$GetChatRoomsListImpl> get copyWith =>
      __$$GetChatRoomsListImplCopyWithImpl<_$GetChatRoomsListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUuid) getChatRoomsList,
  }) {
    return getChatRoomsList(userUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUuid)? getChatRoomsList,
  }) {
    return getChatRoomsList?.call(userUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUuid)? getChatRoomsList,
    required TResult orElse(),
  }) {
    if (getChatRoomsList != null) {
      return getChatRoomsList(userUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChatRoomsList value) getChatRoomsList,
  }) {
    return getChatRoomsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChatRoomsList value)? getChatRoomsList,
  }) {
    return getChatRoomsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChatRoomsList value)? getChatRoomsList,
    required TResult orElse(),
  }) {
    if (getChatRoomsList != null) {
      return getChatRoomsList(this);
    }
    return orElse();
  }
}

abstract class _GetChatRoomsList implements ChatRoomsEvent {
  const factory _GetChatRoomsList({required final String userUuid}) =
      _$GetChatRoomsListImpl;

  @override
  String get userUuid;

  /// Create a copy of ChatRoomsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetChatRoomsListImplCopyWith<_$GetChatRoomsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatRoomsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CreateChatRoomModel> model) chatRoomsLoaded,
    required TResult Function(AppError error) chatRoomsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CreateChatRoomModel> model)? chatRoomsLoaded,
    TResult? Function(AppError error)? chatRoomsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CreateChatRoomModel> model)? chatRoomsLoaded,
    TResult Function(AppError error)? chatRoomsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ChatRoomsLoaded value) chatRoomsLoaded,
    required TResult Function(_ChatRoomsError value) chatRoomsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChatRoomsLoaded value)? chatRoomsLoaded,
    TResult? Function(_ChatRoomsError value)? chatRoomsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ChatRoomsLoaded value)? chatRoomsLoaded,
    TResult Function(_ChatRoomsError value)? chatRoomsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomsStateCopyWith<$Res> {
  factory $ChatRoomsStateCopyWith(
          ChatRoomsState value, $Res Function(ChatRoomsState) then) =
      _$ChatRoomsStateCopyWithImpl<$Res, ChatRoomsState>;
}

/// @nodoc
class _$ChatRoomsStateCopyWithImpl<$Res, $Val extends ChatRoomsState>
    implements $ChatRoomsStateCopyWith<$Res> {
  _$ChatRoomsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatRoomsState
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
    extends _$ChatRoomsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatRoomsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChatRoomsState.initial()';
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
    required TResult Function(List<CreateChatRoomModel> model) chatRoomsLoaded,
    required TResult Function(AppError error) chatRoomsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CreateChatRoomModel> model)? chatRoomsLoaded,
    TResult? Function(AppError error)? chatRoomsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CreateChatRoomModel> model)? chatRoomsLoaded,
    TResult Function(AppError error)? chatRoomsError,
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
    required TResult Function(_ChatRoomsLoaded value) chatRoomsLoaded,
    required TResult Function(_ChatRoomsError value) chatRoomsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChatRoomsLoaded value)? chatRoomsLoaded,
    TResult? Function(_ChatRoomsError value)? chatRoomsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ChatRoomsLoaded value)? chatRoomsLoaded,
    TResult Function(_ChatRoomsError value)? chatRoomsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatRoomsState {
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
    extends _$ChatRoomsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatRoomsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ChatRoomsState.loading()';
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
    required TResult Function(List<CreateChatRoomModel> model) chatRoomsLoaded,
    required TResult Function(AppError error) chatRoomsError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CreateChatRoomModel> model)? chatRoomsLoaded,
    TResult? Function(AppError error)? chatRoomsError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CreateChatRoomModel> model)? chatRoomsLoaded,
    TResult Function(AppError error)? chatRoomsError,
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
    required TResult Function(_ChatRoomsLoaded value) chatRoomsLoaded,
    required TResult Function(_ChatRoomsError value) chatRoomsError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChatRoomsLoaded value)? chatRoomsLoaded,
    TResult? Function(_ChatRoomsError value)? chatRoomsError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ChatRoomsLoaded value)? chatRoomsLoaded,
    TResult Function(_ChatRoomsError value)? chatRoomsError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatRoomsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ChatRoomsLoadedImplCopyWith<$Res> {
  factory _$$ChatRoomsLoadedImplCopyWith(_$ChatRoomsLoadedImpl value,
          $Res Function(_$ChatRoomsLoadedImpl) then) =
      __$$ChatRoomsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CreateChatRoomModel> model});
}

/// @nodoc
class __$$ChatRoomsLoadedImplCopyWithImpl<$Res>
    extends _$ChatRoomsStateCopyWithImpl<$Res, _$ChatRoomsLoadedImpl>
    implements _$$ChatRoomsLoadedImplCopyWith<$Res> {
  __$$ChatRoomsLoadedImplCopyWithImpl(
      _$ChatRoomsLoadedImpl _value, $Res Function(_$ChatRoomsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatRoomsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$ChatRoomsLoadedImpl(
      model: null == model
          ? _value._model
          : model // ignore: cast_nullable_to_non_nullable
              as List<CreateChatRoomModel>,
    ));
  }
}

/// @nodoc

class _$ChatRoomsLoadedImpl implements _ChatRoomsLoaded {
  const _$ChatRoomsLoadedImpl({required final List<CreateChatRoomModel> model})
      : _model = model;

  final List<CreateChatRoomModel> _model;
  @override
  List<CreateChatRoomModel> get model {
    if (_model is EqualUnmodifiableListView) return _model;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_model);
  }

  @override
  String toString() {
    return 'ChatRoomsState.chatRoomsLoaded(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomsLoadedImpl &&
            const DeepCollectionEquality().equals(other._model, _model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_model));

  /// Create a copy of ChatRoomsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoomsLoadedImplCopyWith<_$ChatRoomsLoadedImpl> get copyWith =>
      __$$ChatRoomsLoadedImplCopyWithImpl<_$ChatRoomsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CreateChatRoomModel> model) chatRoomsLoaded,
    required TResult Function(AppError error) chatRoomsError,
  }) {
    return chatRoomsLoaded(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CreateChatRoomModel> model)? chatRoomsLoaded,
    TResult? Function(AppError error)? chatRoomsError,
  }) {
    return chatRoomsLoaded?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CreateChatRoomModel> model)? chatRoomsLoaded,
    TResult Function(AppError error)? chatRoomsError,
    required TResult orElse(),
  }) {
    if (chatRoomsLoaded != null) {
      return chatRoomsLoaded(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ChatRoomsLoaded value) chatRoomsLoaded,
    required TResult Function(_ChatRoomsError value) chatRoomsError,
  }) {
    return chatRoomsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChatRoomsLoaded value)? chatRoomsLoaded,
    TResult? Function(_ChatRoomsError value)? chatRoomsError,
  }) {
    return chatRoomsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ChatRoomsLoaded value)? chatRoomsLoaded,
    TResult Function(_ChatRoomsError value)? chatRoomsError,
    required TResult orElse(),
  }) {
    if (chatRoomsLoaded != null) {
      return chatRoomsLoaded(this);
    }
    return orElse();
  }
}

abstract class _ChatRoomsLoaded implements ChatRoomsState {
  const factory _ChatRoomsLoaded(
      {required final List<CreateChatRoomModel> model}) = _$ChatRoomsLoadedImpl;

  List<CreateChatRoomModel> get model;

  /// Create a copy of ChatRoomsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatRoomsLoadedImplCopyWith<_$ChatRoomsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatRoomsErrorImplCopyWith<$Res> {
  factory _$$ChatRoomsErrorImplCopyWith(_$ChatRoomsErrorImpl value,
          $Res Function(_$ChatRoomsErrorImpl) then) =
      __$$ChatRoomsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppError error});
}

/// @nodoc
class __$$ChatRoomsErrorImplCopyWithImpl<$Res>
    extends _$ChatRoomsStateCopyWithImpl<$Res, _$ChatRoomsErrorImpl>
    implements _$$ChatRoomsErrorImplCopyWith<$Res> {
  __$$ChatRoomsErrorImplCopyWithImpl(
      _$ChatRoomsErrorImpl _value, $Res Function(_$ChatRoomsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatRoomsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ChatRoomsErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$ChatRoomsErrorImpl implements _ChatRoomsError {
  const _$ChatRoomsErrorImpl({required this.error});

  @override
  final AppError error;

  @override
  String toString() {
    return 'ChatRoomsState.chatRoomsError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomsErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ChatRoomsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoomsErrorImplCopyWith<_$ChatRoomsErrorImpl> get copyWith =>
      __$$ChatRoomsErrorImplCopyWithImpl<_$ChatRoomsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CreateChatRoomModel> model) chatRoomsLoaded,
    required TResult Function(AppError error) chatRoomsError,
  }) {
    return chatRoomsError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CreateChatRoomModel> model)? chatRoomsLoaded,
    TResult? Function(AppError error)? chatRoomsError,
  }) {
    return chatRoomsError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CreateChatRoomModel> model)? chatRoomsLoaded,
    TResult Function(AppError error)? chatRoomsError,
    required TResult orElse(),
  }) {
    if (chatRoomsError != null) {
      return chatRoomsError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ChatRoomsLoaded value) chatRoomsLoaded,
    required TResult Function(_ChatRoomsError value) chatRoomsError,
  }) {
    return chatRoomsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ChatRoomsLoaded value)? chatRoomsLoaded,
    TResult? Function(_ChatRoomsError value)? chatRoomsError,
  }) {
    return chatRoomsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ChatRoomsLoaded value)? chatRoomsLoaded,
    TResult Function(_ChatRoomsError value)? chatRoomsError,
    required TResult orElse(),
  }) {
    if (chatRoomsError != null) {
      return chatRoomsError(this);
    }
    return orElse();
  }
}

abstract class _ChatRoomsError implements ChatRoomsState {
  const factory _ChatRoomsError({required final AppError error}) =
      _$ChatRoomsErrorImpl;

  AppError get error;

  /// Create a copy of ChatRoomsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatRoomsErrorImplCopyWith<_$ChatRoomsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
