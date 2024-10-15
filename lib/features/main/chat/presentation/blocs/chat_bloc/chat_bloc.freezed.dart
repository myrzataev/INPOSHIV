// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatUuid, String senderUuid,
            String recipientUuid, String content)
        sendMessage,
    required TResult Function(String chatRoomUuid, PagebleModel model)
        getChatRoomHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatUuid, String senderUuid, String recipientUuid,
            String content)?
        sendMessage,
    TResult? Function(String chatRoomUuid, PagebleModel model)?
        getChatRoomHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatUuid, String senderUuid, String recipientUuid,
            String content)?
        sendMessage,
    TResult Function(String chatRoomUuid, PagebleModel model)?
        getChatRoomHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(_GetChatRoomHistory value) getChatRoomHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(_GetChatRoomHistory value)? getChatRoomHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(_GetChatRoomHistory value)? getChatRoomHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String chatUuid,
      String senderUuid,
      String recipientUuid,
      String content});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatUuid = null,
    Object? senderUuid = null,
    Object? recipientUuid = null,
    Object? content = null,
  }) {
    return _then(_$SendMessageImpl(
      chatUuid: null == chatUuid
          ? _value.chatUuid
          : chatUuid // ignore: cast_nullable_to_non_nullable
              as String,
      senderUuid: null == senderUuid
          ? _value.senderUuid
          : senderUuid // ignore: cast_nullable_to_non_nullable
              as String,
      recipientUuid: null == recipientUuid
          ? _value.recipientUuid
          : recipientUuid // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements SendMessage {
  const _$SendMessageImpl(
      {required this.chatUuid,
      required this.senderUuid,
      required this.recipientUuid,
      required this.content});

  @override
  final String chatUuid;
  @override
  final String senderUuid;
  @override
  final String recipientUuid;
  @override
  final String content;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(chatUuid: $chatUuid, senderUuid: $senderUuid, recipientUuid: $recipientUuid, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.chatUuid, chatUuid) ||
                other.chatUuid == chatUuid) &&
            (identical(other.senderUuid, senderUuid) ||
                other.senderUuid == senderUuid) &&
            (identical(other.recipientUuid, recipientUuid) ||
                other.recipientUuid == recipientUuid) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, chatUuid, senderUuid, recipientUuid, content);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatUuid, String senderUuid,
            String recipientUuid, String content)
        sendMessage,
    required TResult Function(String chatRoomUuid, PagebleModel model)
        getChatRoomHistory,
  }) {
    return sendMessage(chatUuid, senderUuid, recipientUuid, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatUuid, String senderUuid, String recipientUuid,
            String content)?
        sendMessage,
    TResult? Function(String chatRoomUuid, PagebleModel model)?
        getChatRoomHistory,
  }) {
    return sendMessage?.call(chatUuid, senderUuid, recipientUuid, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatUuid, String senderUuid, String recipientUuid,
            String content)?
        sendMessage,
    TResult Function(String chatRoomUuid, PagebleModel model)?
        getChatRoomHistory,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(chatUuid, senderUuid, recipientUuid, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(_GetChatRoomHistory value) getChatRoomHistory,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(_GetChatRoomHistory value)? getChatRoomHistory,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(_GetChatRoomHistory value)? getChatRoomHistory,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessage implements ChatEvent {
  const factory SendMessage(
      {required final String chatUuid,
      required final String senderUuid,
      required final String recipientUuid,
      required final String content}) = _$SendMessageImpl;

  String get chatUuid;
  String get senderUuid;
  String get recipientUuid;
  String get content;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetChatRoomHistoryImplCopyWith<$Res> {
  factory _$$GetChatRoomHistoryImplCopyWith(_$GetChatRoomHistoryImpl value,
          $Res Function(_$GetChatRoomHistoryImpl) then) =
      __$$GetChatRoomHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatRoomUuid, PagebleModel model});

  $PagebleModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$GetChatRoomHistoryImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetChatRoomHistoryImpl>
    implements _$$GetChatRoomHistoryImplCopyWith<$Res> {
  __$$GetChatRoomHistoryImplCopyWithImpl(_$GetChatRoomHistoryImpl _value,
      $Res Function(_$GetChatRoomHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatRoomUuid = null,
    Object? model = null,
  }) {
    return _then(_$GetChatRoomHistoryImpl(
      chatRoomUuid: null == chatRoomUuid
          ? _value.chatRoomUuid
          : chatRoomUuid // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as PagebleModel,
    ));
  }

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PagebleModelCopyWith<$Res> get model {
    return $PagebleModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$GetChatRoomHistoryImpl implements _GetChatRoomHistory {
  const _$GetChatRoomHistoryImpl(
      {required this.chatRoomUuid, required this.model});

  @override
  final String chatRoomUuid;
  @override
  final PagebleModel model;

  @override
  String toString() {
    return 'ChatEvent.getChatRoomHistory(chatRoomUuid: $chatRoomUuid, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChatRoomHistoryImpl &&
            (identical(other.chatRoomUuid, chatRoomUuid) ||
                other.chatRoomUuid == chatRoomUuid) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatRoomUuid, model);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChatRoomHistoryImplCopyWith<_$GetChatRoomHistoryImpl> get copyWith =>
      __$$GetChatRoomHistoryImplCopyWithImpl<_$GetChatRoomHistoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatUuid, String senderUuid,
            String recipientUuid, String content)
        sendMessage,
    required TResult Function(String chatRoomUuid, PagebleModel model)
        getChatRoomHistory,
  }) {
    return getChatRoomHistory(chatRoomUuid, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatUuid, String senderUuid, String recipientUuid,
            String content)?
        sendMessage,
    TResult? Function(String chatRoomUuid, PagebleModel model)?
        getChatRoomHistory,
  }) {
    return getChatRoomHistory?.call(chatRoomUuid, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatUuid, String senderUuid, String recipientUuid,
            String content)?
        sendMessage,
    TResult Function(String chatRoomUuid, PagebleModel model)?
        getChatRoomHistory,
    required TResult orElse(),
  }) {
    if (getChatRoomHistory != null) {
      return getChatRoomHistory(chatRoomUuid, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(_GetChatRoomHistory value) getChatRoomHistory,
  }) {
    return getChatRoomHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(_GetChatRoomHistory value)? getChatRoomHistory,
  }) {
    return getChatRoomHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(_GetChatRoomHistory value)? getChatRoomHistory,
    required TResult orElse(),
  }) {
    if (getChatRoomHistory != null) {
      return getChatRoomHistory(this);
    }
    return orElse();
  }
}

