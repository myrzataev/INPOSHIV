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
  List<ProductsList>? get productsList => throw _privateConstructorUsedError;
  List<dynamic>? get auctionProcesses => throw _privateConstructorUsedError;

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
      List<ProductsList>? productsList,
      List<dynamic>? auctionProcesses});
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
    Object? productsList = freezed,
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
      productsList: freezed == productsList
          ? _value.productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<ProductsList>?,
      auctionProcesses: freezed == auctionProcesses
          ? _value.auctionProcesses
          : auctionProcesses // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      List<ProductsList>? productsList,
      List<dynamic>? auctionProcesses});
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
    Object? productsList = freezed,
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
      productsList: freezed == productsList
          ? _value._productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<ProductsList>?,
      auctionProcesses: freezed == auctionProcesses
          ? _value._auctionProcesses
          : auctionProcesses // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      final List<ProductsList>? productsList,
      final List<dynamic>? auctionProcesses})
      : _productsList = productsList,
        _auctionProcesses = auctionProcesses;

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
  final List<ProductsList>? _productsList;
  @override
  List<ProductsList>? get productsList {
    final value = _productsList;
    if (value == null) return null;
    if (_productsList is EqualUnmodifiableListView) return _productsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _auctionProcesses;
  @override
  List<dynamic>? get auctionProcesses {
    final value = _auctionProcesses;
    if (value == null) return null;
    if (_auctionProcesses is EqualUnmodifiableListView)
      return _auctionProcesses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AuctionModel(orderId: $orderId, winnerUid: $winnerUid, startTime: $startTime, endTime: $endTime, auctionUuid: $auctionUuid, productsList: $productsList, auctionProcesses: $auctionProcesses)';
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
                .equals(other._productsList, _productsList) &&
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
      const DeepCollectionEquality().hash(_productsList),
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
      final List<ProductsList>? productsList,
      final List<dynamic>? auctionProcesses}) = _$AuctionModelImpl;

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
  List<ProductsList>? get productsList;
  @override
  List<dynamic>? get auctionProcesses;

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionModelImplCopyWith<_$AuctionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsList _$ProductsListFromJson(Map<String, dynamic> json) {
  return _ProductsList.fromJson(json);
}

/// @nodoc
mixin _$ProductsList {
  String? get name => throw _privateConstructorUsedError;
  dynamic get categoryId => throw _privateConstructorUsedError;
  int? get fabricId => throw _privateConstructorUsedError;
  int? get sizeId => throw _privateConstructorUsedError;
  int? get priceUsd => throw _privateConstructorUsedError;
  double? get priceRub => throw _privateConstructorUsedError;
  dynamic get quantity => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;

  /// Serializes this ProductsList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsListCopyWith<ProductsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsListCopyWith<$Res> {
  factory $ProductsListCopyWith(
          ProductsList value, $Res Function(ProductsList) then) =
      _$ProductsListCopyWithImpl<$Res, ProductsList>;
  @useResult
  $Res call(
      {String? name,
      dynamic categoryId,
      int? fabricId,
      int? sizeId,
      int? priceUsd,
      double? priceRub,
      dynamic quantity,
      dynamic description,
      List<String>? photos});
}

/// @nodoc
class _$ProductsListCopyWithImpl<$Res, $Val extends ProductsList>
    implements $ProductsListCopyWith<$Res> {
  _$ProductsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? categoryId = freezed,
    Object? fabricId = freezed,
    Object? sizeId = freezed,
    Object? priceUsd = freezed,
    Object? priceRub = freezed,
    Object? quantity = freezed,
    Object? description = freezed,
    Object? photos = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fabricId: freezed == fabricId
          ? _value.fabricId
          : fabricId // ignore: cast_nullable_to_non_nullable
              as int?,
      sizeId: freezed == sizeId
          ? _value.sizeId
          : sizeId // ignore: cast_nullable_to_non_nullable
              as int?,
      priceUsd: freezed == priceUsd
          ? _value.priceUsd
          : priceUsd // ignore: cast_nullable_to_non_nullable
              as int?,
      priceRub: freezed == priceRub
          ? _value.priceRub
          : priceRub // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsListImplCopyWith<$Res>
    implements $ProductsListCopyWith<$Res> {
  factory _$$ProductsListImplCopyWith(
          _$ProductsListImpl value, $Res Function(_$ProductsListImpl) then) =
      __$$ProductsListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      dynamic categoryId,
      int? fabricId,
      int? sizeId,
      int? priceUsd,
      double? priceRub,
      dynamic quantity,
      dynamic description,
      List<String>? photos});
}

