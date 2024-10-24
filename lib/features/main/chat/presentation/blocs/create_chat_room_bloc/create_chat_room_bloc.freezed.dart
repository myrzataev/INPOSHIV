// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_chat_room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateChatRoomEvent {
  Map<String, dynamic> get chatData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> chatData) createChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chatData)? createChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chatData)? createChatRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateChatRoom value) createChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateChatRoom value)? createChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateChatRoom value)? createChatRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CreateChatRoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateChatRoomEventCopyWith<CreateChatRoomEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateChatRoomEventCopyWith<$Res> {
  factory $CreateChatRoomEventCopyWith(
          CreateChatRoomEvent value, $Res Function(CreateChatRoomEvent) then) =
      _$CreateChatRoomEventCopyWithImpl<$Res, CreateChatRoomEvent>;
  @useResult
  $Res call({Map<String, dynamic> chatData});
}

/// @nodoc
class _$CreateChatRoomEventCopyWithImpl<$Res, $Val extends CreateChatRoomEvent>
    implements $CreateChatRoomEventCopyWith<$Res> {
  _$CreateChatRoomEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateChatRoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatData = null,
  }) {
    return _then(_value.copyWith(
      chatData: null == chatData
          ? _value.chatData
          : chatData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateChatRoomImplCopyWith<$Res>
    implements $CreateChatRoomEventCopyWith<$Res> {
  factory _$$CreateChatRoomImplCopyWith(_$CreateChatRoomImpl value,
          $Res Function(_$CreateChatRoomImpl) then) =
      __$$CreateChatRoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> chatData});
}

/// @nodoc
class __$$CreateChatRoomImplCopyWithImpl<$Res>
    extends _$CreateChatRoomEventCopyWithImpl<$Res, _$CreateChatRoomImpl>
    implements _$$CreateChatRoomImplCopyWith<$Res> {
  __$$CreateChatRoomImplCopyWithImpl(
      _$CreateChatRoomImpl _value, $Res Function(_$CreateChatRoomImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateChatRoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatData = null,
  }) {
    return _then(_$CreateChatRoomImpl(
      chatData: null == chatData
          ? _value._chatData
          : chatData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$CreateChatRoomImpl implements _CreateChatRoom {
  const _$CreateChatRoomImpl({required final Map<String, dynamic> chatData})
      : _chatData = chatData;

  final Map<String, dynamic> _chatData;
  @override
  Map<String, dynamic> get chatData {
    if (_chatData is EqualUnmodifiableMapView) return _chatData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_chatData);
  }

  @override
  String toString() {
    return 'CreateChatRoomEvent.createChatRoom(chatData: $chatData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateChatRoomImpl &&
            const DeepCollectionEquality().equals(other._chatData, _chatData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chatData));

  /// Create a copy of CreateChatRoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateChatRoomImplCopyWith<_$CreateChatRoomImpl> get copyWith =>
      __$$CreateChatRoomImplCopyWithImpl<_$CreateChatRoomImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> chatData) createChatRoom,
  }) {
    return createChatRoom(chatData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> chatData)? createChatRoom,
  }) {
    return createChatRoom?.call(chatData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> chatData)? createChatRoom,
    required TResult orElse(),
  }) {
    if (createChatRoom != null) {
      return createChatRoom(chatData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateChatRoom value) createChatRoom,
  }) {
    return createChatRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateChatRoom value)? createChatRoom,
  }) {
    return createChatRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateChatRoom value)? createChatRoom,
    required TResult orElse(),
  }) {
    if (createChatRoom != null) {
      return createChatRoom(this);
    }
    return orElse();
  }
}

abstract class _CreateChatRoom implements CreateChatRoomEvent {
  const factory _CreateChatRoom(
      {required final Map<String, dynamic> chatData}) = _$CreateChatRoomImpl;

  @override
  Map<String, dynamic> get chatData;

