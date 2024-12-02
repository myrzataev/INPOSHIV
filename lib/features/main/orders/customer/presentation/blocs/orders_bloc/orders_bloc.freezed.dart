// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersEvent {
  String get orderId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> orderDetails, String orderId)
        sendOrderDetails,
    required TResult Function(Map<String, dynamic> invoice, String orderId)
        sendInvoice,
    required TResult Function(Map<String, dynamic> invoice, String orderId)
        changeInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> orderDetails, String orderId)?
        sendOrderDetails,
    TResult? Function(Map<String, dynamic> invoice, String orderId)?
        sendInvoice,
    TResult? Function(Map<String, dynamic> invoice, String orderId)?
        changeInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> orderDetails, String orderId)?
        sendOrderDetails,
    TResult Function(Map<String, dynamic> invoice, String orderId)? sendInvoice,
    TResult Function(Map<String, dynamic> invoice, String orderId)?
        changeInvoice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOrderDetails value) sendOrderDetails,
    required TResult Function(SendInvoice value) sendInvoice,
    required TResult Function(_ChangeInvoice value) changeInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendOrderDetails value)? sendOrderDetails,
    TResult? Function(SendInvoice value)? sendInvoice,
    TResult? Function(_ChangeInvoice value)? changeInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOrderDetails value)? sendOrderDetails,
    TResult Function(SendInvoice value)? sendInvoice,
    TResult Function(_ChangeInvoice value)? changeInvoice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersEventCopyWith<OrdersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res, OrdersEvent>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res, $Val extends OrdersEvent>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendOrderDetailsImplCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory _$$SendOrderDetailsImplCopyWith(_$SendOrderDetailsImpl value,
          $Res Function(_$SendOrderDetailsImpl) then) =
      __$$SendOrderDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> orderDetails, String orderId});
}

/// @nodoc
class __$$SendOrderDetailsImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$SendOrderDetailsImpl>
    implements _$$SendOrderDetailsImplCopyWith<$Res> {
  __$$SendOrderDetailsImplCopyWithImpl(_$SendOrderDetailsImpl _value,
      $Res Function(_$SendOrderDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDetails = null,
    Object? orderId = null,
  }) {
    return _then(_$SendOrderDetailsImpl(
      orderDetails: null == orderDetails
          ? _value._orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendOrderDetailsImpl implements SendOrderDetails {
  const _$SendOrderDetailsImpl(
      {required final Map<String, dynamic> orderDetails, required this.orderId})
      : _orderDetails = orderDetails;

  final Map<String, dynamic> _orderDetails;
  @override
  Map<String, dynamic> get orderDetails {
    if (_orderDetails is EqualUnmodifiableMapView) return _orderDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_orderDetails);
  }

  @override
  final String orderId;

  @override
  String toString() {
    return 'OrdersEvent.sendOrderDetails(orderDetails: $orderDetails, orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOrderDetailsImpl &&
            const DeepCollectionEquality()
                .equals(other._orderDetails, _orderDetails) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orderDetails), orderId);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOrderDetailsImplCopyWith<_$SendOrderDetailsImpl> get copyWith =>
      __$$SendOrderDetailsImplCopyWithImpl<_$SendOrderDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> orderDetails, String orderId)
        sendOrderDetails,
    required TResult Function(Map<String, dynamic> invoice, String orderId)
        sendInvoice,
    required TResult Function(Map<String, dynamic> invoice, String orderId)
        changeInvoice,
  }) {
    return sendOrderDetails(orderDetails, orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> orderDetails, String orderId)?
        sendOrderDetails,
    TResult? Function(Map<String, dynamic> invoice, String orderId)?
        sendInvoice,
    TResult? Function(Map<String, dynamic> invoice, String orderId)?
        changeInvoice,
  }) {
    return sendOrderDetails?.call(orderDetails, orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> orderDetails, String orderId)?
        sendOrderDetails,
    TResult Function(Map<String, dynamic> invoice, String orderId)? sendInvoice,
    TResult Function(Map<String, dynamic> invoice, String orderId)?
        changeInvoice,
    required TResult orElse(),
  }) {
    if (sendOrderDetails != null) {
      return sendOrderDetails(orderDetails, orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOrderDetails value) sendOrderDetails,
    required TResult Function(SendInvoice value) sendInvoice,
    required TResult Function(_ChangeInvoice value) changeInvoice,
  }) {
    return sendOrderDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendOrderDetails value)? sendOrderDetails,
    TResult? Function(SendInvoice value)? sendInvoice,
    TResult? Function(_ChangeInvoice value)? changeInvoice,
  }) {
    return sendOrderDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOrderDetails value)? sendOrderDetails,
    TResult Function(SendInvoice value)? sendInvoice,
    TResult Function(_ChangeInvoice value)? changeInvoice,
    required TResult orElse(),
  }) {
    if (sendOrderDetails != null) {
      return sendOrderDetails(this);
    }
    return orElse();
  }
}

abstract class SendOrderDetails implements OrdersEvent {
  const factory SendOrderDetails(
      {required final Map<String, dynamic> orderDetails,
      required final String orderId}) = _$SendOrderDetailsImpl;

  Map<String, dynamic> get orderDetails;
  @override
  String get orderId;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendOrderDetailsImplCopyWith<_$SendOrderDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendInvoiceImplCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory _$$SendInvoiceImplCopyWith(
          _$SendInvoiceImpl value, $Res Function(_$SendInvoiceImpl) then) =
      __$$SendInvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> invoice, String orderId});
}

