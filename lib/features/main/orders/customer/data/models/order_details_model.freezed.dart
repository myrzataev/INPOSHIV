// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsModel {
  int? get orderId => throw _privateConstructorUsedError;
  String? get productName => throw _privateConstructorUsedError;
  int? get material => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, toJson: _nullableListToJson)
  List<String?>? get technicalDocuments => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, toJson: _nullableListToJson)
  List<String?>? get lekalaDocuments => throw _privateConstructorUsedError;
  List<String?>? get agreements => throw _privateConstructorUsedError;
  String? get deadlineStart => throw _privateConstructorUsedError;
  String? get deadlineEnd => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  String? get deliveryPoint => throw _privateConstructorUsedError;
  String? get manufacturerUuid => throw _privateConstructorUsedError;
  List<String?>? get technicalDocumentUrls =>
      throw _privateConstructorUsedError;
  List<String?>? get lekalaDocumentUrls => throw _privateConstructorUsedError;

  /// Serializes this OrderDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDetailsModelCopyWith<OrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsModelCopyWith<$Res> {
  factory $OrderDetailsModelCopyWith(
          OrderDetailsModel value, $Res Function(OrderDetailsModel) then) =
      _$OrderDetailsModelCopyWithImpl<$Res, OrderDetailsModel>;
  @useResult
  $Res call(
      {int? orderId,
      String? productName,
      int? material,
      String? color,
      int? quantity,
      @JsonKey(includeIfNull: false, toJson: _nullableListToJson)
      List<String?>? technicalDocuments,
      @JsonKey(includeIfNull: false, toJson: _nullableListToJson)
      List<String?>? lekalaDocuments,
      List<String?>? agreements,
      String? deadlineStart,
      String? deadlineEnd,
      int? discount,
      String? deliveryPoint,
      String? manufacturerUuid,
      List<String?>? technicalDocumentUrls,
      List<String?>? lekalaDocumentUrls});
}

/// @nodoc
class _$OrderDetailsModelCopyWithImpl<$Res, $Val extends OrderDetailsModel>
    implements $OrderDetailsModelCopyWith<$Res> {
  _$OrderDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? productName = freezed,
    Object? material = freezed,
    Object? color = freezed,
    Object? quantity = freezed,
    Object? technicalDocuments = freezed,
    Object? lekalaDocuments = freezed,
    Object? agreements = freezed,
    Object? deadlineStart = freezed,
    Object? deadlineEnd = freezed,
    Object? discount = freezed,
    Object? deliveryPoint = freezed,
    Object? manufacturerUuid = freezed,
    Object? technicalDocumentUrls = freezed,
    Object? lekalaDocumentUrls = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      material: freezed == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      technicalDocuments: freezed == technicalDocuments
          ? _value.technicalDocuments
          : technicalDocuments // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      lekalaDocuments: freezed == lekalaDocuments
          ? _value.lekalaDocuments
          : lekalaDocuments // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      agreements: freezed == agreements
          ? _value.agreements
          : agreements // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      deadlineStart: freezed == deadlineStart
          ? _value.deadlineStart
          : deadlineStart // ignore: cast_nullable_to_non_nullable
              as String?,
      deadlineEnd: freezed == deadlineEnd
          ? _value.deadlineEnd
          : deadlineEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryPoint: freezed == deliveryPoint
          ? _value.deliveryPoint
          : deliveryPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturerUuid: freezed == manufacturerUuid
          ? _value.manufacturerUuid
          : manufacturerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      technicalDocumentUrls: freezed == technicalDocumentUrls
          ? _value.technicalDocumentUrls
          : technicalDocumentUrls // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      lekalaDocumentUrls: freezed == lekalaDocumentUrls
          ? _value.lekalaDocumentUrls
          : lekalaDocumentUrls // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDetailsModelImplCopyWith<$Res>
    implements $OrderDetailsModelCopyWith<$Res> {
  factory _$$OrderDetailsModelImplCopyWith(_$OrderDetailsModelImpl value,
          $Res Function(_$OrderDetailsModelImpl) then) =
      __$$OrderDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? orderId,
      String? productName,
      int? material,
      String? color,
      int? quantity,
      @JsonKey(includeIfNull: false, toJson: _nullableListToJson)
      List<String?>? technicalDocuments,
      @JsonKey(includeIfNull: false, toJson: _nullableListToJson)
      List<String?>? lekalaDocuments,
      List<String?>? agreements,
      String? deadlineStart,
      String? deadlineEnd,
      int? discount,
      String? deliveryPoint,
      String? manufacturerUuid,
      List<String?>? technicalDocumentUrls,
      List<String?>? lekalaDocumentUrls});
}

