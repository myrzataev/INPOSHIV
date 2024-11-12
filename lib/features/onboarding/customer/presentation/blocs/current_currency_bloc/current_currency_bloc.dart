import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/onboarding/customer/data/models/currency_convert_model.dart';
import 'package:inposhiv/features/onboarding/customer/data/repositories/get_current_currency_impl.dart';

part 'current_currency_event.dart';
part 'current_currency_state.dart';
part 'current_currency_bloc.freezed.dart';

class CurrentCurrencyBloc
    extends Bloc<CurrentCurrencyEvent, CurrentCurrencyState> {
  final GetCurrentCurrencyImpl getCurrentCurrencyImpl;
  CurrentCurrencyBloc({required this.getCurrentCurrencyImpl})
      : super(const _Initial()) {
    on<CurrentCurrencyEvent>((event, emit) async {
      emit(const CurrentCurrencyState.loading());
      try {
        final result = await getCurrentCurrencyImpl.getCurrentCurrency();
        emit(CurrentCurrencyState.currencyLoaded(model: result));
      } catch (e) {
        emit(CurrentCurrencyState.getCurrencyError(errorText: e.toString()));
      }
    });
  }
}