/// @nodoc
class __$$SendInvoiceImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$SendInvoiceImpl>
    implements _$$SendInvoiceImplCopyWith<$Res> {
  __$$SendInvoiceImplCopyWithImpl(
      _$SendInvoiceImpl _value, $Res Function(_$SendInvoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoice = null,
    Object? orderId = null,
  }) {
    return _then(_$SendInvoiceImpl(
      invoice: null == invoice
          ? _value._invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendInvoiceImpl implements SendInvoice {
  const _$SendInvoiceImpl(
      {required final Map<String, dynamic> invoice, required this.orderId})
      : _invoice = invoice;

  final Map<String, dynamic> _invoice;
  @override
  Map<String, dynamic> get invoice {
    if (_invoice is EqualUnmodifiableMapView) return _invoice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_invoice);
  }

  @override
  final String orderId;

  @override
  String toString() {
    return 'OrdersEvent.sendInvoice(invoice: $invoice, orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendInvoiceImpl &&
            const DeepCollectionEquality().equals(other._invoice, _invoice) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_invoice), orderId);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendInvoiceImplCopyWith<_$SendInvoiceImpl> get copyWith =>
      __$$SendInvoiceImplCopyWithImpl<_$SendInvoiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> orderDetails, String orderId)
        sendOrderDetails,
    required TResult Function(Map<String, dynamic> invoice, String orderId)
        sendInvoice,
    required TResult Function(Map<String, dynamic> invoice, String orderId)
        changeInvoice,
  }) {
    return sendInvoice(invoice, orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> orderDetails, String orderId)?
        sendOrderDetails,
    TResult? Function(Map<String, dynamic> invoice, String orderId)?
        sendInvoice,
    TResult? Function(Map<String, dynamic> invoice, String orderId)?
        changeInvoice,
  }) {
    return sendInvoice?.call(invoice, orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> orderDetails, String orderId)?
        sendOrderDetails,
    TResult Function(Map<String, dynamic> invoice, String orderId)? sendInvoice,
    TResult Function(Map<String, dynamic> invoice, String orderId)?
        changeInvoice,
    required TResult orElse(),
  }) {
    if (sendInvoice != null) {
      return sendInvoice(invoice, orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOrderDetails value) sendOrderDetails,
    required TResult Function(SendInvoice value) sendInvoice,
    required TResult Function(_ChangeInvoice value) changeInvoice,
  }) {
    return sendInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendOrderDetails value)? sendOrderDetails,
    TResult? Function(SendInvoice value)? sendInvoice,
    TResult? Function(_ChangeInvoice value)? changeInvoice,
  }) {
    return sendInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOrderDetails value)? sendOrderDetails,
    TResult Function(SendInvoice value)? sendInvoice,
    TResult Function(_ChangeInvoice value)? changeInvoice,
    required TResult orElse(),
  }) {
    if (sendInvoice != null) {
      return sendInvoice(this);
    }
    return orElse();
  }
}

abstract class SendInvoice implements OrdersEvent {
  const factory SendInvoice(
      {required final Map<String, dynamic> invoice,
      required final String orderId}) = _$SendInvoiceImpl;

  Map<String, dynamic> get invoice;
  @override
  String get orderId;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendInvoiceImplCopyWith<_$SendInvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeInvoiceImplCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory _$$ChangeInvoiceImplCopyWith(
          _$ChangeInvoiceImpl value, $Res Function(_$ChangeInvoiceImpl) then) =
      __$$ChangeInvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> invoice, String orderId});
}

/// @nodoc
class __$$ChangeInvoiceImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$ChangeInvoiceImpl>
    implements _$$ChangeInvoiceImplCopyWith<$Res> {
  __$$ChangeInvoiceImplCopyWithImpl(
      _$ChangeInvoiceImpl _value, $Res Function(_$ChangeInvoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoice = null,
    Object? orderId = null,
  }) {
    return _then(_$ChangeInvoiceImpl(
      invoice: null == invoice
          ? _value._invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeInvoiceImpl implements _ChangeInvoice {
  const _$ChangeInvoiceImpl(
      {required final Map<String, dynamic> invoice, required this.orderId})
      : _invoice = invoice;

  final Map<String, dynamic> _invoice;
  @override
  Map<String, dynamic> get invoice {
    if (_invoice is EqualUnmodifiableMapView) return _invoice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_invoice);
  }

  @override
  final String orderId;

  @override
  String toString() {
    return 'OrdersEvent.changeInvoice(invoice: $invoice, orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeInvoiceImpl &&
            const DeepCollectionEquality().equals(other._invoice, _invoice) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_invoice), orderId);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeInvoiceImplCopyWith<_$ChangeInvoiceImpl> get copyWith =>
      __$$ChangeInvoiceImplCopyWithImpl<_$ChangeInvoiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> orderDetails, String orderId)
        sendOrderDetails,
    required TResult Function(Map<String, dynamic> invoice, String orderId)
        sendInvoice,
    required TResult Function(Map<String, dynamic> invoice, String orderId)
        changeInvoice,
  }) {
    return changeInvoice(invoice, orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> orderDetails, String orderId)?
        sendOrderDetails,
    TResult? Function(Map<String, dynamic> invoice, String orderId)?
        sendInvoice,
    TResult? Function(Map<String, dynamic> invoice, String orderId)?
        changeInvoice,
  }) {
    return changeInvoice?.call(invoice, orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> orderDetails, String orderId)?
        sendOrderDetails,
    TResult Function(Map<String, dynamic> invoice, String orderId)? sendInvoice,
    TResult Function(Map<String, dynamic> invoice, String orderId)?
        changeInvoice,
    required TResult orElse(),
  }) {
    if (changeInvoice != null) {
      return changeInvoice(invoice, orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOrderDetails value) sendOrderDetails,
    required TResult Function(SendInvoice value) sendInvoice,
    required TResult Function(_ChangeInvoice value) changeInvoice,
  }) {
    return changeInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendOrderDetails value)? sendOrderDetails,
    TResult? Function(SendInvoice value)? sendInvoice,
    TResult? Function(_ChangeInvoice value)? changeInvoice,
  }) {
    return changeInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOrderDetails value)? sendOrderDetails,
    TResult Function(SendInvoice value)? sendInvoice,
    TResult Function(_ChangeInvoice value)? changeInvoice,
    required TResult orElse(),
  }) {
    if (changeInvoice != null) {
      return changeInvoice(this);
    }
    return orElse();
  }
}

