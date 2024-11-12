part of 'order_tracking_bloc.dart';

@freezed
class OrderTrackingState with _$OrderTrackingState {
  const factory OrderTrackingState.initial() = _Initial;
    const factory OrderTrackingState.loading() = _Loading;
  const factory OrderTrackingState.loaded({required TrackingModel model}) = _Loaded;
  const factory OrderTrackingState.error({required String errorText}) = _Error;

}
