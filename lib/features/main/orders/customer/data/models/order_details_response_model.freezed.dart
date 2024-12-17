// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderDetailsResponseModel _$OrderDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _OrderDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsResponseModel {
  int? get orderId => throw _privateConstructorUsedError;
  String? get productName => throw _privateConstructorUsedError;
  String? get material => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  dynamic get technicalDocuments => throw _privateConstructorUsedError;
  dynamic get lekalaDocuments => throw _privateConstructorUsedError;
  dynamic get agreements => throw _privateConstructorUsedError;
  String? get deadlineStart => throw _privateConstructorUsedError;
  String? get deadlineEnd => throw _privateConstructorUsedError;
  dynamic get discount => throw _privateConstructorUsedError;
  String? get deliveryPoint => throw _privateConstructorUsedError;
  List<String?>? get technicalDocumentUrls =>
      throw _privateConstructorUsedError;
  List<String?>? get lekalaDocumentUrls => throw _privateConstructorUsedError;
  List<dynamic?>? get agreementUrls => throw _privateConstructorUsedError;
  dynamic get manufacturerUuid => throw _privateConstructorUsedError;
  List<int>? get deadlineStartAsLocalDate => throw _privateConstructorUsedError;
  List<int>? get deadlineEndAsLocalDate => throw _privateConstructorUsedError;

  /// Serializes this OrderDetailsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDetailsResponseModelCopyWith<OrderDetailsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsResponseModelCopyWith<$Res> {
  factory $OrderDetailsResponseModelCopyWith(OrderDetailsResponseModel value,
          $Res Function(OrderDetailsResponseModel) then) =
      _$OrderDetailsResponseModelCopyWithImpl<$Res, OrderDetailsResponseModel>;
  @useResult
  $Res call(
      {int? orderId,
      String? productName,
      String? material,
      String? color,
      int? quantity,
      dynamic technicalDocuments,
      dynamic lekalaDocuments,
      dynamic agreements,
      String? deadlineStart,
      String? deadlineEnd,
      dynamic discount,
      String? deliveryPoint,
      List<String?>? technicalDocumentUrls,
      List<String?>? lekalaDocumentUrls,
      List<dynamic?>? agreementUrls,
      dynamic manufacturerUuid,
      List<int>? deadlineStartAsLocalDate,
      List<int>? deadlineEndAsLocalDate});
}

/// @nodoc
class _$OrderDetailsResponseModelCopyWithImpl<$Res,
        $Val extends OrderDetailsResponseModel>
    implements $OrderDetailsResponseModelCopyWith<$Res> {
  _$OrderDetailsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDetailsResponseModel
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
    Object? technicalDocumentUrls = freezed,
    Object? lekalaDocumentUrls = freezed,
    Object? agreementUrls = freezed,
    Object? manufacturerUuid = freezed,
    Object? deadlineStartAsLocalDate = freezed,
    Object? deadlineEndAsLocalDate = freezed,
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
              as String?,
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
              as dynamic,
      lekalaDocuments: freezed == lekalaDocuments
          ? _value.lekalaDocuments
          : lekalaDocuments // ignore: cast_nullable_to_non_nullable
              as dynamic,
      agreements: freezed == agreements
          ? _value.agreements
          : agreements // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
      deliveryPoint: freezed == deliveryPoint
          ? _value.deliveryPoint
          : deliveryPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      technicalDocumentUrls: freezed == technicalDocumentUrls
          ? _value.technicalDocumentUrls
          : technicalDocumentUrls // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      lekalaDocumentUrls: freezed == lekalaDocumentUrls
          ? _value.lekalaDocumentUrls
          : lekalaDocumentUrls // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      agreementUrls: freezed == agreementUrls
          ? _value.agreementUrls
          : agreementUrls // ignore: cast_nullable_to_non_nullable
              as List<dynamic?>?,
      manufacturerUuid: freezed == manufacturerUuid
          ? _value.manufacturerUuid
          : manufacturerUuid // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deadlineStartAsLocalDate: freezed == deadlineStartAsLocalDate
          ? _value.deadlineStartAsLocalDate
          : deadlineStartAsLocalDate // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      deadlineEndAsLocalDate: freezed == deadlineEndAsLocalDate
          ? _value.deadlineEndAsLocalDate
          : deadlineEndAsLocalDate // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDetailsResponseModelImplCopyWith<$Res>
    implements $OrderDetailsResponseModelCopyWith<$Res> {
  factory _$$OrderDetailsResponseModelImplCopyWith(
          _$OrderDetailsResponseModelImpl value,
          $Res Function(_$OrderDetailsResponseModelImpl) then) =
      __$$OrderDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? orderId,
      String? productName,
      String? material,
      String? color,
      int? quantity,
      dynamic technicalDocuments,
      dynamic lekalaDocuments,
      dynamic agreements,
      String? deadlineStart,
      String? deadlineEnd,
      dynamic discount,
      String? deliveryPoint,
      List<String?>? technicalDocumentUrls,
      List<String?>? lekalaDocumentUrls,
      List<dynamic?>? agreementUrls,
      dynamic manufacturerUuid,
      List<int>? deadlineStartAsLocalDate,
      List<int>? deadlineEndAsLocalDate});
}