abstract class _ChangeInvoice implements OrdersEvent {
  const factory _ChangeInvoice(
      {required final Map<String, dynamic> invoice,
      required final String orderId}) = _$ChangeInvoiceImpl;

  Map<String, dynamic> get invoice;
  @override
  String get orderId;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeInvoiceImplCopyWith<_$ChangeInvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrdersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderDetailsModel model) orderDetailsSended,
    required TResult Function(AppError error) orderDetailsError,
    required TResult Function(InvoiceModel model) invoiceSended,
    required TResult Function(AppError error) invoiceError,
    required TResult Function(InvoiceModel model) changeInvoiceSuccess,
    required TResult Function(AppError error) changeInvoiceError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrderDetailsModel model)? orderDetailsSended,
    TResult? Function(AppError error)? orderDetailsError,
    TResult? Function(InvoiceModel model)? invoiceSended,
    TResult? Function(AppError error)? invoiceError,
    TResult? Function(InvoiceModel model)? changeInvoiceSuccess,
    TResult? Function(AppError error)? changeInvoiceError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderDetailsModel model)? orderDetailsSended,
    TResult Function(AppError error)? orderDetailsError,
    TResult Function(InvoiceModel model)? invoiceSended,
    TResult Function(AppError error)? invoiceError,
    TResult Function(InvoiceModel model)? changeInvoiceSuccess,
    TResult Function(AppError error)? changeInvoiceError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OrderDetailsSended value) orderDetailsSended,
    required TResult Function(_OrderDetailsError value) orderDetailsError,
    required TResult Function(_InvoiceSended value) invoiceSended,
    required TResult Function(_InvoiceError value) invoiceError,
    required TResult Function(_ChangeInvoiceSuccess value) changeInvoiceSuccess,
    required TResult Function(_ChangeInvoiceError value) changeInvoiceError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderDetailsSended value)? orderDetailsSended,
    TResult? Function(_OrderDetailsError value)? orderDetailsError,
    TResult? Function(_InvoiceSended value)? invoiceSended,
    TResult? Function(_InvoiceError value)? invoiceError,
    TResult? Function(_ChangeInvoiceSuccess value)? changeInvoiceSuccess,
    TResult? Function(_ChangeInvoiceError value)? changeInvoiceError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderDetailsSended value)? orderDetailsSended,
    TResult Function(_OrderDetailsError value)? orderDetailsError,
    TResult Function(_InvoiceSended value)? invoiceSended,
    TResult Function(_InvoiceError value)? invoiceError,
    TResult Function(_ChangeInvoiceSuccess value)? changeInvoiceSuccess,
    TResult Function(_ChangeInvoiceError value)? changeInvoiceError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersState
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
    extends _$OrdersStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OrdersState.initial()';
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
    required TResult Function(OrderDetailsModel model) orderDetailsSended,
    required TResult Function(AppError error) orderDetailsError,
    required TResult Function(InvoiceModel model) invoiceSended,
    required TResult Function(AppError error) invoiceError,
    required TResult Function(InvoiceModel model) changeInvoiceSuccess,
    required TResult Function(AppError error) changeInvoiceError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrderDetailsModel model)? orderDetailsSended,
    TResult? Function(AppError error)? orderDetailsError,
    TResult? Function(InvoiceModel model)? invoiceSended,
    TResult? Function(AppError error)? invoiceError,
    TResult? Function(InvoiceModel model)? changeInvoiceSuccess,
    TResult? Function(AppError error)? changeInvoiceError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderDetailsModel model)? orderDetailsSended,
    TResult Function(AppError error)? orderDetailsError,
    TResult Function(InvoiceModel model)? invoiceSended,
    TResult Function(AppError error)? invoiceError,
    TResult Function(InvoiceModel model)? changeInvoiceSuccess,
    TResult Function(AppError error)? changeInvoiceError,
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
    required TResult Function(_OrderDetailsSended value) orderDetailsSended,
    required TResult Function(_OrderDetailsError value) orderDetailsError,
    required TResult Function(_InvoiceSended value) invoiceSended,
    required TResult Function(_InvoiceError value) invoiceError,
    required TResult Function(_ChangeInvoiceSuccess value) changeInvoiceSuccess,
    required TResult Function(_ChangeInvoiceError value) changeInvoiceError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderDetailsSended value)? orderDetailsSended,
    TResult? Function(_OrderDetailsError value)? orderDetailsError,
    TResult? Function(_InvoiceSended value)? invoiceSended,
    TResult? Function(_InvoiceError value)? invoiceError,
    TResult? Function(_ChangeInvoiceSuccess value)? changeInvoiceSuccess,
    TResult? Function(_ChangeInvoiceError value)? changeInvoiceError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderDetailsSended value)? orderDetailsSended,
    TResult Function(_OrderDetailsError value)? orderDetailsError,
    TResult Function(_InvoiceSended value)? invoiceSended,
    TResult Function(_InvoiceError value)? invoiceError,
    TResult Function(_ChangeInvoiceSuccess value)? changeInvoiceSuccess,
    TResult Function(_ChangeInvoiceError value)? changeInvoiceError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrdersState {
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
    extends _$OrdersStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'OrdersState.loading()';
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
    required TResult Function(OrderDetailsModel model) orderDetailsSended,
    required TResult Function(AppError error) orderDetailsError,
    required TResult Function(InvoiceModel model) invoiceSended,
    required TResult Function(AppError error) invoiceError,
    required TResult Function(InvoiceModel model) changeInvoiceSuccess,
    required TResult Function(AppError error) changeInvoiceError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrderDetailsModel model)? orderDetailsSended,
    TResult? Function(AppError error)? orderDetailsError,
    TResult? Function(InvoiceModel model)? invoiceSended,
    TResult? Function(AppError error)? invoiceError,
    TResult? Function(InvoiceModel model)? changeInvoiceSuccess,
    TResult? Function(AppError error)? changeInvoiceError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderDetailsModel model)? orderDetailsSended,
    TResult Function(AppError error)? orderDetailsError,
    TResult Function(InvoiceModel model)? invoiceSended,
    TResult Function(AppError error)? invoiceError,
    TResult Function(InvoiceModel model)? changeInvoiceSuccess,
    TResult Function(AppError error)? changeInvoiceError,
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
    required TResult Function(_OrderDetailsSended value) orderDetailsSended,
    required TResult Function(_OrderDetailsError value) orderDetailsError,
    required TResult Function(_InvoiceSended value) invoiceSended,
    required TResult Function(_InvoiceError value) invoiceError,
    required TResult Function(_ChangeInvoiceSuccess value) changeInvoiceSuccess,
    required TResult Function(_ChangeInvoiceError value) changeInvoiceError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderDetailsSended value)? orderDetailsSended,
    TResult? Function(_OrderDetailsError value)? orderDetailsError,
    TResult? Function(_InvoiceSended value)? invoiceSended,
    TResult? Function(_InvoiceError value)? invoiceError,
    TResult? Function(_ChangeInvoiceSuccess value)? changeInvoiceSuccess,
    TResult? Function(_ChangeInvoiceError value)? changeInvoiceError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderDetailsSended value)? orderDetailsSended,
    TResult Function(_OrderDetailsError value)? orderDetailsError,
    TResult Function(_InvoiceSended value)? invoiceSended,
    TResult Function(_InvoiceError value)? invoiceError,
    TResult Function(_ChangeInvoiceSuccess value)? changeInvoiceSuccess,
    TResult Function(_ChangeInvoiceError value)? changeInvoiceError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OrdersState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$OrderDetailsSendedImplCopyWith<$Res> {
  factory _$$OrderDetailsSendedImplCopyWith(_$OrderDetailsSendedImpl value,
          $Res Function(_$OrderDetailsSendedImpl) then) =
      __$$OrderDetailsSendedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderDetailsModel model});

  $OrderDetailsModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$OrderDetailsSendedImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$OrderDetailsSendedImpl>
    implements _$$OrderDetailsSendedImplCopyWith<$Res> {
  __$$OrderDetailsSendedImplCopyWithImpl(_$OrderDetailsSendedImpl _value,
      $Res Function(_$OrderDetailsSendedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$OrderDetailsSendedImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as OrderDetailsModel,
    ));
  }

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderDetailsModelCopyWith<$Res> get model {
    return $OrderDetailsModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$OrderDetailsSendedImpl implements _OrderDetailsSended {
  const _$OrderDetailsSendedImpl({required this.model});

  @override
  final OrderDetailsModel model;

  @override
  String toString() {
    return 'OrdersState.orderDetailsSended(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsSendedImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailsSendedImplCopyWith<_$OrderDetailsSendedImpl> get copyWith =>
      __$$OrderDetailsSendedImplCopyWithImpl<_$OrderDetailsSendedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderDetailsModel model) orderDetailsSended,
    required TResult Function(AppError error) orderDetailsError,
    required TResult Function(InvoiceModel model) invoiceSended,
    required TResult Function(AppError error) invoiceError,
    required TResult Function(InvoiceModel model) changeInvoiceSuccess,
    required TResult Function(AppError error) changeInvoiceError,
  }) {
    return orderDetailsSended(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrderDetailsModel model)? orderDetailsSended,
    TResult? Function(AppError error)? orderDetailsError,
    TResult? Function(InvoiceModel model)? invoiceSended,
    TResult? Function(AppError error)? invoiceError,
    TResult? Function(InvoiceModel model)? changeInvoiceSuccess,
    TResult? Function(AppError error)? changeInvoiceError,
  }) {
    return orderDetailsSended?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderDetailsModel model)? orderDetailsSended,
    TResult Function(AppError error)? orderDetailsError,
    TResult Function(InvoiceModel model)? invoiceSended,
    TResult Function(AppError error)? invoiceError,
    TResult Function(InvoiceModel model)? changeInvoiceSuccess,
    TResult Function(AppError error)? changeInvoiceError,
    required TResult orElse(),
  }) {
    if (orderDetailsSended != null) {
      return orderDetailsSended(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OrderDetailsSended value) orderDetailsSended,
    required TResult Function(_OrderDetailsError value) orderDetailsError,
    required TResult Function(_InvoiceSended value) invoiceSended,
    required TResult Function(_InvoiceError value) invoiceError,
    required TResult Function(_ChangeInvoiceSuccess value) changeInvoiceSuccess,
    required TResult Function(_ChangeInvoiceError value) changeInvoiceError,
  }) {
    return orderDetailsSended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderDetailsSended value)? orderDetailsSended,
    TResult? Function(_OrderDetailsError value)? orderDetailsError,
    TResult? Function(_InvoiceSended value)? invoiceSended,
    TResult? Function(_InvoiceError value)? invoiceError,
    TResult? Function(_ChangeInvoiceSuccess value)? changeInvoiceSuccess,
    TResult? Function(_ChangeInvoiceError value)? changeInvoiceError,
  }) {
    return orderDetailsSended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderDetailsSended value)? orderDetailsSended,
    TResult Function(_OrderDetailsError value)? orderDetailsError,
    TResult Function(_InvoiceSended value)? invoiceSended,
    TResult Function(_InvoiceError value)? invoiceError,
    TResult Function(_ChangeInvoiceSuccess value)? changeInvoiceSuccess,
    TResult Function(_ChangeInvoiceError value)? changeInvoiceError,
    required TResult orElse(),
  }) {
    if (orderDetailsSended != null) {
      return orderDetailsSended(this);
    }
    return orElse();
  }
}

