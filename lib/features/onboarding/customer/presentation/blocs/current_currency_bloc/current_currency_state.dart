part of 'current_currency_bloc.dart';

@freezed
class CurrentCurrencyState with _$CurrentCurrencyState {
  const factory CurrentCurrencyState.initial() = _Initial;
  const factory CurrentCurrencyState.loading() = _Loading;
  const factory CurrentCurrencyState.currencyLoaded(
      {required CurrencyConvertModel model}) = _GetCurrencyLoaded;
  const factory CurrentCurrencyState.getCurrencyError(
      {required String errorText}) = _GetCurrencyError;
}
