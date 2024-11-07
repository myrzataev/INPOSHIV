// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_orders_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerOrdersModel _$CustomerOrdersModelFromJson(Map<String, dynamic> json) {
  return _CustomerOrdersModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerOrdersModel {
  int? get orderId => throw _privateConstructorUsedError;
  int? get orderStatus => throw _privateConstructorUsedError;
  List<Product>? get products => throw _privateConstructorUsedError;
  String? get customerName => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  List<String>? get auctonsUuid => throw _privateConstructorUsedError;

  /// Serializes this CustomerOrdersModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerOrdersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerOrdersModelCopyWith<CustomerOrdersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerOrdersModelCopyWith<$Res> {
  factory $CustomerOrdersModelCopyWith(
          CustomerOrdersModel value, $Res Function(CustomerOrdersModel) then) =
      _$CustomerOrdersModelCopyWithImpl<$Res, CustomerOrdersModel>;
  @useResult
  $Res call(
      {int? orderId,
      int? orderStatus,
      List<Product>? products,
      String? customerName,
      DateTime? createdAt,
      List<String>? auctonsUuid});
}

/// @nodoc
class _$CustomerOrdersModelCopyWithImpl<$Res, $Val extends CustomerOrdersModel>
    implements $CustomerOrdersModelCopyWith<$Res> {
  _$CustomerOrdersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerOrdersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? orderStatus = freezed,
    Object? products = freezed,
    Object? customerName = freezed,
    Object? createdAt = freezed,
    Object? auctonsUuid = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      auctonsUuid: freezed == auctonsUuid
          ? _value.auctonsUuid
          : auctonsUuid // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerOrdersModelImplCopyWith<$Res>
    implements $CustomerOrdersModelCopyWith<$Res> {
  factory _$$CustomerOrdersModelImplCopyWith(_$CustomerOrdersModelImpl value,
          $Res Function(_$CustomerOrdersModelImpl) then) =
      __$$CustomerOrdersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? orderId,
      int? orderStatus,
      List<Product>? products,
      String? customerName,
      DateTime? createdAt,
      List<String>? auctonsUuid});
}