abstract class _OrderDetailsSended implements OrdersState {
  const factory _OrderDetailsSended({required final OrderDetailsModel model}) =
      _$OrderDetailsSendedImpl;

  OrderDetailsModel get model;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDetailsSendedImplCopyWith<_$OrderDetailsSendedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderDetailsErrorImplCopyWith<$Res> {
  factory _$$OrderDetailsErrorImplCopyWith(_$OrderDetailsErrorImpl value,
          $Res Function(_$OrderDetailsErrorImpl) then) =
      __$$OrderDetailsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppError error});
}

/// @nodoc
class __$$OrderDetailsErrorImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$OrderDetailsErrorImpl>
    implements _$$OrderDetailsErrorImplCopyWith<$Res> {
  __$$OrderDetailsErrorImplCopyWithImpl(_$OrderDetailsErrorImpl _value,
      $Res Function(_$OrderDetailsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$OrderDetailsErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$OrderDetailsErrorImpl implements _OrderDetailsError {
  const _$OrderDetailsErrorImpl({required this.error});

  @override
  final AppError error;

  @override
  String toString() {
    return 'OrdersState.orderDetailsError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailsErrorImplCopyWith<_$OrderDetailsErrorImpl> get copyWith =>
      __$$OrderDetailsErrorImplCopyWithImpl<_$OrderDetailsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderDetailsModel model) orderDetailsSended,
    required TResult Function(AppError error) orderDetailsError,
    required TResult Function(InvoiceModel model) invoiceSended,
    required TResult Function(AppError error) invoiceError,
    required TResult Function(InvoiceModel model) changeInvoiceSuccess,
    required TResult Function(AppError error) changeInvoiceError,
  }) {
    return orderDetailsError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrderDetailsModel model)? orderDetailsSended,
    TResult? Function(AppError error)? orderDetailsError,
    TResult? Function(InvoiceModel model)? invoiceSended,
    TResult? Function(AppError error)? invoiceError,
    TResult? Function(InvoiceModel model)? changeInvoiceSuccess,
    TResult? Function(AppError error)? changeInvoiceError,
  }) {
    return orderDetailsError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderDetailsModel model)? orderDetailsSended,
    TResult Function(AppError error)? orderDetailsError,
    TResult Function(InvoiceModel model)? invoiceSended,
    TResult Function(AppError error)? invoiceError,
    TResult Function(InvoiceModel model)? changeInvoiceSuccess,
    TResult Function(AppError error)? changeInvoiceError,
    required TResult orElse(),
  }) {
    if (orderDetailsError != null) {
      return orderDetailsError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OrderDetailsSended value) orderDetailsSended,
    required TResult Function(_OrderDetailsError value) orderDetailsError,
    required TResult Function(_InvoiceSended value) invoiceSended,
    required TResult Function(_InvoiceError value) invoiceError,
    required TResult Function(_ChangeInvoiceSuccess value) changeInvoiceSuccess,
    required TResult Function(_ChangeInvoiceError value) changeInvoiceError,
  }) {
    return orderDetailsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderDetailsSended value)? orderDetailsSended,
    TResult? Function(_OrderDetailsError value)? orderDetailsError,
    TResult? Function(_InvoiceSended value)? invoiceSended,
    TResult? Function(_InvoiceError value)? invoiceError,
    TResult? Function(_ChangeInvoiceSuccess value)? changeInvoiceSuccess,
    TResult? Function(_ChangeInvoiceError value)? changeInvoiceError,
  }) {
    return orderDetailsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderDetailsSended value)? orderDetailsSended,
    TResult Function(_OrderDetailsError value)? orderDetailsError,
    TResult Function(_InvoiceSended value)? invoiceSended,
    TResult Function(_InvoiceError value)? invoiceError,
    TResult Function(_ChangeInvoiceSuccess value)? changeInvoiceSuccess,
    TResult Function(_ChangeInvoiceError value)? changeInvoiceError,
    required TResult orElse(),
  }) {
    if (orderDetailsError != null) {
      return orderDetailsError(this);
    }
    return orElse();
  }
}

