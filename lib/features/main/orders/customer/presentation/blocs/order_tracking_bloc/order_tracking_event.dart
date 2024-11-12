part of 'order_tracking_bloc.dart';

@freezed
class OrderTrackingEvent with _$OrderTrackingEvent {
  const factory OrderTrackingEvent.orderTracking({required String invoiceId}) = _OrderTracking;
}