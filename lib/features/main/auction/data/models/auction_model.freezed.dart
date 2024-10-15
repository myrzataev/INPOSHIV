// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuctionModel _$AuctionModelFromJson(Map<String, dynamic> json) {
  return _AuctionModel.fromJson(json);
}

/// @nodoc
mixin _$AuctionModel {
  int? get orderId => throw _privateConstructorUsedError;
  dynamic get winnerUid => throw _privateConstructorUsedError;
  DateTime? get startTime => throw _privateConstructorUsedError;
  dynamic get endTime => throw _privateConstructorUsedError;
  String? get auctionUuid => throw _privateConstructorUsedError;
  List<AuctionProcess>? get auctionProcesses =>
      throw _privateConstructorUsedError;

  /// Serializes this AuctionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionModelCopyWith<AuctionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionModelCopyWith<$Res> {
  factory $AuctionModelCopyWith(
          AuctionModel value, $Res Function(AuctionModel) then) =
      _$AuctionModelCopyWithImpl<$Res, AuctionModel>;
  @useResult
  $Res call(
      {int? orderId,
      dynamic winnerUid,
      DateTime? startTime,
      dynamic endTime,
      String? auctionUuid,
      List<AuctionProcess>? auctionProcesses});
}

/// @nodoc
class _$AuctionModelCopyWithImpl<$Res, $Val extends AuctionModel>
    implements $AuctionModelCopyWith<$Res> {
  _$AuctionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? winnerUid = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? auctionUuid = freezed,
    Object? auctionProcesses = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      winnerUid: freezed == winnerUid
          ? _value.winnerUid
          : winnerUid // ignore: cast_nullable_to_non_nullable
              as dynamic,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      auctionUuid: freezed == auctionUuid
          ? _value.auctionUuid
          : auctionUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      auctionProcesses: freezed == auctionProcesses
          ? _value.auctionProcesses
          : auctionProcesses // ignore: cast_nullable_to_non_nullable
              as List<AuctionProcess>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuctionModelImplCopyWith<$Res>
    implements $AuctionModelCopyWith<$Res> {
  factory _$$AuctionModelImplCopyWith(
          _$AuctionModelImpl value, $Res Function(_$AuctionModelImpl) then) =
      __$$AuctionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? orderId,
      dynamic winnerUid,
      DateTime? startTime,
      dynamic endTime,
      String? auctionUuid,
      List<AuctionProcess>? auctionProcesses});
}