/// @nodoc
class __$$CustomerOrdersModelImplCopyWithImpl<$Res>
    extends _$CustomerOrdersModelCopyWithImpl<$Res, _$CustomerOrdersModelImpl>
    implements _$$CustomerOrdersModelImplCopyWith<$Res> {
  __$$CustomerOrdersModelImplCopyWithImpl(_$CustomerOrdersModelImpl _value,
      $Res Function(_$CustomerOrdersModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerOrdersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? orderStatus = freezed,
    Object? products = freezed,
    Object? customerName = freezed,
    Object? createdAt = freezed,
    Object? auctonsUuid = freezed,
  }) {
    return _then(_$CustomerOrdersModelImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      auctonsUuid: freezed == auctonsUuid
          ? _value._auctonsUuid
          : auctonsUuid // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerOrdersModelImpl implements _CustomerOrdersModel {
  const _$CustomerOrdersModelImpl(
      {this.orderId,
      this.orderStatus,
      final List<Product>? products,
      this.customerName,
      this.createdAt,
      final List<String>? auctonsUuid})
      : _products = products,
        _auctonsUuid = auctonsUuid;

  factory _$CustomerOrdersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerOrdersModelImplFromJson(json);

  @override
  final int? orderId;
  @override
  final int? orderStatus;
  final List<Product>? _products;
  @override
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? customerName;
  @override
  final DateTime? createdAt;
  final List<String>? _auctonsUuid;
  @override
  List<String>? get auctonsUuid {
    final value = _auctonsUuid;
    if (value == null) return null;
    if (_auctonsUuid is EqualUnmodifiableListView) return _auctonsUuid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CustomerOrdersModel(orderId: $orderId, orderStatus: $orderStatus, products: $products, customerName: $customerName, createdAt: $createdAt, auctonsUuid: $auctonsUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerOrdersModelImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._auctonsUuid, _auctonsUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      orderStatus,
      const DeepCollectionEquality().hash(_products),
      customerName,
      createdAt,
      const DeepCollectionEquality().hash(_auctonsUuid));

  /// Create a copy of CustomerOrdersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerOrdersModelImplCopyWith<_$CustomerOrdersModelImpl> get copyWith =>
      __$$CustomerOrdersModelImplCopyWithImpl<_$CustomerOrdersModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerOrdersModelImplToJson(
      this,
    );
  }
}

abstract class _CustomerOrdersModel implements CustomerOrdersModel {
  const factory _CustomerOrdersModel(
      {final int? orderId,
      final int? orderStatus,
      final List<Product>? products,
      final String? customerName,
      final DateTime? createdAt,
      final List<String>? auctonsUuid}) = _$CustomerOrdersModelImpl;

  factory _CustomerOrdersModel.fromJson(Map<String, dynamic> json) =
      _$CustomerOrdersModelImpl.fromJson;

  @override
  int? get orderId;
  @override
  int? get orderStatus;
  @override
  List<Product>? get products;
  @override
  String? get customerName;
  @override
  DateTime? get createdAt;
  @override
  List<String>? get auctonsUuid;

  /// Create a copy of CustomerOrdersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerOrdersModelImplCopyWith<_$CustomerOrdersModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String? get name => throw _privateConstructorUsedError;
  int? get clothingCategoryId => throw _privateConstructorUsedError;
  int? get fabricId => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  Map<String, int>? get sizeQuantities => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  int? get priceUsd => throw _privateConstructorUsedError;
  double? get priceRub => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String? name,
      int? clothingCategoryId,
      int? fabricId,
      int? quantity,
      Map<String, int>? sizeQuantities,
      dynamic description,
      int? priceUsd,
      double? priceRub,
      List<String>? photos});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? clothingCategoryId = freezed,
    Object? fabricId = freezed,
    Object? quantity = freezed,
    Object? sizeQuantities = freezed,
    Object? description = freezed,
    Object? priceUsd = freezed,
    Object? priceRub = freezed,
    Object? photos = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      clothingCategoryId: freezed == clothingCategoryId
          ? _value.clothingCategoryId
          : clothingCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      fabricId: freezed == fabricId
          ? _value.fabricId
          : fabricId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      sizeQuantities: freezed == sizeQuantities
          ? _value.sizeQuantities
          : sizeQuantities // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      priceUsd: freezed == priceUsd
          ? _value.priceUsd
          : priceUsd // ignore: cast_nullable_to_non_nullable
              as int?,
      priceRub: freezed == priceRub
          ? _value.priceRub
          : priceRub // ignore: cast_nullable_to_non_nullable
              as double?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      int? clothingCategoryId,
      int? fabricId,
      int? quantity,
      Map<String, int>? sizeQuantities,
      dynamic description,
      int? priceUsd,
      double? priceRub,
      List<String>? photos});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? clothingCategoryId = freezed,
    Object? fabricId = freezed,
    Object? quantity = freezed,
    Object? sizeQuantities = freezed,
    Object? description = freezed,
    Object? priceUsd = freezed,
    Object? priceRub = freezed,
    Object? photos = freezed,
  }) {
    return _then(_$ProductImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      clothingCategoryId: freezed == clothingCategoryId
          ? _value.clothingCategoryId
          : clothingCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      fabricId: freezed == fabricId
          ? _value.fabricId
          : fabricId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      sizeQuantities: freezed == sizeQuantities
          ? _value._sizeQuantities
          : sizeQuantities // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      priceUsd: freezed == priceUsd
          ? _value.priceUsd
          : priceUsd // ignore: cast_nullable_to_non_nullable
              as int?,
      priceRub: freezed == priceRub
          ? _value.priceRub
          : priceRub // ignore: cast_nullable_to_non_nullable
              as double?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {this.name,
      this.clothingCategoryId,
      this.fabricId,
      this.quantity,
      final Map<String, int>? sizeQuantities,
      this.description,
      this.priceUsd,
      this.priceRub,
      final List<String>? photos})
      : _sizeQuantities = sizeQuantities,
        _photos = photos;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String? name;
  @override
  final int? clothingCategoryId;
  @override
  final int? fabricId;
  @override
  final int? quantity;
  final Map<String, int>? _sizeQuantities;
  @override
  Map<String, int>? get sizeQuantities {
    final value = _sizeQuantities;
    if (value == null) return null;
    if (_sizeQuantities is EqualUnmodifiableMapView) return _sizeQuantities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final dynamic description;
  @override
  final int? priceUsd;
  @override
  final double? priceRub;
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
    return 'Product(name: $name, clothingCategoryId: $clothingCategoryId, fabricId: $fabricId, quantity: $quantity, sizeQuantities: $sizeQuantities, description: $description, priceUsd: $priceUsd, priceRub: $priceRub, photos: $photos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.clothingCategoryId, clothingCategoryId) ||
                other.clothingCategoryId == clothingCategoryId) &&
            (identical(other.fabricId, fabricId) ||
                other.fabricId == fabricId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            const DeepCollectionEquality()
                .equals(other._sizeQuantities, _sizeQuantities) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            (identical(other.priceUsd, priceUsd) ||
                other.priceUsd == priceUsd) &&
            (identical(other.priceRub, priceRub) ||
                other.priceRub == priceRub) &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      clothingCategoryId,
      fabricId,
      quantity,
      const DeepCollectionEquality().hash(_sizeQuantities),
      const DeepCollectionEquality().hash(description),
      priceUsd,
      priceRub,
      const DeepCollectionEquality().hash(_photos));

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {final String? name,
      final int? clothingCategoryId,
      final int? fabricId,
      final int? quantity,
      final Map<String, int>? sizeQuantities,
      final dynamic description,
      final int? priceUsd,
      final double? priceRub,
      final List<String>? photos}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String? get name;
  @override
  int? get clothingCategoryId;
  @override
  int? get fabricId;
  @override
  int? get quantity;
  @override
  Map<String, int>? get sizeQuantities;
  @override
  dynamic get description;
  @override
  int? get priceUsd;
  @override
  double? get priceRub;
  @override
  List<String>? get photos;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