  /// Create a copy of CreateChatRoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateChatRoomImplCopyWith<_$CreateChatRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateChatRoomState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateChatRoomModel model) createdChatRoomSuccess,
    required TResult Function(String errorText) createChatRoomError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateChatRoomModel model)? createdChatRoomSuccess,
    TResult? Function(String errorText)? createChatRoomError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateChatRoomModel model)? createdChatRoomSuccess,
    TResult Function(String errorText)? createChatRoomError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CreatedChatRoomSuccess value)
        createdChatRoomSuccess,
    required TResult Function(_CreateChatRoomError value) createChatRoomError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreatedChatRoomSuccess value)? createdChatRoomSuccess,
    TResult? Function(_CreateChatRoomError value)? createChatRoomError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreatedChatRoomSuccess value)? createdChatRoomSuccess,
    TResult Function(_CreateChatRoomError value)? createChatRoomError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateChatRoomStateCopyWith<$Res> {
  factory $CreateChatRoomStateCopyWith(
          CreateChatRoomState value, $Res Function(CreateChatRoomState) then) =
      _$CreateChatRoomStateCopyWithImpl<$Res, CreateChatRoomState>;
}

/// @nodoc
class _$CreateChatRoomStateCopyWithImpl<$Res, $Val extends CreateChatRoomState>
    implements $CreateChatRoomStateCopyWith<$Res> {
  _$CreateChatRoomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateChatRoomState
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
    extends _$CreateChatRoomStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateChatRoomState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CreateChatRoomState.initial()';
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
    required TResult Function(CreateChatRoomModel model) createdChatRoomSuccess,
    required TResult Function(String errorText) createChatRoomError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateChatRoomModel model)? createdChatRoomSuccess,
    TResult? Function(String errorText)? createChatRoomError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateChatRoomModel model)? createdChatRoomSuccess,
    TResult Function(String errorText)? createChatRoomError,
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
    required TResult Function(_CreatedChatRoomSuccess value)
        createdChatRoomSuccess,
    required TResult Function(_CreateChatRoomError value) createChatRoomError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreatedChatRoomSuccess value)? createdChatRoomSuccess,
    TResult? Function(_CreateChatRoomError value)? createChatRoomError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreatedChatRoomSuccess value)? createdChatRoomSuccess,
    TResult Function(_CreateChatRoomError value)? createChatRoomError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateChatRoomState {
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
    extends _$CreateChatRoomStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateChatRoomState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CreateChatRoomState.loading()';
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
    required TResult Function(CreateChatRoomModel model) createdChatRoomSuccess,
    required TResult Function(String errorText) createChatRoomError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateChatRoomModel model)? createdChatRoomSuccess,
    TResult? Function(String errorText)? createChatRoomError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateChatRoomModel model)? createdChatRoomSuccess,
    TResult Function(String errorText)? createChatRoomError,
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
    required TResult Function(_CreatedChatRoomSuccess value)
        createdChatRoomSuccess,
    required TResult Function(_CreateChatRoomError value) createChatRoomError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreatedChatRoomSuccess value)? createdChatRoomSuccess,
    TResult? Function(_CreateChatRoomError value)? createChatRoomError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreatedChatRoomSuccess value)? createdChatRoomSuccess,
    TResult Function(_CreateChatRoomError value)? createChatRoomError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CreateChatRoomState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$CreatedChatRoomSuccessImplCopyWith<$Res> {
  factory _$$CreatedChatRoomSuccessImplCopyWith(
          _$CreatedChatRoomSuccessImpl value,
          $Res Function(_$CreatedChatRoomSuccessImpl) then) =
      __$$CreatedChatRoomSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateChatRoomModel model});

  $CreateChatRoomModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$CreatedChatRoomSuccessImplCopyWithImpl<$Res>
    extends _$CreateChatRoomStateCopyWithImpl<$Res,
        _$CreatedChatRoomSuccessImpl>
    implements _$$CreatedChatRoomSuccessImplCopyWith<$Res> {
  __$$CreatedChatRoomSuccessImplCopyWithImpl(
      _$CreatedChatRoomSuccessImpl _value,
      $Res Function(_$CreatedChatRoomSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateChatRoomState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$CreatedChatRoomSuccessImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CreateChatRoomModel,
    ));
  }

  /// Create a copy of CreateChatRoomState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateChatRoomModelCopyWith<$Res> get model {
    return $CreateChatRoomModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$CreatedChatRoomSuccessImpl implements _CreatedChatRoomSuccess {
  const _$CreatedChatRoomSuccessImpl({required this.model});

  @override
  final CreateChatRoomModel model;

  @override
  String toString() {
    return 'CreateChatRoomState.createdChatRoomSuccess(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedChatRoomSuccessImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of CreateChatRoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedChatRoomSuccessImplCopyWith<_$CreatedChatRoomSuccessImpl>
      get copyWith => __$$CreatedChatRoomSuccessImplCopyWithImpl<
          _$CreatedChatRoomSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateChatRoomModel model) createdChatRoomSuccess,
    required TResult Function(String errorText) createChatRoomError,
  }) {
    return createdChatRoomSuccess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateChatRoomModel model)? createdChatRoomSuccess,
    TResult? Function(String errorText)? createChatRoomError,
  }) {
    return createdChatRoomSuccess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateChatRoomModel model)? createdChatRoomSuccess,
    TResult Function(String errorText)? createChatRoomError,
    required TResult orElse(),
  }) {
    if (createdChatRoomSuccess != null) {
      return createdChatRoomSuccess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CreatedChatRoomSuccess value)
        createdChatRoomSuccess,
    required TResult Function(_CreateChatRoomError value) createChatRoomError,
  }) {
    return createdChatRoomSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreatedChatRoomSuccess value)? createdChatRoomSuccess,
    TResult? Function(_CreateChatRoomError value)? createChatRoomError,
  }) {
    return createdChatRoomSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreatedChatRoomSuccess value)? createdChatRoomSuccess,
    TResult Function(_CreateChatRoomError value)? createChatRoomError,
    required TResult orElse(),
  }) {
    if (createdChatRoomSuccess != null) {
      return createdChatRoomSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreatedChatRoomSuccess implements CreateChatRoomState {
  const factory _CreatedChatRoomSuccess(
          {required final CreateChatRoomModel model}) =
      _$CreatedChatRoomSuccessImpl;

  CreateChatRoomModel get model;

  /// Create a copy of CreateChatRoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatedChatRoomSuccessImplCopyWith<_$CreatedChatRoomSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateChatRoomErrorImplCopyWith<$Res> {
  factory _$$CreateChatRoomErrorImplCopyWith(_$CreateChatRoomErrorImpl value,
          $Res Function(_$CreateChatRoomErrorImpl) then) =
      __$$CreateChatRoomErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorText});
}