abstract class _GetChatRoomHistory implements ChatEvent {
  const factory _GetChatRoomHistory(
      {required final String chatRoomUuid,
      required final PagebleModel model}) = _$GetChatRoomHistoryImpl;

  String get chatRoomUuid;
  PagebleModel get model;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetChatRoomHistoryImplCopyWith<_$GetChatRoomHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() sended,
    required TResult Function(String errorext) sendError,
    required TResult Function(List<ChatRoomHistoryModel> model)
        getChatroomHistoryLoaded,
    required TResult Function(String errorext) getChatroomHistoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? sended,
    TResult? Function(String errorext)? sendError,
    TResult? Function(List<ChatRoomHistoryModel> model)?
        getChatroomHistoryLoaded,
    TResult? Function(String errorext)? getChatroomHistoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sended,
    TResult Function(String errorext)? sendError,
    TResult Function(List<ChatRoomHistoryModel> model)?
        getChatroomHistoryLoaded,
    TResult Function(String errorext)? getChatroomHistoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Sended value) sended,
    required TResult Function(_Error value) sendError,
    required TResult Function(_GetChatroomHistoryLoaded value)
        getChatroomHistoryLoaded,
    required TResult Function(_GetChatroomHistoryError value)
        getChatroomHistoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Sended value)? sended,
    TResult? Function(_Error value)? sendError,
    TResult? Function(_GetChatroomHistoryLoaded value)?
        getChatroomHistoryLoaded,
    TResult? Function(_GetChatroomHistoryError value)? getChatroomHistoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Sended value)? sended,
    TResult Function(_Error value)? sendError,
    TResult Function(_GetChatroomHistoryLoaded value)? getChatroomHistoryLoaded,
    TResult Function(_GetChatroomHistoryError value)? getChatroomHistoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
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
    extends _$ChatStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChatState.initial()';
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
    required TResult Function() sended,
    required TResult Function(String errorext) sendError,
    required TResult Function(List<ChatRoomHistoryModel> model)
        getChatroomHistoryLoaded,
    required TResult Function(String errorext) getChatroomHistoryError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? sended,
    TResult? Function(String errorext)? sendError,
    TResult? Function(List<ChatRoomHistoryModel> model)?
        getChatroomHistoryLoaded,
    TResult? Function(String errorext)? getChatroomHistoryError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sended,
    TResult Function(String errorext)? sendError,
    TResult Function(List<ChatRoomHistoryModel> model)?
        getChatroomHistoryLoaded,
    TResult Function(String errorext)? getChatroomHistoryError,
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
    required TResult Function(_Sended value) sended,
    required TResult Function(_Error value) sendError,
    required TResult Function(_GetChatroomHistoryLoaded value)
        getChatroomHistoryLoaded,
    required TResult Function(_GetChatroomHistoryError value)
        getChatroomHistoryError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Sended value)? sended,
    TResult? Function(_Error value)? sendError,
    TResult? Function(_GetChatroomHistoryLoaded value)?
        getChatroomHistoryLoaded,
    TResult? Function(_GetChatroomHistoryError value)? getChatroomHistoryError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Sended value)? sended,
    TResult Function(_Error value)? sendError,
    TResult Function(_GetChatroomHistoryLoaded value)? getChatroomHistoryLoaded,
    TResult Function(_GetChatroomHistoryError value)? getChatroomHistoryError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatState {
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
    extends _$ChatStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ChatState.loading()';
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
    required TResult Function() sended,
    required TResult Function(String errorext) sendError,
    required TResult Function(List<ChatRoomHistoryModel> model)
        getChatroomHistoryLoaded,
    required TResult Function(String errorext) getChatroomHistoryError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? sended,
    TResult? Function(String errorext)? sendError,
    TResult? Function(List<ChatRoomHistoryModel> model)?
        getChatroomHistoryLoaded,
    TResult? Function(String errorext)? getChatroomHistoryError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sended,
    TResult Function(String errorext)? sendError,
    TResult Function(List<ChatRoomHistoryModel> model)?
        getChatroomHistoryLoaded,
    TResult Function(String errorext)? getChatroomHistoryError,
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
    required TResult Function(_Sended value) sended,
    required TResult Function(_Error value) sendError,
    required TResult Function(_GetChatroomHistoryLoaded value)
        getChatroomHistoryLoaded,
    required TResult Function(_GetChatroomHistoryError value)
        getChatroomHistoryError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Sended value)? sended,
    TResult? Function(_Error value)? sendError,
    TResult? Function(_GetChatroomHistoryLoaded value)?
        getChatroomHistoryLoaded,
    TResult? Function(_GetChatroomHistoryError value)? getChatroomHistoryError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Sended value)? sended,
    TResult Function(_Error value)? sendError,
    TResult Function(_GetChatroomHistoryLoaded value)? getChatroomHistoryLoaded,
    TResult Function(_GetChatroomHistoryError value)? getChatroomHistoryError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SendedImplCopyWith<$Res> {
  factory _$$SendedImplCopyWith(
          _$SendedImpl value, $Res Function(_$SendedImpl) then) =
      __$$SendedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$SendedImpl>
    implements _$$SendedImplCopyWith<$Res> {
  __$$SendedImplCopyWithImpl(
      _$SendedImpl _value, $Res Function(_$SendedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendedImpl implements _Sended {
  const _$SendedImpl();

  @override
  String toString() {
    return 'ChatState.sended()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() sended,
    required TResult Function(String errorext) sendError,
    required TResult Function(List<ChatRoomHistoryModel> model)
        getChatroomHistoryLoaded,
    required TResult Function(String errorext) getChatroomHistoryError,
  }) {
    return sended();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? sended,
    TResult? Function(String errorext)? sendError,
    TResult? Function(List<ChatRoomHistoryModel> model)?
        getChatroomHistoryLoaded,
    TResult? Function(String errorext)? getChatroomHistoryError,
  }) {
    return sended?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sended,
    TResult Function(String errorext)? sendError,
    TResult Function(List<ChatRoomHistoryModel> model)?
        getChatroomHistoryLoaded,
    TResult Function(String errorext)? getChatroomHistoryError,
    required TResult orElse(),
  }) {
    if (sended != null) {
      return sended();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Sended value) sended,
    required TResult Function(_Error value) sendError,
    required TResult Function(_GetChatroomHistoryLoaded value)
        getChatroomHistoryLoaded,
    required TResult Function(_GetChatroomHistoryError value)
        getChatroomHistoryError,
  }) {
    return sended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Sended value)? sended,
    TResult? Function(_Error value)? sendError,
    TResult? Function(_GetChatroomHistoryLoaded value)?
        getChatroomHistoryLoaded,
    TResult? Function(_GetChatroomHistoryError value)? getChatroomHistoryError,
  }) {
    return sended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Sended value)? sended,
    TResult Function(_Error value)? sendError,
    TResult Function(_GetChatroomHistoryLoaded value)? getChatroomHistoryLoaded,
    TResult Function(_GetChatroomHistoryError value)? getChatroomHistoryError,
    required TResult orElse(),
  }) {
    if (sended != null) {
      return sended(this);
    }
    return orElse();
  }
}