abstract class _OrderDetailsError implements OrdersState {
  const factory _OrderDetailsError({required final AppError error}) =
      _$OrderDetailsErrorImpl;

  AppError get error;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDetailsErrorImplCopyWith<_$OrderDetailsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvoiceSendedImplCopyWith<$Res> {
  factory _$$InvoiceSendedImplCopyWith(
          _$InvoiceSendedImpl value, $Res Function(_$InvoiceSendedImpl) then) =
      __$$InvoiceSendedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InvoiceModel model});

  $InvoiceModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$InvoiceSendedImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$InvoiceSendedImpl>
    implements _$$InvoiceSendedImplCopyWith<$Res> {
  __$$InvoiceSendedImplCopyWithImpl(
      _$InvoiceSendedImpl _value, $Res Function(_$InvoiceSendedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$InvoiceSendedImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as InvoiceModel,
    ));
  }

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceModelCopyWith<$Res> get model {
    return $InvoiceModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$InvoiceSendedImpl implements _InvoiceSended {
  const _$InvoiceSendedImpl({required this.model});

  @override
  final InvoiceModel model;

  @override
  String toString() {
    return 'OrdersState.invoiceSended(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceSendedImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceSendedImplCopyWith<_$InvoiceSendedImpl> get copyWith =>
      __$$InvoiceSendedImplCopyWithImpl<_$InvoiceSendedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderDetailsModel model) orderDetailsSended,
    required TResult Function(AppError error) orderDetailsError,
    required TResult Function(InvoiceModel model) invoiceSended,
    required TResult Function(AppError error) invoiceError,
    required TResult Function(InvoiceModel model) changeInvoiceSuccess,
    required TResult Function(AppError error) changeInvoiceError,
  }) {
    return invoiceSended(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrderDetailsModel model)? orderDetailsSended,
    TResult? Function(AppError error)? orderDetailsError,
    TResult? Function(InvoiceModel model)? invoiceSended,
    TResult? Function(AppError error)? invoiceError,
    TResult? Function(InvoiceModel model)? changeInvoiceSuccess,
    TResult? Function(AppError error)? changeInvoiceError,
  }) {
    return invoiceSended?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderDetailsModel model)? orderDetailsSended,
    TResult Function(AppError error)? orderDetailsError,
    TResult Function(InvoiceModel model)? invoiceSended,
    TResult Function(AppError error)? invoiceError,
    TResult Function(InvoiceModel model)? changeInvoiceSuccess,
    TResult Function(AppError error)? changeInvoiceError,
    required TResult orElse(),
  }) {
    if (invoiceSended != null) {
      return invoiceSended(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OrderDetailsSended value) orderDetailsSended,
    required TResult Function(_OrderDetailsError value) orderDetailsError,
    required TResult Function(_InvoiceSended value) invoiceSended,
    required TResult Function(_InvoiceError value) invoiceError,
    required TResult Function(_ChangeInvoiceSuccess value) changeInvoiceSuccess,
    required TResult Function(_ChangeInvoiceError value) changeInvoiceError,
  }) {
    return invoiceSended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderDetailsSended value)? orderDetailsSended,
    TResult? Function(_OrderDetailsError value)? orderDetailsError,
    TResult? Function(_InvoiceSended value)? invoiceSended,
    TResult? Function(_InvoiceError value)? invoiceError,
    TResult? Function(_ChangeInvoiceSuccess value)? changeInvoiceSuccess,
    TResult? Function(_ChangeInvoiceError value)? changeInvoiceError,
  }) {
    return invoiceSended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderDetailsSended value)? orderDetailsSended,
    TResult Function(_OrderDetailsError value)? orderDetailsError,
    TResult Function(_InvoiceSended value)? invoiceSended,
    TResult Function(_InvoiceError value)? invoiceError,
    TResult Function(_ChangeInvoiceSuccess value)? changeInvoiceSuccess,
    TResult Function(_ChangeInvoiceError value)? changeInvoiceError,
    required TResult orElse(),
  }) {
    if (invoiceSended != null) {
      return invoiceSended(this);
    }
    return orElse();
  }
}

