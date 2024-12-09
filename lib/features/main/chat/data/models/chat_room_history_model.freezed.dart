// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_room_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatRoomHistoryModel _$ChatRoomHistoryModelFromJson(Map<String, dynamic> json) {
  return _ChatRoomHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$ChatRoomHistoryModel {
  List<Content>? get content => throw _privateConstructorUsedError;
  Pageable? get pageable => throw _privateConstructorUsedError;
  bool? get last => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get totalElements => throw _privateConstructorUsedError;
  bool? get first => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  Sort? get sort => throw _privateConstructorUsedError;
  int? get numberOfElements => throw _privateConstructorUsedError;
  bool? get empty => throw _privateConstructorUsedError;

  /// Serializes this ChatRoomHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatRoomHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatRoomHistoryModelCopyWith<ChatRoomHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomHistoryModelCopyWith<$Res> {
  factory $ChatRoomHistoryModelCopyWith(ChatRoomHistoryModel value,
          $Res Function(ChatRoomHistoryModel) then) =
      _$ChatRoomHistoryModelCopyWithImpl<$Res, ChatRoomHistoryModel>;
  @useResult
  $Res call(
      {List<Content>? content,
      Pageable? pageable,
      bool? last,
      int? totalPages,
      int? totalElements,
      bool? first,
      int? size,
      int? number,
      Sort? sort,
      int? numberOfElements,
      bool? empty});

  $PageableCopyWith<$Res>? get pageable;
  $SortCopyWith<$Res>? get sort;
}

