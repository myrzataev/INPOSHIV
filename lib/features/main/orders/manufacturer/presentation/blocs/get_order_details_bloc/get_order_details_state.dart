part of 'get_order_details_bloc.dart';

@freezed
class GetOrderDetailsState with _$GetOrderDetailsState {
  const factory GetOrderDetailsState.initial() = _Initial;
  const factory GetOrderDetailsState.loading() = _Loading;
  const factory GetOrderDetailsState.loaded({required OrderDetailsModel model}) = _Loadid;
  const factory GetOrderDetailsState.error({required String errorText}) = _Error;
}
