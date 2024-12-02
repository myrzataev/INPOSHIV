part of 'customer_auctions_bloc.dart';

@freezed
class CustomerAuctionsState with _$CustomerAuctionsState {
  const factory CustomerAuctionsState.initial() = _Initial;
    const factory CustomerAuctionsState.loading() = _Loading;
  const factory CustomerAuctionsState.customerOrdersLoaded( {required List<CustomerOrdersModel> customerOrdersModel}) = _CustomerOrdersLoaded;
  const factory CustomerAuctionsState.customerOrdersError({required AppError error}) = _CustomerOrdersError;

}