/// @nodoc
class _$ChatRoomHistoryModelCopyWithImpl<$Res,
        $Val extends ChatRoomHistoryModel>
    implements $ChatRoomHistoryModelCopyWith<$Res> {
  _$ChatRoomHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatRoomHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? pageable = freezed,
    Object? last = freezed,
    Object? totalPages = freezed,
    Object? totalElements = freezed,
    Object? first = freezed,
    Object? size = freezed,
    Object? number = freezed,
    Object? sort = freezed,
    Object? numberOfElements = freezed,
    Object? empty = freezed,
  }) {
    return _then(_value.copyWith(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Content>?,
      pageable: freezed == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable?,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalElements: freezed == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int?,
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort?,
      numberOfElements: freezed == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int?,
      empty: freezed == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of ChatRoomHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageableCopyWith<$Res>? get pageable {
    if (_value.pageable == null) {
      return null;
    }

    return $PageableCopyWith<$Res>(_value.pageable!, (value) {
      return _then(_value.copyWith(pageable: value) as $Val);
    });
  }

  /// Create a copy of ChatRoomHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SortCopyWith<$Res>? get sort {
    if (_value.sort == null) {
      return null;
    }

    return $SortCopyWith<$Res>(_value.sort!, (value) {
      return _then(_value.copyWith(sort: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatRoomHistoryModelImplCopyWith<$Res>
    implements $ChatRoomHistoryModelCopyWith<$Res> {
  factory _$$ChatRoomHistoryModelImplCopyWith(_$ChatRoomHistoryModelImpl value,
          $Res Function(_$ChatRoomHistoryModelImpl) then) =
      __$$ChatRoomHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Content>? content,
      Pageable? pageable,
      bool? last,
      int? totalPages,
      int? totalElements,
      bool? first,
      int? size,
      int? number,
      Sort? sort,
      int? numberOfElements,
      bool? empty});

  @override
  $PageableCopyWith<$Res>? get pageable;
  @override
  $SortCopyWith<$Res>? get sort;
}

/// @nodoc
class __$$ChatRoomHistoryModelImplCopyWithImpl<$Res>
    extends _$ChatRoomHistoryModelCopyWithImpl<$Res, _$ChatRoomHistoryModelImpl>
    implements _$$ChatRoomHistoryModelImplCopyWith<$Res> {
  __$$ChatRoomHistoryModelImplCopyWithImpl(_$ChatRoomHistoryModelImpl _value,
      $Res Function(_$ChatRoomHistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatRoomHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? pageable = freezed,
    Object? last = freezed,
    Object? totalPages = freezed,
    Object? totalElements = freezed,
    Object? first = freezed,
    Object? size = freezed,
    Object? number = freezed,
    Object? sort = freezed,
    Object? numberOfElements = freezed,
    Object? empty = freezed,
  }) {
    return _then(_$ChatRoomHistoryModelImpl(
      content: freezed == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Content>?,
      pageable: freezed == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable?,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalElements: freezed == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int?,
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort?,
      numberOfElements: freezed == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int?,
      empty: freezed == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatRoomHistoryModelImpl implements _ChatRoomHistoryModel {
  const _$ChatRoomHistoryModelImpl(
      {final List<Content>? content,
      this.pageable,
      this.last,
      this.totalPages,
      this.totalElements,
      this.first,
      this.size,
      this.number,
      this.sort,
      this.numberOfElements,
      this.empty})
      : _content = content;

  factory _$ChatRoomHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatRoomHistoryModelImplFromJson(json);

  final List<Content>? _content;
  @override
  List<Content>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Pageable? pageable;
  @override
  final bool? last;
  @override
  final int? totalPages;
  @override
  final int? totalElements;
  @override
  final bool? first;
  @override
  final int? size;
  @override
  final int? number;
  @override
  final Sort? sort;
  @override
  final int? numberOfElements;
  @override
  final bool? empty;

  @override
  String toString() {
    return 'ChatRoomHistoryModel(content: $content, pageable: $pageable, last: $last, totalPages: $totalPages, totalElements: $totalElements, first: $first, size: $size, number: $number, sort: $sort, numberOfElements: $numberOfElements, empty: $empty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomHistoryModelImpl &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.pageable, pageable) ||
                other.pageable == pageable) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalElements, totalElements) ||
                other.totalElements == totalElements) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.numberOfElements, numberOfElements) ||
                other.numberOfElements == numberOfElements) &&
            (identical(other.empty, empty) || other.empty == empty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_content),
      pageable,
      last,
      totalPages,
      totalElements,
      first,
      size,
      number,
      sort,
      numberOfElements,
      empty);

  /// Create a copy of ChatRoomHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoomHistoryModelImplCopyWith<_$ChatRoomHistoryModelImpl>
      get copyWith =>
          __$$ChatRoomHistoryModelImplCopyWithImpl<_$ChatRoomHistoryModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatRoomHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _ChatRoomHistoryModel implements ChatRoomHistoryModel {
  const factory _ChatRoomHistoryModel(
      {final List<Content>? content,
      final Pageable? pageable,
      final bool? last,
      final int? totalPages,
      final int? totalElements,
      final bool? first,
      final int? size,
      final int? number,
      final Sort? sort,
      final int? numberOfElements,
      final bool? empty}) = _$ChatRoomHistoryModelImpl;

  factory _ChatRoomHistoryModel.fromJson(Map<String, dynamic> json) =
      _$ChatRoomHistoryModelImpl.fromJson;

  @override
  List<Content>? get content;
  @override
  Pageable? get pageable;
  @override
  bool? get last;
  @override
  int? get totalPages;
  @override
  int? get totalElements;
  @override
  bool? get first;
  @override
  int? get size;
  @override
  int? get number;
  @override
  Sort? get sort;
  @override
  int? get numberOfElements;
  @override
  bool? get empty;

  /// Create a copy of ChatRoomHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatRoomHistoryModelImplCopyWith<_$ChatRoomHistoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Content _$ContentFromJson(Map<String, dynamic> json) {
  return _Content.fromJson(json);
}

/// @nodoc
mixin _$Content {
  String? get messageUuid => throw _privateConstructorUsedError;
  String? get chatUuid => throw _privateConstructorUsedError;
  String? get senderUuid => throw _privateConstructorUsedError;
  String? get senderName => throw _privateConstructorUsedError;
  String? get recipientName => throw _privateConstructorUsedError;
  dynamic get imageUrl => throw _privateConstructorUsedError;
  String? get recipientUuid => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  dynamic get fileUrl => throw _privateConstructorUsedError;
  dynamic get fileType => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  String? get messageStatus => throw _privateConstructorUsedError;
  dynamic get customerOrManufacturerUuid => throw _privateConstructorUsedError;
  dynamic get orderId => throw _privateConstructorUsedError;

  /// Serializes this Content to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res, Content>;
  @useResult
  $Res call(
      {String? messageUuid,
      String? chatUuid,
      String? senderUuid,
      String? senderName,
      String? recipientName,
      dynamic imageUrl,
      String? recipientUuid,
      String? content,
      dynamic fileUrl,
      dynamic fileType,
      int? type,
      String? messageStatus,
      dynamic customerOrManufacturerUuid,
      dynamic orderId});
}

/// @nodoc
class _$ContentCopyWithImpl<$Res, $Val extends Content>
    implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageUuid = freezed,
    Object? chatUuid = freezed,
    Object? senderUuid = freezed,
    Object? senderName = freezed,
    Object? recipientName = freezed,
    Object? imageUrl = freezed,
    Object? recipientUuid = freezed,
    Object? content = freezed,
    Object? fileUrl = freezed,
    Object? fileType = freezed,
    Object? type = freezed,
    Object? messageStatus = freezed,
    Object? customerOrManufacturerUuid = freezed,
    Object? orderId = freezed,
  }) {
    return _then(_value.copyWith(
      messageUuid: freezed == messageUuid
          ? _value.messageUuid
          : messageUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      chatUuid: freezed == chatUuid
          ? _value.chatUuid
          : chatUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      senderUuid: freezed == senderUuid
          ? _value.senderUuid
          : senderUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientName: freezed == recipientName
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      recipientUuid: freezed == recipientUuid
          ? _value.recipientUuid
          : recipientUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      messageStatus: freezed == messageStatus
          ? _value.messageStatus
          : messageStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      customerOrManufacturerUuid: freezed == customerOrManufacturerUuid
          ? _value.customerOrManufacturerUuid
          : customerOrManufacturerUuid // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? messageUuid,
      String? chatUuid,
      String? senderUuid,
      String? senderName,
      String? recipientName,
      dynamic imageUrl,
      String? recipientUuid,
      String? content,
      dynamic fileUrl,
      dynamic fileType,
      int? type,
      String? messageStatus,
      dynamic customerOrManufacturerUuid,
      dynamic orderId});
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$ContentCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageUuid = freezed,
    Object? chatUuid = freezed,
    Object? senderUuid = freezed,
    Object? senderName = freezed,
    Object? recipientName = freezed,
    Object? imageUrl = freezed,
    Object? recipientUuid = freezed,
    Object? content = freezed,
    Object? fileUrl = freezed,
    Object? fileType = freezed,
    Object? type = freezed,
    Object? messageStatus = freezed,
    Object? customerOrManufacturerUuid = freezed,
    Object? orderId = freezed,
  }) {
    return _then(_$ContentImpl(
      messageUuid: freezed == messageUuid
          ? _value.messageUuid
          : messageUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      chatUuid: freezed == chatUuid
          ? _value.chatUuid
          : chatUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      senderUuid: freezed == senderUuid
          ? _value.senderUuid
          : senderUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientName: freezed == recipientName
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      recipientUuid: freezed == recipientUuid
          ? _value.recipientUuid
          : recipientUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      messageStatus: freezed == messageStatus
          ? _value.messageStatus
          : messageStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      customerOrManufacturerUuid: freezed == customerOrManufacturerUuid
          ? _value.customerOrManufacturerUuid
          : customerOrManufacturerUuid // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentImpl implements _Content {
  const _$ContentImpl(
      {this.messageUuid,
      this.chatUuid,
      this.senderUuid,
      this.senderName,
      this.recipientName,
      this.imageUrl,
      this.recipientUuid,
      this.content,
      this.fileUrl,
      this.fileType,
      this.type,
      this.messageStatus,
      this.customerOrManufacturerUuid,
      this.orderId});

  factory _$ContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentImplFromJson(json);

  @override
  final String? messageUuid;
  @override
  final String? chatUuid;
  @override
  final String? senderUuid;
  @override
  final String? senderName;
  @override
  final String? recipientName;
  @override
  final dynamic imageUrl;
  @override
  final String? recipientUuid;
  @override
  final String? content;
  @override
  final dynamic fileUrl;
  @override
  final dynamic fileType;
  @override
  final int? type;
  @override
  final String? messageStatus;
  @override
  final dynamic customerOrManufacturerUuid;
  @override
  final dynamic orderId;

  @override
  String toString() {
    return 'Content(messageUuid: $messageUuid, chatUuid: $chatUuid, senderUuid: $senderUuid, senderName: $senderName, recipientName: $recipientName, imageUrl: $imageUrl, recipientUuid: $recipientUuid, content: $content, fileUrl: $fileUrl, fileType: $fileType, type: $type, messageStatus: $messageStatus, customerOrManufacturerUuid: $customerOrManufacturerUuid, orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.messageUuid, messageUuid) ||
                other.messageUuid == messageUuid) &&
            (identical(other.chatUuid, chatUuid) ||
                other.chatUuid == chatUuid) &&
            (identical(other.senderUuid, senderUuid) ||
                other.senderUuid == senderUuid) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.recipientName, recipientName) ||
                other.recipientName == recipientName) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            (identical(other.recipientUuid, recipientUuid) ||
                other.recipientUuid == recipientUuid) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other.fileUrl, fileUrl) &&
            const DeepCollectionEquality().equals(other.fileType, fileType) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.messageStatus, messageStatus) ||
                other.messageStatus == messageStatus) &&
            const DeepCollectionEquality().equals(
                other.customerOrManufacturerUuid, customerOrManufacturerUuid) &&
            const DeepCollectionEquality().equals(other.orderId, orderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      messageUuid,
      chatUuid,
      senderUuid,
      senderName,
      recipientName,
      const DeepCollectionEquality().hash(imageUrl),
      recipientUuid,
      content,
      const DeepCollectionEquality().hash(fileUrl),
      const DeepCollectionEquality().hash(fileType),
      type,
      messageStatus,
      const DeepCollectionEquality().hash(customerOrManufacturerUuid),
      const DeepCollectionEquality().hash(orderId));

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentImplToJson(
      this,
    );
  }
}