/// @nodoc
class __$$ProductsListImplCopyWithImpl<$Res>
    extends _$ProductsListCopyWithImpl<$Res, _$ProductsListImpl>
    implements _$$ProductsListImplCopyWith<$Res> {
  __$$ProductsListImplCopyWithImpl(
      _$ProductsListImpl _value, $Res Function(_$ProductsListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? categoryId = freezed,
    Object? fabricId = freezed,
    Object? sizeId = freezed,
    Object? priceUsd = freezed,
    Object? priceRub = freezed,
    Object? quantity = freezed,
    Object? description = freezed,
    Object? photos = freezed,
  }) {
    return _then(_$ProductsListImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fabricId: freezed == fabricId
          ? _value.fabricId
          : fabricId // ignore: cast_nullable_to_non_nullable
              as int?,
      sizeId: freezed == sizeId
          ? _value.sizeId
          : sizeId // ignore: cast_nullable_to_non_nullable
              as int?,
      priceUsd: freezed == priceUsd
          ? _value.priceUsd
          : priceUsd // ignore: cast_nullable_to_non_nullable
              as int?,
      priceRub: freezed == priceRub
          ? _value.priceRub
          : priceRub // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsListImpl implements _ProductsList {
  const _$ProductsListImpl(
      {this.name,
      this.categoryId,
      this.fabricId,
      this.sizeId,
      this.priceUsd,
      this.priceRub,
      this.quantity,
      this.description,
      final List<String>? photos})
      : _photos = photos;

  factory _$ProductsListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsListImplFromJson(json);

  @override
  final String? name;
  @override
  final dynamic categoryId;
  @override
  final int? fabricId;
  @override
  final int? sizeId;
  @override
  final int? priceUsd;
  @override
  final double? priceRub;
  @override
  final dynamic quantity;
  @override
  final dynamic description;
  final List<String>? _photos;
  @override
  List<String>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductsList(name: $name, categoryId: $categoryId, fabricId: $fabricId, sizeId: $sizeId, priceUsd: $priceUsd, priceRub: $priceRub, quantity: $quantity, description: $description, photos: $photos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsListImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId) &&
            (identical(other.fabricId, fabricId) ||
                other.fabricId == fabricId) &&
            (identical(other.sizeId, sizeId) || other.sizeId == sizeId) &&
            (identical(other.priceUsd, priceUsd) ||
                other.priceUsd == priceUsd) &&
            (identical(other.priceRub, priceRub) ||
                other.priceRub == priceRub) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(categoryId),
      fabricId,
      sizeId,
      priceUsd,
      priceRub,
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_photos));

  /// Create a copy of ProductsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsListImplCopyWith<_$ProductsListImpl> get copyWith =>
      __$$ProductsListImplCopyWithImpl<_$ProductsListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsListImplToJson(
      this,
    );
  }
}

abstract class _ProductsList implements ProductsList {
  const factory _ProductsList(
      {final String? name,
      final dynamic categoryId,
      final int? fabricId,
      final int? sizeId,
      final int? priceUsd,
      final double? priceRub,
      final dynamic quantity,
      final dynamic description,
      final List<String>? photos}) = _$ProductsListImpl;

  factory _ProductsList.fromJson(Map<String, dynamic> json) =
      _$ProductsListImpl.fromJson;

  @override
  String? get name;
  @override
  dynamic get categoryId;
  @override
  int? get fabricId;
  @override
  int? get sizeId;
  @override
  int? get priceUsd;
  @override
  double? get priceRub;
  @override
  dynamic get quantity;
  @override
  dynamic get description;
  @override
  List<String>? get photos;

  /// Create a copy of ProductsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsListImplCopyWith<_$ProductsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