/// @nodoc
class __$$CreateChatRoomErrorImplCopyWithImpl<$Res>
    extends _$CreateChatRoomStateCopyWithImpl<$Res, _$CreateChatRoomErrorImpl>
    implements _$$CreateChatRoomErrorImplCopyWith<$Res> {
  __$$CreateChatRoomErrorImplCopyWithImpl(_$CreateChatRoomErrorImpl _value,
      $Res Function(_$CreateChatRoomErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateChatRoomState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
  }) {
    return _then(_$CreateChatRoomErrorImpl(
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateChatRoomErrorImpl implements _CreateChatRoomError {
  const _$CreateChatRoomErrorImpl({required this.errorText});

  @override
  final String errorText;

  @override
  String toString() {
    return 'CreateChatRoomState.createChatRoomError(errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateChatRoomErrorImpl &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  /// Create a copy of CreateChatRoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateChatRoomErrorImplCopyWith<_$CreateChatRoomErrorImpl> get copyWith =>
      __$$CreateChatRoomErrorImplCopyWithImpl<_$CreateChatRoomErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateChatRoomModel model) createdChatRoomSuccess,
    required TResult Function(String errorText) createChatRoomError,
  }) {
    return createChatRoomError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateChatRoomModel model)? createdChatRoomSuccess,
    TResult? Function(String errorText)? createChatRoomError,
  }) {
    return createChatRoomError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateChatRoomModel model)? createdChatRoomSuccess,
    TResult Function(String errorText)? createChatRoomError,
    required TResult orElse(),
  }) {
    if (createChatRoomError != null) {
      return createChatRoomError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CreatedChatRoomSuccess value)
        createdChatRoomSuccess,
    required TResult Function(_CreateChatRoomError value) createChatRoomError,
  }) {
    return createChatRoomError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreatedChatRoomSuccess value)? createdChatRoomSuccess,
    TResult? Function(_CreateChatRoomError value)? createChatRoomError,
  }) {
    return createChatRoomError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreatedChatRoomSuccess value)? createdChatRoomSuccess,
    TResult Function(_CreateChatRoomError value)? createChatRoomError,
    required TResult orElse(),
  }) {
    if (createChatRoomError != null) {
      return createChatRoomError(this);
    }
    return orElse();
  }
}

abstract class _CreateChatRoomError implements CreateChatRoomState {
  const factory _CreateChatRoomError({required final String errorText}) =
      _$CreateChatRoomErrorImpl;

  String get errorText;

  /// Create a copy of CreateChatRoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateChatRoomErrorImplCopyWith<_$CreateChatRoomErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