abstract class _Content implements Content {
  const factory _Content(
      {final String? messageUuid,
      final String? chatUuid,
      final String? senderUuid,
      final String? senderName,
      final String? recipientName,
      final dynamic imageUrl,
      final String? recipientUuid,
      final String? content,
      final dynamic fileUrl,
      final dynamic fileType,
      final int? type,
      final String? messageStatus,
      final dynamic customerOrManufacturerUuid,
      final dynamic orderId}) = _$ContentImpl;

  factory _Content.fromJson(Map<String, dynamic> json) = _$ContentImpl.fromJson;

  @override
  String? get messageUuid;
  @override
  String? get chatUuid;
  @override
  String? get senderUuid;
  @override
  String? get senderName;
  @override
  String? get recipientName;
  @override
  dynamic get imageUrl;
  @override
  String? get recipientUuid;
  @override
  String? get content;
  @override
  dynamic get fileUrl;
  @override
  dynamic get fileType;
  @override
  int? get type;
  @override
  String? get messageStatus;
  @override
  dynamic get customerOrManufacturerUuid;
  @override
  dynamic get orderId;

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pageable _$PageableFromJson(Map<String, dynamic> json) {
  return _Pageable.fromJson(json);
}

/// @nodoc
mixin _$Pageable {
  int? get pageNumber => throw _privateConstructorUsedError;
  int? get pageSize => throw _privateConstructorUsedError;
  Sort? get sort => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  bool? get paged => throw _privateConstructorUsedError;
  bool? get unpaged => throw _privateConstructorUsedError;

  /// Serializes this Pageable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageableCopyWith<Pageable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageableCopyWith<$Res> {
  factory $PageableCopyWith(Pageable value, $Res Function(Pageable) then) =
      _$PageableCopyWithImpl<$Res, Pageable>;
  @useResult
  $Res call(
      {int? pageNumber,
      int? pageSize,
      Sort? sort,
      int? offset,
      bool? paged,
      bool? unpaged});

  $SortCopyWith<$Res>? get sort;
}

/// @nodoc
class _$PageableCopyWithImpl<$Res, $Val extends Pageable>
    implements $PageableCopyWith<$Res> {
  _$PageableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = freezed,
    Object? pageSize = freezed,
    Object? sort = freezed,
    Object? offset = freezed,
    Object? paged = freezed,
    Object? unpaged = freezed,
  }) {
    return _then(_value.copyWith(
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      paged: freezed == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool?,
      unpaged: freezed == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SortCopyWith<$Res>? get sort {
    if (_value.sort == null) {
      return null;
    }

    return $SortCopyWith<$Res>(_value.sort!, (value) {
      return _then(_value.copyWith(sort: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PageableImplCopyWith<$Res>
    implements $PageableCopyWith<$Res> {
  factory _$$PageableImplCopyWith(
          _$PageableImpl value, $Res Function(_$PageableImpl) then) =
      __$$PageableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? pageNumber,
      int? pageSize,
      Sort? sort,
      int? offset,
      bool? paged,
      bool? unpaged});

  @override
  $SortCopyWith<$Res>? get sort;
}

/// @nodoc
class __$$PageableImplCopyWithImpl<$Res>
    extends _$PageableCopyWithImpl<$Res, _$PageableImpl>
    implements _$$PageableImplCopyWith<$Res> {
  __$$PageableImplCopyWithImpl(
      _$PageableImpl _value, $Res Function(_$PageableImpl) _then)
      : super(_value, _then);

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = freezed,
    Object? pageSize = freezed,
    Object? sort = freezed,
    Object? offset = freezed,
    Object? paged = freezed,
    Object? unpaged = freezed,
  }) {
    return _then(_$PageableImpl(
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      paged: freezed == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool?,
      unpaged: freezed == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageableImpl implements _Pageable {
  const _$PageableImpl(
      {this.pageNumber,
      this.pageSize,
      this.sort,
      this.offset,
      this.paged,
      this.unpaged});

  factory _$PageableImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageableImplFromJson(json);

  @override
  final int? pageNumber;
  @override
  final int? pageSize;
  @override
  final Sort? sort;
  @override
  final int? offset;
  @override
  final bool? paged;
  @override
  final bool? unpaged;

  @override
  String toString() {
    return 'Pageable(pageNumber: $pageNumber, pageSize: $pageSize, sort: $sort, offset: $offset, paged: $paged, unpaged: $unpaged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageableImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.paged, paged) || other.paged == paged) &&
            (identical(other.unpaged, unpaged) || other.unpaged == unpaged));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, pageNumber, pageSize, sort, offset, paged, unpaged);

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageableImplCopyWith<_$PageableImpl> get copyWith =>
      __$$PageableImplCopyWithImpl<_$PageableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageableImplToJson(
      this,
    );
  }
}

abstract class _Pageable implements Pageable {
  const factory _Pageable(
      {final int? pageNumber,
      final int? pageSize,
      final Sort? sort,
      final int? offset,
      final bool? paged,
      final bool? unpaged}) = _$PageableImpl;

  factory _Pageable.fromJson(Map<String, dynamic> json) =
      _$PageableImpl.fromJson;

  @override
  int? get pageNumber;
  @override
  int? get pageSize;
  @override
  Sort? get sort;
  @override
  int? get offset;
  @override
  bool? get paged;
  @override
  bool? get unpaged;

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageableImplCopyWith<_$PageableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sort _$SortFromJson(Map<String, dynamic> json) {
  return _Sort.fromJson(json);
}

/// @nodoc
mixin _$Sort {
  bool? get sorted => throw _privateConstructorUsedError;
  bool? get empty => throw _privateConstructorUsedError;
  bool? get unsorted => throw _privateConstructorUsedError;

  /// Serializes this Sort to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SortCopyWith<Sort> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortCopyWith<$Res> {
  factory $SortCopyWith(Sort value, $Res Function(Sort) then) =
      _$SortCopyWithImpl<$Res, Sort>;
  @useResult
  $Res call({bool? sorted, bool? empty, bool? unsorted});
}

/// @nodoc
class _$SortCopyWithImpl<$Res, $Val extends Sort>
    implements $SortCopyWith<$Res> {
  _$SortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sorted = freezed,
    Object? empty = freezed,
    Object? unsorted = freezed,
  }) {
    return _then(_value.copyWith(
      sorted: freezed == sorted
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool?,
      empty: freezed == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool?,
      unsorted: freezed == unsorted
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SortImplCopyWith<$Res> implements $SortCopyWith<$Res> {
  factory _$$SortImplCopyWith(
          _$SortImpl value, $Res Function(_$SortImpl) then) =
      __$$SortImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? sorted, bool? empty, bool? unsorted});
}

/// @nodoc
class __$$SortImplCopyWithImpl<$Res>
    extends _$SortCopyWithImpl<$Res, _$SortImpl>
    implements _$$SortImplCopyWith<$Res> {
  __$$SortImplCopyWithImpl(_$SortImpl _value, $Res Function(_$SortImpl) _then)
      : super(_value, _then);

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sorted = freezed,
    Object? empty = freezed,
    Object? unsorted = freezed,
  }) {
    return _then(_$SortImpl(
      sorted: freezed == sorted
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool?,
      empty: freezed == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool?,
      unsorted: freezed == unsorted
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SortImpl implements _Sort {
  const _$SortImpl({this.sorted, this.empty, this.unsorted});

  factory _$SortImpl.fromJson(Map<String, dynamic> json) =>
      _$$SortImplFromJson(json);

  @override
  final bool? sorted;
  @override
  final bool? empty;
  @override
  final bool? unsorted;

  @override
  String toString() {
    return 'Sort(sorted: $sorted, empty: $empty, unsorted: $unsorted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortImpl &&
            (identical(other.sorted, sorted) || other.sorted == sorted) &&
            (identical(other.empty, empty) || other.empty == empty) &&
            (identical(other.unsorted, unsorted) ||
                other.unsorted == unsorted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sorted, empty, unsorted);

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortImplCopyWith<_$SortImpl> get copyWith =>
      __$$SortImplCopyWithImpl<_$SortImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SortImplToJson(
      this,
    );
  }
}

abstract class _Sort implements Sort {
  const factory _Sort(
      {final bool? sorted,
      final bool? empty,
      final bool? unsorted}) = _$SortImpl;

  factory _Sort.fromJson(Map<String, dynamic> json) = _$SortImpl.fromJson;

  @override
  bool? get sorted;
  @override
  bool? get empty;
  @override
  bool? get unsorted;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortImplCopyWith<_$SortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