/// @nodoc
class __$$OrderDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$OrderDetailsResponseModelCopyWithImpl<$Res,
        _$OrderDetailsResponseModelImpl>
    implements _$$OrderDetailsResponseModelImplCopyWith<$Res> {
  __$$OrderDetailsResponseModelImplCopyWithImpl(
      _$OrderDetailsResponseModelImpl _value,
      $Res Function(_$OrderDetailsResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsResponseModel
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
    Object? technicalDocumentUrls = freezed,
    Object? lekalaDocumentUrls = freezed,
    Object? agreementUrls = freezed,
    Object? manufacturerUuid = freezed,
    Object? deadlineStartAsLocalDate = freezed,
    Object? deadlineEndAsLocalDate = freezed,
  }) {
    return _then(_$OrderDetailsResponseModelImpl(
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
              as String?,
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
              as dynamic,
      lekalaDocuments: freezed == lekalaDocuments
          ? _value.lekalaDocuments
          : lekalaDocuments // ignore: cast_nullable_to_non_nullable
              as dynamic,
      agreements: freezed == agreements
          ? _value.agreements
          : agreements // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
      deliveryPoint: freezed == deliveryPoint
          ? _value.deliveryPoint
          : deliveryPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      technicalDocumentUrls: freezed == technicalDocumentUrls
          ? _value._technicalDocumentUrls
          : technicalDocumentUrls // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      lekalaDocumentUrls: freezed == lekalaDocumentUrls
          ? _value._lekalaDocumentUrls
          : lekalaDocumentUrls // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      agreementUrls: freezed == agreementUrls
          ? _value._agreementUrls
          : agreementUrls // ignore: cast_nullable_to_non_nullable
              as List<dynamic?>?,
      manufacturerUuid: freezed == manufacturerUuid
          ? _value.manufacturerUuid
          : manufacturerUuid // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deadlineStartAsLocalDate: freezed == deadlineStartAsLocalDate
          ? _value._deadlineStartAsLocalDate
          : deadlineStartAsLocalDate // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      deadlineEndAsLocalDate: freezed == deadlineEndAsLocalDate
          ? _value._deadlineEndAsLocalDate
          : deadlineEndAsLocalDate // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailsResponseModelImpl implements _OrderDetailsResponseModel {
  const _$OrderDetailsResponseModelImpl(
      {this.orderId,
      this.productName,
      this.material,
      this.color,
      this.quantity,
      this.technicalDocuments,
      this.lekalaDocuments,
      this.agreements,
      this.deadlineStart,
      this.deadlineEnd,
      this.discount,
      this.deliveryPoint,
      final List<String?>? technicalDocumentUrls,
      final List<String?>? lekalaDocumentUrls,
      final List<dynamic?>? agreementUrls,
      this.manufacturerUuid,
      final List<int>? deadlineStartAsLocalDate,
      final List<int>? deadlineEndAsLocalDate})
      : _technicalDocumentUrls = technicalDocumentUrls,
        _lekalaDocumentUrls = lekalaDocumentUrls,
        _agreementUrls = agreementUrls,
        _deadlineStartAsLocalDate = deadlineStartAsLocalDate,
        _deadlineEndAsLocalDate = deadlineEndAsLocalDate;

  factory _$OrderDetailsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailsResponseModelImplFromJson(json);

  @override
  final int? orderId;
  @override
  final String? productName;
  @override
  final String? material;
  @override
  final String? color;
  @override
  final int? quantity;
  @override
  final dynamic technicalDocuments;
  @override
  final dynamic lekalaDocuments;
  @override
  final dynamic agreements;
  @override
  final String? deadlineStart;
  @override
  final String? deadlineEnd;
  @override
  final dynamic discount;
  @override
  final String? deliveryPoint;
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

  final List<dynamic?>? _agreementUrls;
  @override
  List<dynamic?>? get agreementUrls {
    final value = _agreementUrls;
    if (value == null) return null;
    if (_agreementUrls is EqualUnmodifiableListView) return _agreementUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic manufacturerUuid;
  final List<int>? _deadlineStartAsLocalDate;
  @override
  List<int>? get deadlineStartAsLocalDate {
    final value = _deadlineStartAsLocalDate;
    if (value == null) return null;
    if (_deadlineStartAsLocalDate is EqualUnmodifiableListView)
      return _deadlineStartAsLocalDate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _deadlineEndAsLocalDate;
  @override
  List<int>? get deadlineEndAsLocalDate {
    final value = _deadlineEndAsLocalDate;
    if (value == null) return null;
    if (_deadlineEndAsLocalDate is EqualUnmodifiableListView)
      return _deadlineEndAsLocalDate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderDetailsResponseModel(orderId: $orderId, productName: $productName, material: $material, color: $color, quantity: $quantity, technicalDocuments: $technicalDocuments, lekalaDocuments: $lekalaDocuments, agreements: $agreements, deadlineStart: $deadlineStart, deadlineEnd: $deadlineEnd, discount: $discount, deliveryPoint: $deliveryPoint, technicalDocumentUrls: $technicalDocumentUrls, lekalaDocumentUrls: $lekalaDocumentUrls, agreementUrls: $agreementUrls, manufacturerUuid: $manufacturerUuid, deadlineStartAsLocalDate: $deadlineStartAsLocalDate, deadlineEndAsLocalDate: $deadlineEndAsLocalDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsResponseModelImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.material, material) ||
                other.material == material) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            const DeepCollectionEquality()
                .equals(other.technicalDocuments, technicalDocuments) &&
            const DeepCollectionEquality()
                .equals(other.lekalaDocuments, lekalaDocuments) &&
            const DeepCollectionEquality()
                .equals(other.agreements, agreements) &&
            (identical(other.deadlineStart, deadlineStart) ||
                other.deadlineStart == deadlineStart) &&
            (identical(other.deadlineEnd, deadlineEnd) ||
                other.deadlineEnd == deadlineEnd) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            (identical(other.deliveryPoint, deliveryPoint) ||
                other.deliveryPoint == deliveryPoint) &&
            const DeepCollectionEquality()
                .equals(other._technicalDocumentUrls, _technicalDocumentUrls) &&
            const DeepCollectionEquality()
                .equals(other._lekalaDocumentUrls, _lekalaDocumentUrls) &&
            const DeepCollectionEquality()
                .equals(other._agreementUrls, _agreementUrls) &&
            const DeepCollectionEquality()
                .equals(other.manufacturerUuid, manufacturerUuid) &&
            const DeepCollectionEquality().equals(
                other._deadlineStartAsLocalDate, _deadlineStartAsLocalDate) &&
            const DeepCollectionEquality().equals(
                other._deadlineEndAsLocalDate, _deadlineEndAsLocalDate));
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
      const DeepCollectionEquality().hash(technicalDocuments),
      const DeepCollectionEquality().hash(lekalaDocuments),
      const DeepCollectionEquality().hash(agreements),
      deadlineStart,
      deadlineEnd,
      const DeepCollectionEquality().hash(discount),
      deliveryPoint,
      const DeepCollectionEquality().hash(_technicalDocumentUrls),
      const DeepCollectionEquality().hash(_lekalaDocumentUrls),
      const DeepCollectionEquality().hash(_agreementUrls),
      const DeepCollectionEquality().hash(manufacturerUuid),
      const DeepCollectionEquality().hash(_deadlineStartAsLocalDate),
      const DeepCollectionEquality().hash(_deadlineEndAsLocalDate));

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailsResponseModelImplCopyWith<_$OrderDetailsResponseModelImpl>
      get copyWith => __$$OrderDetailsResponseModelImplCopyWithImpl<
          _$OrderDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _OrderDetailsResponseModel implements OrderDetailsResponseModel {
  const factory _OrderDetailsResponseModel(
          {final int? orderId,
          final String? productName,
          final String? material,
          final String? color,
          final int? quantity,
          final dynamic technicalDocuments,
          final dynamic lekalaDocuments,
          final dynamic agreements,
          final String? deadlineStart,
          final String? deadlineEnd,
          final dynamic discount,
          final String? deliveryPoint,
          final List<String?>? technicalDocumentUrls,
          final List<String?>? lekalaDocumentUrls,
          final List<dynamic?>? agreementUrls,
          final dynamic manufacturerUuid,
          final List<int>? deadlineStartAsLocalDate,
          final List<int>? deadlineEndAsLocalDate}) =
      _$OrderDetailsResponseModelImpl;

  factory _OrderDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$OrderDetailsResponseModelImpl.fromJson;

  @override
  int? get orderId;
  @override
  String? get productName;
  @override
  String? get material;
  @override
  String? get color;
  @override
  int? get quantity;
  @override
  dynamic get technicalDocuments;
  @override
  dynamic get lekalaDocuments;
  @override
  dynamic get agreements;
  @override
  String? get deadlineStart;
  @override
  String? get deadlineEnd;
  @override
  dynamic get discount;
  @override
  String? get deliveryPoint;
  @override
  List<String?>? get technicalDocumentUrls;
  @override
  List<String?>? get lekalaDocumentUrls;
  @override
  List<dynamic?>? get agreementUrls;
  @override
  dynamic get manufacturerUuid;
  @override
  List<int>? get deadlineStartAsLocalDate;
  @override
  List<int>? get deadlineEndAsLocalDate;

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDetailsResponseModelImplCopyWith<_$OrderDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
