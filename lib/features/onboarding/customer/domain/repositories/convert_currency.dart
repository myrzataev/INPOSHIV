import 'package:inposhiv/features/onboarding/customer/data/models/currency_convert_model.dart';

abstract interface class ConvertCurrency {
  Future<CurrencyConvertModel> getCurrentCurrency();
}