abstract class _Sended implements ChatState {
  const factory _Sended() = _$SendedImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorext});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorext = null,
  }) {
    return _then(_$ErrorImpl(
      errorext: null == errorext
          ? _value.errorext
          : errorext // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.errorext});

  @override
  final String errorext;

  @override
  String toString() {
    return 'ChatState.sendError(errorext: $errorext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorext, errorext) ||
                other.errorext == errorext));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorext);

  /// Create a copy of ChatState
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
    required TResult Function() sended,
    required TResult Function(String errorext) sendError,
    required TResult Function(List<ChatRoomHistoryModel> model)
        getChatroomHistoryLoaded,
    required TResult Function(String errorext) getChatroomHistoryError,
  }) {
    return sendError(errorext);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? sended,
    TResult? Function(String errorext)? sendError,
    TResult? Function(List<ChatRoomHistoryModel> model)?
        getChatroomHistoryLoaded,
    TResult? Function(String errorext)? getChatroomHistoryError,
  }) {
    return sendError?.call(errorext);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sended,
    TResult Function(String errorext)? sendError,
    TResult Function(List<ChatRoomHistoryModel> model)?
        getChatroomHistoryLoaded,
    TResult Function(String errorext)? getChatroomHistoryError,
    required TResult orElse(),
  }) {
    if (sendError != null) {
      return sendError(errorext);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Sended value) sended,
    required TResult Function(_Error value) sendError,
    required TResult Function(_GetChatroomHistoryLoaded value)
        getChatroomHistoryLoaded,
    required TResult Function(_GetChatroomHistoryError value)
        getChatroomHistoryError,
  }) {
    return sendError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Sended value)? sended,
    TResult? Function(_Error value)? sendError,
    TResult? Function(_GetChatroomHistoryLoaded value)?
        getChatroomHistoryLoaded,
    TResult? Function(_GetChatroomHistoryError value)? getChatroomHistoryError,
  }) {
    return sendError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Sended value)? sended,
    TResult Function(_Error value)? sendError,
    TResult Function(_GetChatroomHistoryLoaded value)? getChatroomHistoryLoaded,
    TResult Function(_GetChatroomHistoryError value)? getChatroomHistoryError,
    required TResult orElse(),
  }) {
    if (sendError != null) {
      return sendError(this);
    }
    return orElse();
  }
}

