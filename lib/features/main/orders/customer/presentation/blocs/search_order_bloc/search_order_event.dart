part of 'search_order_bloc.dart';

@freezed
class SearchOrderEvent with _$SearchOrderEvent {
  const factory SearchOrderEvent.search(
      {required String fabricType,
      required String category,
      required String productName}) = _SearchOrder;
}
