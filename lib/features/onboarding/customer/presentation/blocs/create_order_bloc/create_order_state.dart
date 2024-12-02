part of 'create_order_bloc.dart';

@freezed
class CreateOrderState with _$CreateOrderState {
  const factory CreateOrderState.initial() = _Initial;
  const factory CreateOrderState.loading() = _Loading;
  // const factory CreateOrderState.currencyLoaded(
  //     {required CurrencyConvertModel model}) = _GetCurrencyLoaded;
  // const factory CreateOrderState.getCurrencyError({required String errorText}) =
  //     _GetCurrencyError;
  const factory CreateOrderState.sizesLoaded({required List<SizeModel> model}) =
      _SizesLoaded;
  const factory CreateOrderState.sizesError({required AppError error}) =
      _SizesError;
  const factory CreateOrderState.createOrderLoaded({required OrderModel model}
      ) = _CreateOrderLoaded;
  const factory CreateOrderState.createOrderError({required AppError error}) =
      _CreateOrderError;
}
