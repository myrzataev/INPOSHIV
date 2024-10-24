part of 'customer_auctions_bloc.dart';

@freezed
class CustomerAuctionsEvent with _$CustomerAuctionsEvent {
  const factory CustomerAuctionsEvent.getCustomerAuctions({required String customerId}) = _GetCustomerAuctions;
}