part of 'current_currency_bloc.dart';

@freezed
class CurrentCurrencyEvent with _$CurrentCurrencyEvent {
  const factory CurrentCurrencyEvent.getCurrentCurrencyEvent() = _GetCurrentCurrencyEvent;
}