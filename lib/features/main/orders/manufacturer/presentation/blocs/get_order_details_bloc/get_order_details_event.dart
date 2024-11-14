part of 'get_order_details_bloc.dart';

@freezed
class GetOrderDetailsEvent with _$GetOrderDetailsEvent {
  const factory GetOrderDetailsEvent.getOrderDetails({required String orderId}) = _GetOrderDetails;
}