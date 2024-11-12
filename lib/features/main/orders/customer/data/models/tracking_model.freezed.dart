// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrackingModel _$TrackingModelFromJson(Map<String, dynamic> json) {
  return _TrackingModel.fromJson(json);
}

/// @nodoc
mixin _$TrackingModel {
  int? get id => throw _privateConstructorUsedError;
  String? get invoiceUuid => throw _privateConstructorUsedError;
  int? get orderId => throw _privateConstructorUsedError;
  String? get activeStage => throw _privateConstructorUsedError;
  List<AllC>? get allChecks => throw _privateConstructorUsedError;
  List<AllC>? get allComments => throw _privateConstructorUsedError;

  /// Serializes this TrackingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrackingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackingModelCopyWith<TrackingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingModelCopyWith<$Res> {
  factory $TrackingModelCopyWith(
          TrackingModel value, $Res Function(TrackingModel) then) =
      _$TrackingModelCopyWithImpl<$Res, TrackingModel>;
  @useResult
  $Res call(
      {int? id,
      String? invoiceUuid,
      int? orderId,
      String? activeStage,
      List<AllC>? allChecks,
      List<AllC>? allComments});
}

/// @nodoc
class _$TrackingModelCopyWithImpl<$Res, $Val extends TrackingModel>
    implements $TrackingModelCopyWith<$Res> {
  _$TrackingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? invoiceUuid = freezed,
    Object? orderId = freezed,
    Object? activeStage = freezed,
    Object? allChecks = freezed,
    Object? allComments = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceUuid: freezed == invoiceUuid
          ? _value.invoiceUuid
          : invoiceUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      activeStage: freezed == activeStage
          ? _value.activeStage
          : activeStage // ignore: cast_nullable_to_non_nullable
              as String?,
      allChecks: freezed == allChecks
          ? _value.allChecks
          : allChecks // ignore: cast_nullable_to_non_nullable
              as List<AllC>?,
      allComments: freezed == allComments
          ? _value.allComments
          : allComments // ignore: cast_nullable_to_non_nullable
              as List<AllC>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackingModelImplCopyWith<$Res>
    implements $TrackingModelCopyWith<$Res> {
  factory _$$TrackingModelImplCopyWith(
          _$TrackingModelImpl value, $Res Function(_$TrackingModelImpl) then) =
      __$$TrackingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? invoiceUuid,
      int? orderId,
      String? activeStage,
      List<AllC>? allChecks,
      List<AllC>? allComments});
}

