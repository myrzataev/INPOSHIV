part of 'search_order_bloc.dart';

@freezed
class SearchOrderEvent with _$SearchOrderEvent {
  const factory SearchOrderEvent.search(
      String fabricType, String category, String productName) = _SearchOrder;
}