/// @nodoc
class __$$OrderDetailsModelImplCopyWithImpl<$Res>
    extends _$OrderDetailsModelCopyWithImpl<$Res, _$OrderDetailsModelImpl>
    implements _$$OrderDetailsModelImplCopyWith<$Res> {
  __$$OrderDetailsModelImplCopyWithImpl(_$OrderDetailsModelImpl _value,
      $Res Function(_$OrderDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? productName = freezed,
    Object? material = freezed,
    Object? color = freezed,
    Object? quantity = freezed,
    Object? technicalDocuments = freezed,
    Object? lekalaDocuments = freezed,
    Object? agreements = freezed,
    Object? deadlineStart = freezed,
    Object? deadlineEnd = freezed,
    Object? discount = freezed,
    Object? deliveryPoint = freezed,
    Object? manufacturerUuid = freezed,
    Object? technicalDocumentUrls = freezed,
    Object? lekalaDocumentUrls = freezed,
  }) {
    return _then(_$OrderDetailsModelImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      material: freezed == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      technicalDocuments: freezed == technicalDocuments
          ? _value._technicalDocuments
          : technicalDocuments // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      lekalaDocuments: freezed == lekalaDocuments
          ? _value._lekalaDocuments
          : lekalaDocuments // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      agreements: freezed == agreements
          ? _value._agreements
          : agreements // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      deadlineStart: freezed == deadlineStart
          ? _value.deadlineStart
          : deadlineStart // ignore: cast_nullable_to_non_nullable
              as String?,
      deadlineEnd: freezed == deadlineEnd
          ? _value.deadlineEnd
          : deadlineEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryPoint: freezed == deliveryPoint
          ? _value.deliveryPoint
          : deliveryPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturerUuid: freezed == manufacturerUuid
          ? _value.manufacturerUuid
          : manufacturerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      technicalDocumentUrls: freezed == technicalDocumentUrls
          ? _value._technicalDocumentUrls
          : technicalDocumentUrls // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      lekalaDocumentUrls: freezed == lekalaDocumentUrls
          ? _value._lekalaDocumentUrls
          : lekalaDocumentUrls // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailsModelImpl implements _OrderDetailsModel {
  const _$OrderDetailsModelImpl(
      {this.orderId,
      this.productName,
      this.material,
      this.color,
      this.quantity,
      @JsonKey(includeIfNull: false, toJson: _nullableListToJson)
      final List<String?>? technicalDocuments,
      @JsonKey(includeIfNull: false, toJson: _nullableListToJson)
      final List<String?>? lekalaDocuments,
      final List<String?>? agreements,
      this.deadlineStart,
      this.deadlineEnd,
      this.discount,
      this.deliveryPoint,
      this.manufacturerUuid,
      final List<String?>? technicalDocumentUrls,
      final List<String?>? lekalaDocumentUrls})
      : _technicalDocuments = technicalDocuments,
        _lekalaDocuments = lekalaDocuments,
        _agreements = agreements,
        _technicalDocumentUrls = technicalDocumentUrls,
        _lekalaDocumentUrls = lekalaDocumentUrls;

  factory _$OrderDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailsModelImplFromJson(json);

  @override
  final int? orderId;
  @override
  final String? productName;
  @override
  final int? material;
  @override
  final String? color;
  @override
  final int? quantity;
  final List<String?>? _technicalDocuments;
  @override
  @JsonKey(includeIfNull: false, toJson: _nullableListToJson)
  List<String?>? get technicalDocuments {
    final value = _technicalDocuments;
    if (value == null) return null;
    if (_technicalDocuments is EqualUnmodifiableListView)
      return _technicalDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _lekalaDocuments;
  @override
  @JsonKey(includeIfNull: false, toJson: _nullableListToJson)
  List<String?>? get lekalaDocuments {
    final value = _lekalaDocuments;
    if (value == null) return null;
    if (_lekalaDocuments is EqualUnmodifiableListView) return _lekalaDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _agreements;
  @override
  List<String?>? get agreements {
    final value = _agreements;
    if (value == null) return null;
    if (_agreements is EqualUnmodifiableListView) return _agreements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? deadlineStart;
  @override
  final String? deadlineEnd;
  @override
  final int? discount;
  @override
  final String? deliveryPoint;
  @override
  final String? manufacturerUuid;
  final List<String?>? _technicalDocumentUrls;
  @override
  List<String?>? get technicalDocumentUrls {
    final value = _technicalDocumentUrls;
    if (value == null) return null;
    if (_technicalDocumentUrls is EqualUnmodifiableListView)
      return _technicalDocumentUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _lekalaDocumentUrls;
  @override
  List<String?>? get lekalaDocumentUrls {
    final value = _lekalaDocumentUrls;
    if (value == null) return null;
    if (_lekalaDocumentUrls is EqualUnmodifiableListView)
      return _lekalaDocumentUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderDetailsModel(orderId: $orderId, productName: $productName, material: $material, color: $color, quantity: $quantity, technicalDocuments: $technicalDocuments, lekalaDocuments: $lekalaDocuments, agreements: $agreements, deadlineStart: $deadlineStart, deadlineEnd: $deadlineEnd, discount: $discount, deliveryPoint: $deliveryPoint, manufacturerUuid: $manufacturerUuid, technicalDocumentUrls: $technicalDocumentUrls, lekalaDocumentUrls: $lekalaDocumentUrls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsModelImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.material, material) ||
                other.material == material) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            const DeepCollectionEquality()
                .equals(other._technicalDocuments, _technicalDocuments) &&
            const DeepCollectionEquality()
                .equals(other._lekalaDocuments, _lekalaDocuments) &&
            const DeepCollectionEquality()
                .equals(other._agreements, _agreements) &&
            (identical(other.deadlineStart, deadlineStart) ||
                other.deadlineStart == deadlineStart) &&
            (identical(other.deadlineEnd, deadlineEnd) ||
                other.deadlineEnd == deadlineEnd) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.deliveryPoint, deliveryPoint) ||
                other.deliveryPoint == deliveryPoint) &&
            (identical(other.manufacturerUuid, manufacturerUuid) ||
                other.manufacturerUuid == manufacturerUuid) &&
            const DeepCollectionEquality()
                .equals(other._technicalDocumentUrls, _technicalDocumentUrls) &&
            const DeepCollectionEquality()
                .equals(other._lekalaDocumentUrls, _lekalaDocumentUrls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      productName,
      material,
      color,
      quantity,
      const DeepCollectionEquality().hash(_technicalDocuments),
      const DeepCollectionEquality().hash(_lekalaDocuments),
      const DeepCollectionEquality().hash(_agreements),
      deadlineStart,
      deadlineEnd,
      discount,
      deliveryPoint,
      manufacturerUuid,
      const DeepCollectionEquality().hash(_technicalDocumentUrls),
      const DeepCollectionEquality().hash(_lekalaDocumentUrls));

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailsModelImplCopyWith<_$OrderDetailsModelImpl> get copyWith =>
      __$$OrderDetailsModelImplCopyWithImpl<_$OrderDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _OrderDetailsModel implements OrderDetailsModel {
  const factory _OrderDetailsModel(
      {final int? orderId,
      final String? productName,
      final int? material,
      final String? color,
      final int? quantity,
      @JsonKey(includeIfNull: false, toJson: _nullableListToJson)
      final List<String?>? technicalDocuments,
      @JsonKey(includeIfNull: false, toJson: _nullableListToJson)
      final List<String?>? lekalaDocuments,
      final List<String?>? agreements,
      final String? deadlineStart,
      final String? deadlineEnd,
      final int? discount,
      final String? deliveryPoint,
      final String? manufacturerUuid,
      final List<String?>? technicalDocumentUrls,
      final List<String?>? lekalaDocumentUrls}) = _$OrderDetailsModelImpl;

  factory _OrderDetailsModel.fromJson(Map<String, dynamic> json) =
      _$OrderDetailsModelImpl.fromJson;

  @override
  int? get orderId;
  @override
  String? get productName;
  @override
  int? get material;
  @override
  String? get color;
  @override
  int? get quantity;
  @override
  @JsonKey(includeIfNull: false, toJson: _nullableListToJson)
  List<String?>? get technicalDocuments;
  @override
  @JsonKey(includeIfNull: false, toJson: _nullableListToJson)
  List<String?>? get lekalaDocuments;
  @override
  List<String?>? get agreements;
  @override
  String? get deadlineStart;
  @override
  String? get deadlineEnd;
  @override
  int? get discount;
  @override
  String? get deliveryPoint;
  @override
  String? get manufacturerUuid;
  @override
  List<String?>? get technicalDocumentUrls;
  @override
  List<String?>? get lekalaDocumentUrls;

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDetailsModelImplCopyWith<_$OrderDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