/// @nodoc
class __$$AuctionModelImplCopyWithImpl<$Res>
    extends _$AuctionModelCopyWithImpl<$Res, _$AuctionModelImpl>
    implements _$$AuctionModelImplCopyWith<$Res> {
  __$$AuctionModelImplCopyWithImpl(
      _$AuctionModelImpl _value, $Res Function(_$AuctionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? winnerUid = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? auctionUuid = freezed,
    Object? auctionProcesses = freezed,
  }) {
    return _then(_$AuctionModelImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      winnerUid: freezed == winnerUid
          ? _value.winnerUid
          : winnerUid // ignore: cast_nullable_to_non_nullable
              as dynamic,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      auctionUuid: freezed == auctionUuid
          ? _value.auctionUuid
          : auctionUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      auctionProcesses: freezed == auctionProcesses
          ? _value._auctionProcesses
          : auctionProcesses // ignore: cast_nullable_to_non_nullable
              as List<AuctionProcess>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionModelImpl implements _AuctionModel {
  const _$AuctionModelImpl(
      {this.orderId,
      this.winnerUid,
      this.startTime,
      this.endTime,
      this.auctionUuid,
      final List<AuctionProcess>? auctionProcesses})
      : _auctionProcesses = auctionProcesses;

  factory _$AuctionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionModelImplFromJson(json);

  @override
  final int? orderId;
  @override
  final dynamic winnerUid;
  @override
  final DateTime? startTime;
  @override
  final dynamic endTime;
  @override
  final String? auctionUuid;
  final List<AuctionProcess>? _auctionProcesses;
  @override
  List<AuctionProcess>? get auctionProcesses {
    final value = _auctionProcesses;
    if (value == null) return null;
    if (_auctionProcesses is EqualUnmodifiableListView)
      return _auctionProcesses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AuctionModel(orderId: $orderId, winnerUid: $winnerUid, startTime: $startTime, endTime: $endTime, auctionUuid: $auctionUuid, auctionProcesses: $auctionProcesses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionModelImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            const DeepCollectionEquality().equals(other.winnerUid, winnerUid) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            (identical(other.auctionUuid, auctionUuid) ||
                other.auctionUuid == auctionUuid) &&
            const DeepCollectionEquality()
                .equals(other._auctionProcesses, _auctionProcesses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      const DeepCollectionEquality().hash(winnerUid),
      startTime,
      const DeepCollectionEquality().hash(endTime),
      auctionUuid,
      const DeepCollectionEquality().hash(_auctionProcesses));

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionModelImplCopyWith<_$AuctionModelImpl> get copyWith =>
      __$$AuctionModelImplCopyWithImpl<_$AuctionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionModelImplToJson(
      this,
    );
  }
}

abstract class _AuctionModel implements AuctionModel {
  const factory _AuctionModel(
      {final int? orderId,
      final dynamic winnerUid,
      final DateTime? startTime,
      final dynamic endTime,
      final String? auctionUuid,
      final List<AuctionProcess>? auctionProcesses}) = _$AuctionModelImpl;

  factory _AuctionModel.fromJson(Map<String, dynamic> json) =
      _$AuctionModelImpl.fromJson;

  @override
  int? get orderId;
  @override
  dynamic get winnerUid;
  @override
  DateTime? get startTime;
  @override
  dynamic get endTime;
  @override
  String? get auctionUuid;
  @override
  List<AuctionProcess>? get auctionProcesses;

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionModelImplCopyWith<_$AuctionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuctionProcess _$AuctionProcessFromJson(Map<String, dynamic> json) {
  return _AuctionProcess.fromJson(json);
}

/// @nodoc
mixin _$AuctionProcess {
  int? get auctionId => throw _privateConstructorUsedError;
  String? get manufacturerUuid => throw _privateConstructorUsedError;
  int? get bidPrice => throw _privateConstructorUsedError;
  List<int>? get bidTime => throw _privateConstructorUsedError;
  int? get bidCount => throw _privateConstructorUsedError;

  /// Serializes this AuctionProcess to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionProcess
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionProcessCopyWith<AuctionProcess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionProcessCopyWith<$Res> {
  factory $AuctionProcessCopyWith(
          AuctionProcess value, $Res Function(AuctionProcess) then) =
      _$AuctionProcessCopyWithImpl<$Res, AuctionProcess>;
  @useResult
  $Res call(
      {int? auctionId,
      String? manufacturerUuid,
      int? bidPrice,
      List<int>? bidTime,
      int? bidCount});
}

/// @nodoc
class _$AuctionProcessCopyWithImpl<$Res, $Val extends AuctionProcess>
    implements $AuctionProcessCopyWith<$Res> {
  _$AuctionProcessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionProcess
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctionId = freezed,
    Object? manufacturerUuid = freezed,
    Object? bidPrice = freezed,
    Object? bidTime = freezed,
    Object? bidCount = freezed,
  }) {
    return _then(_value.copyWith(
      auctionId: freezed == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as int?,
      manufacturerUuid: freezed == manufacturerUuid
          ? _value.manufacturerUuid
          : manufacturerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      bidPrice: freezed == bidPrice
          ? _value.bidPrice
          : bidPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      bidTime: freezed == bidTime
          ? _value.bidTime
          : bidTime // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      bidCount: freezed == bidCount
          ? _value.bidCount
          : bidCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuctionProcessImplCopyWith<$Res>
    implements $AuctionProcessCopyWith<$Res> {
  factory _$$AuctionProcessImplCopyWith(_$AuctionProcessImpl value,
          $Res Function(_$AuctionProcessImpl) then) =
      __$$AuctionProcessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? auctionId,
      String? manufacturerUuid,
      int? bidPrice,
      List<int>? bidTime,
      int? bidCount});
}

/// @nodoc
class __$$AuctionProcessImplCopyWithImpl<$Res>
    extends _$AuctionProcessCopyWithImpl<$Res, _$AuctionProcessImpl>
    implements _$$AuctionProcessImplCopyWith<$Res> {
  __$$AuctionProcessImplCopyWithImpl(
      _$AuctionProcessImpl _value, $Res Function(_$AuctionProcessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuctionProcess
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctionId = freezed,
    Object? manufacturerUuid = freezed,
    Object? bidPrice = freezed,
    Object? bidTime = freezed,
    Object? bidCount = freezed,
  }) {
    return _then(_$AuctionProcessImpl(
      auctionId: freezed == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as int?,
      manufacturerUuid: freezed == manufacturerUuid
          ? _value.manufacturerUuid
          : manufacturerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      bidPrice: freezed == bidPrice
          ? _value.bidPrice
          : bidPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      bidTime: freezed == bidTime
          ? _value._bidTime
          : bidTime // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      bidCount: freezed == bidCount
          ? _value.bidCount
          : bidCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionProcessImpl implements _AuctionProcess {
  const _$AuctionProcessImpl(
      {this.auctionId,
      this.manufacturerUuid,
      this.bidPrice,
      final List<int>? bidTime,
      this.bidCount})
      : _bidTime = bidTime;

  factory _$AuctionProcessImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionProcessImplFromJson(json);

  @override
  final int? auctionId;
  @override
  final String? manufacturerUuid;
  @override
  final int? bidPrice;
  final List<int>? _bidTime;
  @override
  List<int>? get bidTime {
    final value = _bidTime;
    if (value == null) return null;
    if (_bidTime is EqualUnmodifiableListView) return _bidTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? bidCount;

  @override
  String toString() {
    return 'AuctionProcess(auctionId: $auctionId, manufacturerUuid: $manufacturerUuid, bidPrice: $bidPrice, bidTime: $bidTime, bidCount: $bidCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionProcessImpl &&
            (identical(other.auctionId, auctionId) ||
                other.auctionId == auctionId) &&
            (identical(other.manufacturerUuid, manufacturerUuid) ||
                other.manufacturerUuid == manufacturerUuid) &&
            (identical(other.bidPrice, bidPrice) ||
                other.bidPrice == bidPrice) &&
            const DeepCollectionEquality().equals(other._bidTime, _bidTime) &&
            (identical(other.bidCount, bidCount) ||
                other.bidCount == bidCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, auctionId, manufacturerUuid,
      bidPrice, const DeepCollectionEquality().hash(_bidTime), bidCount);

  /// Create a copy of AuctionProcess
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionProcessImplCopyWith<_$AuctionProcessImpl> get copyWith =>
      __$$AuctionProcessImplCopyWithImpl<_$AuctionProcessImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionProcessImplToJson(
      this,
    );
  }
}

abstract class _AuctionProcess implements AuctionProcess {
  const factory _AuctionProcess(
      {final int? auctionId,
      final String? manufacturerUuid,
      final int? bidPrice,
      final List<int>? bidTime,
      final int? bidCount}) = _$AuctionProcessImpl;

  factory _AuctionProcess.fromJson(Map<String, dynamic> json) =
      _$AuctionProcessImpl.fromJson;

  @override
  int? get auctionId;
  @override
  String? get manufacturerUuid;
  @override
  int? get bidPrice;
  @override
  List<int>? get bidTime;
  @override
  int? get bidCount;

  /// Create a copy of AuctionProcess
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionProcessImplCopyWith<_$AuctionProcessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