abstract class _Error implements ChatState {
  const factory _Error({required final String errorext}) = _$ErrorImpl;

  String get errorext;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetChatroomHistoryLoadedImplCopyWith<$Res> {
  factory _$$GetChatroomHistoryLoadedImplCopyWith(
          _$GetChatroomHistoryLoadedImpl value,
          $Res Function(_$GetChatroomHistoryLoadedImpl) then) =
      __$$GetChatroomHistoryLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatRoomHistoryModel> model});
}

/// @nodoc
class __$$GetChatroomHistoryLoadedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$GetChatroomHistoryLoadedImpl>
    implements _$$GetChatroomHistoryLoadedImplCopyWith<$Res> {
  __$$GetChatroomHistoryLoadedImplCopyWithImpl(
      _$GetChatroomHistoryLoadedImpl _value,
      $Res Function(_$GetChatroomHistoryLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$GetChatroomHistoryLoadedImpl(
      model: null == model
          ? _value._model
          : model // ignore: cast_nullable_to_non_nullable
              as List<ChatRoomHistoryModel>,
    ));
  }
}

/// @nodoc

class _$GetChatroomHistoryLoadedImpl implements _GetChatroomHistoryLoaded {
  const _$GetChatroomHistoryLoadedImpl(
      {required final List<ChatRoomHistoryModel> model})
      : _model = model;

