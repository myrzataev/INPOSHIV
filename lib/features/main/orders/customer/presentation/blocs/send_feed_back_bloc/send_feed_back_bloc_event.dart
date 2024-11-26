part of 'send_feed_back_bloc_bloc.dart';

@freezed
class SendFeedBackBlocEvent with _$SendFeedBackBlocEvent {
  const factory SendFeedBackBlocEvent.sendFeedBackToManufacturer(
      {required String manufacturerUuid,
      required String customerUuid,
      required Map<String, dynamic> body}) = _SendFeedBackToManufacturer;
  const factory SendFeedBackBlocEvent.sendFeedBackToCustomer(
      {required String manufacturerUuid,
      required String customerUuid,
      required Map<String, dynamic> body}) = _SendFeedBackToCustomer;
}