abstract class _InvoiceSended implements OrdersState {
  const factory _InvoiceSended({required final InvoiceModel model}) =
      _$InvoiceSendedImpl;

  InvoiceModel get model;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceSendedImplCopyWith<_$InvoiceSendedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvoiceErrorImplCopyWith<$Res> {
  factory _$$InvoiceErrorImplCopyWith(
          _$InvoiceErrorImpl value, $Res Function(_$InvoiceErrorImpl) then) =
      __$$InvoiceErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppError error});
}

/// @nodoc
class __$$InvoiceErrorImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$InvoiceErrorImpl>
    implements _$$InvoiceErrorImplCopyWith<$Res> {
  __$$InvoiceErrorImplCopyWithImpl(
      _$InvoiceErrorImpl _value, $Res Function(_$InvoiceErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$InvoiceErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$InvoiceErrorImpl implements _InvoiceError {
  const _$InvoiceErrorImpl({required this.error});

  @override
  final AppError error;

  @override
  String toString() {
    return 'OrdersState.invoiceError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceErrorImplCopyWith<_$InvoiceErrorImpl> get copyWith =>
      __$$InvoiceErrorImplCopyWithImpl<_$InvoiceErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderDetailsModel model) orderDetailsSended,
    required TResult Function(AppError error) orderDetailsError,
    required TResult Function(InvoiceModel model) invoiceSended,
    required TResult Function(AppError error) invoiceError,
    required TResult Function(InvoiceModel model) changeInvoiceSuccess,
    required TResult Function(AppError error) changeInvoiceError,
  }) {
    return invoiceError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrderDetailsModel model)? orderDetailsSended,
    TResult? Function(AppError error)? orderDetailsError,
    TResult? Function(InvoiceModel model)? invoiceSended,
    TResult? Function(AppError error)? invoiceError,
    TResult? Function(InvoiceModel model)? changeInvoiceSuccess,
    TResult? Function(AppError error)? changeInvoiceError,
  }) {
    return invoiceError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderDetailsModel model)? orderDetailsSended,
    TResult Function(AppError error)? orderDetailsError,
    TResult Function(InvoiceModel model)? invoiceSended,
    TResult Function(AppError error)? invoiceError,
    TResult Function(InvoiceModel model)? changeInvoiceSuccess,
    TResult Function(AppError error)? changeInvoiceError,
    required TResult orElse(),
  }) {
    if (invoiceError != null) {
      return invoiceError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OrderDetailsSended value) orderDetailsSended,
    required TResult Function(_OrderDetailsError value) orderDetailsError,
    required TResult Function(_InvoiceSended value) invoiceSended,
    required TResult Function(_InvoiceError value) invoiceError,
    required TResult Function(_ChangeInvoiceSuccess value) changeInvoiceSuccess,
    required TResult Function(_ChangeInvoiceError value) changeInvoiceError,
  }) {
    return invoiceError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderDetailsSended value)? orderDetailsSended,
    TResult? Function(_OrderDetailsError value)? orderDetailsError,
    TResult? Function(_InvoiceSended value)? invoiceSended,
    TResult? Function(_InvoiceError value)? invoiceError,
    TResult? Function(_ChangeInvoiceSuccess value)? changeInvoiceSuccess,
    TResult? Function(_ChangeInvoiceError value)? changeInvoiceError,
  }) {
    return invoiceError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderDetailsSended value)? orderDetailsSended,
    TResult Function(_OrderDetailsError value)? orderDetailsError,
    TResult Function(_InvoiceSended value)? invoiceSended,
    TResult Function(_InvoiceError value)? invoiceError,
    TResult Function(_ChangeInvoiceSuccess value)? changeInvoiceSuccess,
    TResult Function(_ChangeInvoiceError value)? changeInvoiceError,
    required TResult orElse(),
  }) {
    if (invoiceError != null) {
      return invoiceError(this);
    }
    return orElse();
  }
}