  final List<ChatRoomHistoryModel> _model;
  @override
  List<ChatRoomHistoryModel> get model {
    if (_model is EqualUnmodifiableListView) return _model;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_model);
  }

  @override
  String toString() {
    return 'ChatState.getChatroomHistoryLoaded(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChatroomHistoryLoadedImpl &&
            const DeepCollectionEquality().equals(other._model, _model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_model));

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChatroomHistoryLoadedImplCopyWith<_$GetChatroomHistoryLoadedImpl>
      get copyWith => __$$GetChatroomHistoryLoadedImplCopyWithImpl<
          _$GetChatroomHistoryLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() sended,
    required TResult Function(String errorext) sendError,
    required TResult Function(List<ChatRoomHistoryModel> model)
        getChatroomHistoryLoaded,
    required TResult Function(String errorext) getChatroomHistoryError,
  }) {
    return getChatroomHistoryLoaded(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? sended,
    TResult? Function(String errorext)? sendError,
    TResult? Function(List<ChatRoomHistoryModel> model)?
        getChatroomHistoryLoaded,
    TResult? Function(String errorext)? getChatroomHistoryError,
  }) {
    return getChatroomHistoryLoaded?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sended,
    TResult Function(String errorext)? sendError,
    TResult Function(List<ChatRoomHistoryModel> model)?
        getChatroomHistoryLoaded,
    TResult Function(String errorext)? getChatroomHistoryError,
    required TResult orElse(),
  }) {
    if (getChatroomHistoryLoaded != null) {
      return getChatroomHistoryLoaded(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Sended value) sended,
    required TResult Function(_Error value) sendError,
    required TResult Function(_GetChatroomHistoryLoaded value)
        getChatroomHistoryLoaded,
    required TResult Function(_GetChatroomHistoryError value)
        getChatroomHistoryError,
  }) {
    return getChatroomHistoryLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Sended value)? sended,
    TResult? Function(_Error value)? sendError,
    TResult? Function(_GetChatroomHistoryLoaded value)?
        getChatroomHistoryLoaded,
    TResult? Function(_GetChatroomHistoryError value)? getChatroomHistoryError,
  }) {
    return getChatroomHistoryLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Sended value)? sended,
    TResult Function(_Error value)? sendError,
    TResult Function(_GetChatroomHistoryLoaded value)? getChatroomHistoryLoaded,
    TResult Function(_GetChatroomHistoryError value)? getChatroomHistoryError,
    required TResult orElse(),
  }) {
    if (getChatroomHistoryLoaded != null) {
      return getChatroomHistoryLoaded(this);
    }
    return orElse();
  }
}

