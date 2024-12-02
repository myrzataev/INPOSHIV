// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  List<History>? get history => throw _privateConstructorUsedError;

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call({List<History>? history});
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? history = freezed,
  }) {
    return _then(_value.copyWith(
      history: freezed == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<History>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(_$NotificationModelImpl value,
          $Res Function(_$NotificationModelImpl) then) =
      __$$NotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<History>? history});
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(_$NotificationModelImpl _value,
      $Res Function(_$NotificationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? history = freezed,
  }) {
    return _then(_$NotificationModelImpl(
      history: freezed == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<History>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationModelImpl implements _NotificationModel {
  const _$NotificationModelImpl({final List<History>? history})
      : _history = history;

  factory _$NotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationModelImplFromJson(json);

  final List<History>? _history;
  @override
  List<History>? get history {
    final value = _history;
    if (value == null) return null;
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NotificationModel(history: $history)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationModelImpl &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_history));

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationModel implements NotificationModel {
  const factory _NotificationModel({final List<History>? history}) =
      _$NotificationModelImpl;

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$NotificationModelImpl.fromJson;

  @override
  List<History>? get history;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

History _$HistoryFromJson(Map<String, dynamic> json) {
  return _History.fromJson(json);
}

/// @nodoc
mixin _$History {
  int? get id => throw _privateConstructorUsedError;
  String? get userUuid => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get clickAction => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get manufacturerUuid => throw _privateConstructorUsedError;
  String? get auctionUuid => throw _privateConstructorUsedError;
  String? get orderUuid => throw _privateConstructorUsedError;
  int? get orderId => throw _privateConstructorUsedError;
  String? get invoiceUuid => throw _privateConstructorUsedError;
  String? get chatUuid => throw _privateConstructorUsedError;
  String? get recipientUuid => throw _privateConstructorUsedError;

  /// Serializes this History to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of History
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryCopyWith<History> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryCopyWith<$Res> {
  factory $HistoryCopyWith(History value, $Res Function(History) then) =
      _$HistoryCopyWithImpl<$Res, History>;
  @useResult
  $Res call(
      {int? id,
      String? userUuid,
      String? title,
      String? body,
      String? clickAction,
      String? token,
      String? manufacturerUuid,
      String? auctionUuid,
      String? orderUuid,
      int? orderId,
      String? invoiceUuid,
      String? chatUuid,
      String? recipientUuid});
}

/// @nodoc
class _$HistoryCopyWithImpl<$Res, $Val extends History>
    implements $HistoryCopyWith<$Res> {
  _$HistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of History
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userUuid = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? clickAction = freezed,
    Object? token = freezed,
    Object? manufacturerUuid = freezed,
    Object? auctionUuid = freezed,
    Object? orderUuid = freezed,
    Object? orderId = freezed,
    Object? invoiceUuid = freezed,
    Object? chatUuid = freezed,
    Object? recipientUuid = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userUuid: freezed == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      clickAction: freezed == clickAction
          ? _value.clickAction
          : clickAction // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturerUuid: freezed == manufacturerUuid
          ? _value.manufacturerUuid
          : manufacturerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      auctionUuid: freezed == auctionUuid
          ? _value.auctionUuid
          : auctionUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      orderUuid: freezed == orderUuid
          ? _value.orderUuid
          : orderUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceUuid: freezed == invoiceUuid
          ? _value.invoiceUuid
          : invoiceUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      chatUuid: freezed == chatUuid
          ? _value.chatUuid
          : chatUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientUuid: freezed == recipientUuid
          ? _value.recipientUuid
          : recipientUuid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryImplCopyWith<$Res> implements $HistoryCopyWith<$Res> {
  factory _$$HistoryImplCopyWith(
          _$HistoryImpl value, $Res Function(_$HistoryImpl) then) =
      __$$HistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? userUuid,
      String? title,
      String? body,
      String? clickAction,
      String? token,
      String? manufacturerUuid,
      String? auctionUuid,
      String? orderUuid,
      int? orderId,
      String? invoiceUuid,
      String? chatUuid,
      String? recipientUuid});
}

/// @nodoc
class __$$HistoryImplCopyWithImpl<$Res>
    extends _$HistoryCopyWithImpl<$Res, _$HistoryImpl>
    implements _$$HistoryImplCopyWith<$Res> {
  __$$HistoryImplCopyWithImpl(
      _$HistoryImpl _value, $Res Function(_$HistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of History
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userUuid = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? clickAction = freezed,
    Object? token = freezed,
    Object? manufacturerUuid = freezed,
    Object? auctionUuid = freezed,
    Object? orderUuid = freezed,
    Object? orderId = freezed,
    Object? invoiceUuid = freezed,
    Object? chatUuid = freezed,
    Object? recipientUuid = freezed,
  }) {
    return _then(_$HistoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userUuid: freezed == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      clickAction: freezed == clickAction
          ? _value.clickAction
          : clickAction // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturerUuid: freezed == manufacturerUuid
          ? _value.manufacturerUuid
          : manufacturerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      auctionUuid: freezed == auctionUuid
          ? _value.auctionUuid
          : auctionUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      orderUuid: freezed == orderUuid
          ? _value.orderUuid
          : orderUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceUuid: freezed == invoiceUuid
          ? _value.invoiceUuid
          : invoiceUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      chatUuid: freezed == chatUuid
          ? _value.chatUuid
          : chatUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientUuid: freezed == recipientUuid
          ? _value.recipientUuid
          : recipientUuid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryImpl implements _History {
  const _$HistoryImpl(
      {this.id,
      this.userUuid,
      this.title,
      this.body,
      this.clickAction,
      this.token,
      this.manufacturerUuid,
      this.auctionUuid,
      this.orderUuid,
      this.orderId,
      this.invoiceUuid,
      this.chatUuid,
      this.recipientUuid});

  factory _$HistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryImplFromJson(json);

  @override
  final int? id;
  @override
  final String? userUuid;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final String? clickAction;
  @override
  final String? token;
  @override
  final String? manufacturerUuid;
  @override
  final String? auctionUuid;
  @override
  final String? orderUuid;
  @override
  final int? orderId;
  @override
  final String? invoiceUuid;
  @override
  final String? chatUuid;
  @override
  final String? recipientUuid;

  @override
  String toString() {
    return 'History(id: $id, userUuid: $userUuid, title: $title, body: $body, clickAction: $clickAction, token: $token, manufacturerUuid: $manufacturerUuid, auctionUuid: $auctionUuid, orderUuid: $orderUuid, orderId: $orderId, invoiceUuid: $invoiceUuid, chatUuid: $chatUuid, recipientUuid: $recipientUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userUuid, userUuid) ||
                other.userUuid == userUuid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.clickAction, clickAction) ||
                other.clickAction == clickAction) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.manufacturerUuid, manufacturerUuid) ||
                other.manufacturerUuid == manufacturerUuid) &&
            (identical(other.auctionUuid, auctionUuid) ||
                other.auctionUuid == auctionUuid) &&
            (identical(other.orderUuid, orderUuid) ||
                other.orderUuid == orderUuid) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.invoiceUuid, invoiceUuid) ||
                other.invoiceUuid == invoiceUuid) &&
            (identical(other.chatUuid, chatUuid) ||
                other.chatUuid == chatUuid) &&
            (identical(other.recipientUuid, recipientUuid) ||
                other.recipientUuid == recipientUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userUuid,
      title,
      body,
      clickAction,
      token,
      manufacturerUuid,
      auctionUuid,
      orderUuid,
      orderId,
      invoiceUuid,
      chatUuid,
      recipientUuid);

  /// Create a copy of History
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryImplCopyWith<_$HistoryImpl> get copyWith =>
      __$$HistoryImplCopyWithImpl<_$HistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryImplToJson(
      this,
    );
  }
}

abstract class _History implements History {
  const factory _History(
      {final int? id,
      final String? userUuid,
      final String? title,
      final String? body,
      final String? clickAction,
      final String? token,
      final String? manufacturerUuid,
      final String? auctionUuid,
      final String? orderUuid,
      final int? orderId,
      final String? invoiceUuid,
      final String? chatUuid,
      final String? recipientUuid}) = _$HistoryImpl;

  factory _History.fromJson(Map<String, dynamic> json) = _$HistoryImpl.fromJson;

  @override
  int? get id;
  @override
  String? get userUuid;
  @override
  String? get title;
  @override
  String? get body;
  @override
  String? get clickAction;
  @override
  String? get token;
  @override
  String? get manufacturerUuid;
  @override
  String? get auctionUuid;
  @override
  String? get orderUuid;
  @override
  int? get orderId;
  @override
  String? get invoiceUuid;
  @override
  String? get chatUuid;
  @override
  String? get recipientUuid;

  /// Create a copy of History
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryImplCopyWith<_$HistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