abstract class _InvoiceError implements OrdersState {
  const factory _InvoiceError({required final AppError error}) =
      _$InvoiceErrorImpl;

  AppError get error;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceErrorImplCopyWith<_$InvoiceErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeInvoiceSuccessImplCopyWith<$Res> {
  factory _$$ChangeInvoiceSuccessImplCopyWith(_$ChangeInvoiceSuccessImpl value,
          $Res Function(_$ChangeInvoiceSuccessImpl) then) =
      __$$ChangeInvoiceSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InvoiceModel model});

  $InvoiceModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$ChangeInvoiceSuccessImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$ChangeInvoiceSuccessImpl>
    implements _$$ChangeInvoiceSuccessImplCopyWith<$Res> {
  __$$ChangeInvoiceSuccessImplCopyWithImpl(_$ChangeInvoiceSuccessImpl _value,
      $Res Function(_$ChangeInvoiceSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$ChangeInvoiceSuccessImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as InvoiceModel,
    ));
  }

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceModelCopyWith<$Res> get model {
    return $InvoiceModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$ChangeInvoiceSuccessImpl implements _ChangeInvoiceSuccess {
  const _$ChangeInvoiceSuccessImpl({required this.model});

  @override
  final InvoiceModel model;

  @override
  String toString() {
    return 'OrdersState.changeInvoiceSuccess(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeInvoiceSuccessImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeInvoiceSuccessImplCopyWith<_$ChangeInvoiceSuccessImpl>
      get copyWith =>
          __$$ChangeInvoiceSuccessImplCopyWithImpl<_$ChangeInvoiceSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderDetailsModel model) orderDetailsSended,
    required TResult Function(AppError error) orderDetailsError,
    required TResult Function(InvoiceModel model) invoiceSended,
    required TResult Function(AppError error) invoiceError,
    required TResult Function(InvoiceModel model) changeInvoiceSuccess,
    required TResult Function(AppError error) changeInvoiceError,
  }) {
    return changeInvoiceSuccess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrderDetailsModel model)? orderDetailsSended,
    TResult? Function(AppError error)? orderDetailsError,
    TResult? Function(InvoiceModel model)? invoiceSended,
    TResult? Function(AppError error)? invoiceError,
    TResult? Function(InvoiceModel model)? changeInvoiceSuccess,
    TResult? Function(AppError error)? changeInvoiceError,
  }) {
    return changeInvoiceSuccess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderDetailsModel model)? orderDetailsSended,
    TResult Function(AppError error)? orderDetailsError,
    TResult Function(InvoiceModel model)? invoiceSended,
    TResult Function(AppError error)? invoiceError,
    TResult Function(InvoiceModel model)? changeInvoiceSuccess,
    TResult Function(AppError error)? changeInvoiceError,
    required TResult orElse(),
  }) {
    if (changeInvoiceSuccess != null) {
      return changeInvoiceSuccess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OrderDetailsSended value) orderDetailsSended,
    required TResult Function(_OrderDetailsError value) orderDetailsError,
    required TResult Function(_InvoiceSended value) invoiceSended,
    required TResult Function(_InvoiceError value) invoiceError,
    required TResult Function(_ChangeInvoiceSuccess value) changeInvoiceSuccess,
    required TResult Function(_ChangeInvoiceError value) changeInvoiceError,
  }) {
    return changeInvoiceSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderDetailsSended value)? orderDetailsSended,
    TResult? Function(_OrderDetailsError value)? orderDetailsError,
    TResult? Function(_InvoiceSended value)? invoiceSended,
    TResult? Function(_InvoiceError value)? invoiceError,
    TResult? Function(_ChangeInvoiceSuccess value)? changeInvoiceSuccess,
    TResult? Function(_ChangeInvoiceError value)? changeInvoiceError,
  }) {
    return changeInvoiceSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderDetailsSended value)? orderDetailsSended,
    TResult Function(_OrderDetailsError value)? orderDetailsError,
    TResult Function(_InvoiceSended value)? invoiceSended,
    TResult Function(_InvoiceError value)? invoiceError,
    TResult Function(_ChangeInvoiceSuccess value)? changeInvoiceSuccess,
    TResult Function(_ChangeInvoiceError value)? changeInvoiceError,
    required TResult orElse(),
  }) {
    if (changeInvoiceSuccess != null) {
      return changeInvoiceSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeInvoiceSuccess implements OrdersState {
  const factory _ChangeInvoiceSuccess({required final InvoiceModel model}) =
      _$ChangeInvoiceSuccessImpl;

  InvoiceModel get model;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeInvoiceSuccessImplCopyWith<_$ChangeInvoiceSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeInvoiceErrorImplCopyWith<$Res> {
  factory _$$ChangeInvoiceErrorImplCopyWith(_$ChangeInvoiceErrorImpl value,
          $Res Function(_$ChangeInvoiceErrorImpl) then) =
      __$$ChangeInvoiceErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppError error});
}

/// @nodoc
class __$$ChangeInvoiceErrorImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$ChangeInvoiceErrorImpl>
    implements _$$ChangeInvoiceErrorImplCopyWith<$Res> {
  __$$ChangeInvoiceErrorImplCopyWithImpl(_$ChangeInvoiceErrorImpl _value,
      $Res Function(_$ChangeInvoiceErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ChangeInvoiceErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$ChangeInvoiceErrorImpl implements _ChangeInvoiceError {
  const _$ChangeInvoiceErrorImpl({required this.error});

  @override
  final AppError error;

  @override
  String toString() {
    return 'OrdersState.changeInvoiceError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeInvoiceErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeInvoiceErrorImplCopyWith<_$ChangeInvoiceErrorImpl> get copyWith =>
      __$$ChangeInvoiceErrorImplCopyWithImpl<_$ChangeInvoiceErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderDetailsModel model) orderDetailsSended,
    required TResult Function(AppError error) orderDetailsError,
    required TResult Function(InvoiceModel model) invoiceSended,
    required TResult Function(AppError error) invoiceError,
    required TResult Function(InvoiceModel model) changeInvoiceSuccess,
    required TResult Function(AppError error) changeInvoiceError,
  }) {
    return changeInvoiceError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrderDetailsModel model)? orderDetailsSended,
    TResult? Function(AppError error)? orderDetailsError,
    TResult? Function(InvoiceModel model)? invoiceSended,
    TResult? Function(AppError error)? invoiceError,
    TResult? Function(InvoiceModel model)? changeInvoiceSuccess,
    TResult? Function(AppError error)? changeInvoiceError,
  }) {
    return changeInvoiceError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderDetailsModel model)? orderDetailsSended,
    TResult Function(AppError error)? orderDetailsError,
    TResult Function(InvoiceModel model)? invoiceSended,
    TResult Function(AppError error)? invoiceError,
    TResult Function(InvoiceModel model)? changeInvoiceSuccess,
    TResult Function(AppError error)? changeInvoiceError,
    required TResult orElse(),
  }) {
    if (changeInvoiceError != null) {
      return changeInvoiceError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OrderDetailsSended value) orderDetailsSended,
    required TResult Function(_OrderDetailsError value) orderDetailsError,
    required TResult Function(_InvoiceSended value) invoiceSended,
    required TResult Function(_InvoiceError value) invoiceError,
    required TResult Function(_ChangeInvoiceSuccess value) changeInvoiceSuccess,
    required TResult Function(_ChangeInvoiceError value) changeInvoiceError,
  }) {
    return changeInvoiceError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderDetailsSended value)? orderDetailsSended,
    TResult? Function(_OrderDetailsError value)? orderDetailsError,
    TResult? Function(_InvoiceSended value)? invoiceSended,
    TResult? Function(_InvoiceError value)? invoiceError,
    TResult? Function(_ChangeInvoiceSuccess value)? changeInvoiceSuccess,
    TResult? Function(_ChangeInvoiceError value)? changeInvoiceError,
  }) {
    return changeInvoiceError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderDetailsSended value)? orderDetailsSended,
    TResult Function(_OrderDetailsError value)? orderDetailsError,
    TResult Function(_InvoiceSended value)? invoiceSended,
    TResult Function(_InvoiceError value)? invoiceError,
    TResult Function(_ChangeInvoiceSuccess value)? changeInvoiceSuccess,
    TResult Function(_ChangeInvoiceError value)? changeInvoiceError,
    required TResult orElse(),
  }) {
    if (changeInvoiceError != null) {
      return changeInvoiceError(this);
    }
    return orElse();
  }
}

abstract class _ChangeInvoiceError implements OrdersState {
  const factory _ChangeInvoiceError({required final AppError error}) =
      _$ChangeInvoiceErrorImpl;

  AppError get error;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeInvoiceErrorImplCopyWith<_$ChangeInvoiceErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