abstract class _GetChatroomHistoryLoaded implements ChatState {
  const factory _GetChatroomHistoryLoaded(
          {required final List<ChatRoomHistoryModel> model}) =
      _$GetChatroomHistoryLoadedImpl;

  List<ChatRoomHistoryModel> get model;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetChatroomHistoryLoadedImplCopyWith<_$GetChatroomHistoryLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetChatroomHistoryErrorImplCopyWith<$Res> {
  factory _$$GetChatroomHistoryErrorImplCopyWith(
          _$GetChatroomHistoryErrorImpl value,
          $Res Function(_$GetChatroomHistoryErrorImpl) then) =
      __$$GetChatroomHistoryErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorext});
}

/// @nodoc
class __$$GetChatroomHistoryErrorImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$GetChatroomHistoryErrorImpl>
    implements _$$GetChatroomHistoryErrorImplCopyWith<$Res> {
  __$$GetChatroomHistoryErrorImplCopyWithImpl(
      _$GetChatroomHistoryErrorImpl _value,
      $Res Function(_$GetChatroomHistoryErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorext = null,
  }) {
    return _then(_$GetChatroomHistoryErrorImpl(
      errorext: null == errorext
          ? _value.errorext
          : errorext // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetChatroomHistoryErrorImpl implements _GetChatroomHistoryError {
  const _$GetChatroomHistoryErrorImpl({required this.errorext});

  @override
  final String errorext;

  @override
  String toString() {
    return 'ChatState.getChatroomHistoryError(errorext: $errorext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChatroomHistoryErrorImpl &&
            (identical(other.errorext, errorext) ||
                other.errorext == errorext));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorext);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChatroomHistoryErrorImplCopyWith<_$GetChatroomHistoryErrorImpl>
      get copyWith => __$$GetChatroomHistoryErrorImplCopyWithImpl<
          _$GetChatroomHistoryErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() sended,
    required TResult Function(String errorext) sendError,
    required TResult Function(List<ChatRoomHistoryModel> model)
        getChatroomHistoryLoaded,
    required TResult Function(String errorext) getChatroomHistoryError,
  }) {
    return getChatroomHistoryError(errorext);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? sended,
    TResult? Function(String errorext)? sendError,
    TResult? Function(List<ChatRoomHistoryModel> model)?
        getChatroomHistoryLoaded,
    TResult? Function(String errorext)? getChatroomHistoryError,
  }) {
    return getChatroomHistoryError?.call(errorext);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sended,
    TResult Function(String errorext)? sendError,
    TResult Function(List<ChatRoomHistoryModel> model)?
        getChatroomHistoryLoaded,
    TResult Function(String errorext)? getChatroomHistoryError,
    required TResult orElse(),
  }) {
    if (getChatroomHistoryError != null) {
      return getChatroomHistoryError(errorext);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Sended value) sended,
    required TResult Function(_Error value) sendError,
    required TResult Function(_GetChatroomHistoryLoaded value)
        getChatroomHistoryLoaded,
    required TResult Function(_GetChatroomHistoryError value)
        getChatroomHistoryError,
  }) {
    return getChatroomHistoryError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Sended value)? sended,
    TResult? Function(_Error value)? sendError,
    TResult? Function(_GetChatroomHistoryLoaded value)?
        getChatroomHistoryLoaded,
    TResult? Function(_GetChatroomHistoryError value)? getChatroomHistoryError,
  }) {
    return getChatroomHistoryError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Sended value)? sended,
    TResult Function(_Error value)? sendError,
    TResult Function(_GetChatroomHistoryLoaded value)? getChatroomHistoryLoaded,
    TResult Function(_GetChatroomHistoryError value)? getChatroomHistoryError,
    required TResult orElse(),
  }) {
    if (getChatroomHistoryError != null) {
      return getChatroomHistoryError(this);
    }
    return orElse();
  }
}

abstract class _GetChatroomHistoryError implements ChatState {
  const factory _GetChatroomHistoryError({required final String errorext}) =
      _$GetChatroomHistoryErrorImpl;

  String get errorext;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetChatroomHistoryErrorImplCopyWith<_$GetChatroomHistoryErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