/// @nodoc
class __$$TrackingModelImplCopyWithImpl<$Res>
    extends _$TrackingModelCopyWithImpl<$Res, _$TrackingModelImpl>
    implements _$$TrackingModelImplCopyWith<$Res> {
  __$$TrackingModelImplCopyWithImpl(
      _$TrackingModelImpl _value, $Res Function(_$TrackingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? invoiceUuid = freezed,
    Object? orderId = freezed,
    Object? activeStage = freezed,
    Object? allChecks = freezed,
    Object? allComments = freezed,
  }) {
    return _then(_$TrackingModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceUuid: freezed == invoiceUuid
          ? _value.invoiceUuid
          : invoiceUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      activeStage: freezed == activeStage
          ? _value.activeStage
          : activeStage // ignore: cast_nullable_to_non_nullable
              as String?,
      allChecks: freezed == allChecks
          ? _value._allChecks
          : allChecks // ignore: cast_nullable_to_non_nullable
              as List<AllC>?,
      allComments: freezed == allComments
          ? _value._allComments
          : allComments // ignore: cast_nullable_to_non_nullable
              as List<AllC>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackingModelImpl implements _TrackingModel {
  const _$TrackingModelImpl(
      {this.id,
      this.invoiceUuid,
      this.orderId,
      this.activeStage,
      final List<AllC>? allChecks,
      final List<AllC>? allComments})
      : _allChecks = allChecks,
        _allComments = allComments;

  factory _$TrackingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackingModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? invoiceUuid;
  @override
  final int? orderId;
  @override
  final String? activeStage;
  final List<AllC>? _allChecks;
  @override
  List<AllC>? get allChecks {
    final value = _allChecks;
    if (value == null) return null;
    if (_allChecks is EqualUnmodifiableListView) return _allChecks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AllC>? _allComments;
  @override
  List<AllC>? get allComments {
    final value = _allComments;
    if (value == null) return null;
    if (_allComments is EqualUnmodifiableListView) return _allComments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TrackingModel(id: $id, invoiceUuid: $invoiceUuid, orderId: $orderId, activeStage: $activeStage, allChecks: $allChecks, allComments: $allComments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invoiceUuid, invoiceUuid) ||
                other.invoiceUuid == invoiceUuid) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.activeStage, activeStage) ||
                other.activeStage == activeStage) &&
            const DeepCollectionEquality()
                .equals(other._allChecks, _allChecks) &&
            const DeepCollectionEquality()
                .equals(other._allComments, _allComments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      invoiceUuid,
      orderId,
      activeStage,
      const DeepCollectionEquality().hash(_allChecks),
      const DeepCollectionEquality().hash(_allComments));

  /// Create a copy of TrackingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingModelImplCopyWith<_$TrackingModelImpl> get copyWith =>
      __$$TrackingModelImplCopyWithImpl<_$TrackingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackingModelImplToJson(
      this,
    );
  }
}

abstract class _TrackingModel implements TrackingModel {
  const factory _TrackingModel(
      {final int? id,
      final String? invoiceUuid,
      final int? orderId,
      final String? activeStage,
      final List<AllC>? allChecks,
      final List<AllC>? allComments}) = _$TrackingModelImpl;

  factory _TrackingModel.fromJson(Map<String, dynamic> json) =
      _$TrackingModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get invoiceUuid;
  @override
  int? get orderId;
  @override
  String? get activeStage;
  @override
  List<AllC>? get allChecks;
  @override
  List<AllC>? get allComments;

  /// Create a copy of TrackingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackingModelImplCopyWith<_$TrackingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AllC _$AllCFromJson(Map<String, dynamic> json) {
  return _AllC.fromJson(json);
}

/// @nodoc
mixin _$AllC {
  int? get id => throw _privateConstructorUsedError;
  OrderTracking? get orderTracking => throw _privateConstructorUsedError;
  String? get orderStage => throw _privateConstructorUsedError;
  String? get fileUrl => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  /// Serializes this AllC to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllC
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllCCopyWith<AllC> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllCCopyWith<$Res> {
  factory $AllCCopyWith(AllC value, $Res Function(AllC) then) =
      _$AllCCopyWithImpl<$Res, AllC>;
  @useResult
  $Res call(
      {int? id,
      OrderTracking? orderTracking,
      String? orderStage,
      String? fileUrl,
      DateTime? createdAt,
      String? content});

  $OrderTrackingCopyWith<$Res>? get orderTracking;
}

/// @nodoc
class _$AllCCopyWithImpl<$Res, $Val extends AllC>
    implements $AllCCopyWith<$Res> {
  _$AllCCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllC
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderTracking = freezed,
    Object? orderStage = freezed,
    Object? fileUrl = freezed,
    Object? createdAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderTracking: freezed == orderTracking
          ? _value.orderTracking
          : orderTracking // ignore: cast_nullable_to_non_nullable
              as OrderTracking?,
      orderStage: freezed == orderStage
          ? _value.orderStage
          : orderStage // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AllC
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderTrackingCopyWith<$Res>? get orderTracking {
    if (_value.orderTracking == null) {
      return null;
    }

    return $OrderTrackingCopyWith<$Res>(_value.orderTracking!, (value) {
      return _then(_value.copyWith(orderTracking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllCImplCopyWith<$Res> implements $AllCCopyWith<$Res> {
  factory _$$AllCImplCopyWith(
          _$AllCImpl value, $Res Function(_$AllCImpl) then) =
      __$$AllCImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      OrderTracking? orderTracking,
      String? orderStage,
      String? fileUrl,
      DateTime? createdAt,
      String? content});

  @override
  $OrderTrackingCopyWith<$Res>? get orderTracking;
}

/// @nodoc
class __$$AllCImplCopyWithImpl<$Res>
    extends _$AllCCopyWithImpl<$Res, _$AllCImpl>
    implements _$$AllCImplCopyWith<$Res> {
  __$$AllCImplCopyWithImpl(_$AllCImpl _value, $Res Function(_$AllCImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllC
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderTracking = freezed,
    Object? orderStage = freezed,
    Object? fileUrl = freezed,
    Object? createdAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_$AllCImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderTracking: freezed == orderTracking
          ? _value.orderTracking
          : orderTracking // ignore: cast_nullable_to_non_nullable
              as OrderTracking?,
      orderStage: freezed == orderStage
          ? _value.orderStage
          : orderStage // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllCImpl implements _AllC {
  const _$AllCImpl(
      {this.id,
      this.orderTracking,
      this.orderStage,
      this.fileUrl,
      this.createdAt,
      this.content});

  factory _$AllCImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllCImplFromJson(json);

  @override
  final int? id;
  @override
  final OrderTracking? orderTracking;
  @override
  final String? orderStage;
  @override
  final String? fileUrl;
  @override
  final DateTime? createdAt;
  @override
  final String? content;

  @override
  String toString() {
    return 'AllC(id: $id, orderTracking: $orderTracking, orderStage: $orderStage, fileUrl: $fileUrl, createdAt: $createdAt, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllCImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderTracking, orderTracking) ||
                other.orderTracking == orderTracking) &&
            (identical(other.orderStage, orderStage) ||
                other.orderStage == orderStage) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, orderTracking, orderStage, fileUrl, createdAt, content);

  /// Create a copy of AllC
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllCImplCopyWith<_$AllCImpl> get copyWith =>
      __$$AllCImplCopyWithImpl<_$AllCImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllCImplToJson(
      this,
    );
  }
}

abstract class _AllC implements AllC {
  const factory _AllC(
      {final int? id,
      final OrderTracking? orderTracking,
      final String? orderStage,
      final String? fileUrl,
      final DateTime? createdAt,
      final String? content}) = _$AllCImpl;

  factory _AllC.fromJson(Map<String, dynamic> json) = _$AllCImpl.fromJson;

  @override
  int? get id;
  @override
  OrderTracking? get orderTracking;
  @override
  String? get orderStage;
  @override
  String? get fileUrl;
  @override
  DateTime? get createdAt;
  @override
  String? get content;

  /// Create a copy of AllC
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllCImplCopyWith<_$AllCImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderTracking _$OrderTrackingFromJson(Map<String, dynamic> json) {
  return _OrderTracking.fromJson(json);
}

/// @nodoc
mixin _$OrderTracking {
  int? get id => throw _privateConstructorUsedError;
  String? get invoiceUuid => throw _privateConstructorUsedError;
  int? get orderId => throw _privateConstructorUsedError;
  String? get activeStage => throw _privateConstructorUsedError;
  List<String>? get allChecks => throw _privateConstructorUsedError;
  List<String>? get allComments => throw _privateConstructorUsedError;

  /// Serializes this OrderTracking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderTracking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderTrackingCopyWith<OrderTracking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTrackingCopyWith<$Res> {
  factory $OrderTrackingCopyWith(
          OrderTracking value, $Res Function(OrderTracking) then) =
      _$OrderTrackingCopyWithImpl<$Res, OrderTracking>;
  @useResult
  $Res call(
      {int? id,
      String? invoiceUuid,
      int? orderId,
      String? activeStage,
      List<String>? allChecks,
      List<String>? allComments});
}

/// @nodoc
class _$OrderTrackingCopyWithImpl<$Res, $Val extends OrderTracking>
    implements $OrderTrackingCopyWith<$Res> {
  _$OrderTrackingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderTracking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? invoiceUuid = freezed,
    Object? orderId = freezed,
    Object? activeStage = freezed,
    Object? allChecks = freezed,
    Object? allComments = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceUuid: freezed == invoiceUuid
          ? _value.invoiceUuid
          : invoiceUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      activeStage: freezed == activeStage
          ? _value.activeStage
          : activeStage // ignore: cast_nullable_to_non_nullable
              as String?,
      allChecks: freezed == allChecks
          ? _value.allChecks
          : allChecks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      allComments: freezed == allComments
          ? _value.allComments
          : allComments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderTrackingImplCopyWith<$Res>
    implements $OrderTrackingCopyWith<$Res> {
  factory _$$OrderTrackingImplCopyWith(
          _$OrderTrackingImpl value, $Res Function(_$OrderTrackingImpl) then) =
      __$$OrderTrackingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? invoiceUuid,
      int? orderId,
      String? activeStage,
      List<String>? allChecks,
      List<String>? allComments});
}

/// @nodoc
class __$$OrderTrackingImplCopyWithImpl<$Res>
    extends _$OrderTrackingCopyWithImpl<$Res, _$OrderTrackingImpl>
    implements _$$OrderTrackingImplCopyWith<$Res> {
  __$$OrderTrackingImplCopyWithImpl(
      _$OrderTrackingImpl _value, $Res Function(_$OrderTrackingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderTracking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? invoiceUuid = freezed,
    Object? orderId = freezed,
    Object? activeStage = freezed,
    Object? allChecks = freezed,
    Object? allComments = freezed,
  }) {
    return _then(_$OrderTrackingImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceUuid: freezed == invoiceUuid
          ? _value.invoiceUuid
          : invoiceUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      activeStage: freezed == activeStage
          ? _value.activeStage
          : activeStage // ignore: cast_nullable_to_non_nullable
              as String?,
      allChecks: freezed == allChecks
          ? _value._allChecks
          : allChecks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      allComments: freezed == allComments
          ? _value._allComments
          : allComments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderTrackingImpl implements _OrderTracking {
  const _$OrderTrackingImpl(
      {this.id,
      this.invoiceUuid,
      this.orderId,
      this.activeStage,
      final List<String>? allChecks,
      final List<String>? allComments})
      : _allChecks = allChecks,
        _allComments = allComments;

  factory _$OrderTrackingImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderTrackingImplFromJson(json);

  @override
  final int? id;
  @override
  final String? invoiceUuid;
  @override
  final int? orderId;
  @override
  final String? activeStage;
  final List<String>? _allChecks;
  @override
  List<String>? get allChecks {
    final value = _allChecks;
    if (value == null) return null;
    if (_allChecks is EqualUnmodifiableListView) return _allChecks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _allComments;
  @override
  List<String>? get allComments {
    final value = _allComments;
    if (value == null) return null;
    if (_allComments is EqualUnmodifiableListView) return _allComments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderTracking(id: $id, invoiceUuid: $invoiceUuid, orderId: $orderId, activeStage: $activeStage, allChecks: $allChecks, allComments: $allComments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderTrackingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invoiceUuid, invoiceUuid) ||
                other.invoiceUuid == invoiceUuid) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.activeStage, activeStage) ||
                other.activeStage == activeStage) &&
            const DeepCollectionEquality()
                .equals(other._allChecks, _allChecks) &&
            const DeepCollectionEquality()
                .equals(other._allComments, _allComments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      invoiceUuid,
      orderId,
      activeStage,
      const DeepCollectionEquality().hash(_allChecks),
      const DeepCollectionEquality().hash(_allComments));

  /// Create a copy of OrderTracking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderTrackingImplCopyWith<_$OrderTrackingImpl> get copyWith =>
      __$$OrderTrackingImplCopyWithImpl<_$OrderTrackingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderTrackingImplToJson(
      this,
    );
  }
}

abstract class _OrderTracking implements OrderTracking {
  const factory _OrderTracking(
      {final int? id,
      final String? invoiceUuid,
      final int? orderId,
      final String? activeStage,
      final List<String>? allChecks,
      final List<String>? allComments}) = _$OrderTrackingImpl;

  factory _OrderTracking.fromJson(Map<String, dynamic> json) =
      _$OrderTrackingImpl.fromJson;

  @override
  int? get id;
  @override
  String? get invoiceUuid;
  @override
  int? get orderId;
  @override
  String? get activeStage;
  @override
  List<String>? get allChecks;
  @override
  List<String>? get allComments;

  /// Create a copy of OrderTracking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderTrackingImplCopyWith<_$OrderTrackingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
