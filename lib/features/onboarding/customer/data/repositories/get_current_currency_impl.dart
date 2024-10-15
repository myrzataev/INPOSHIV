import 'package:inposhiv/features/onboarding/customer/data/data_source/get_currency_ds.dart';
import 'package:inposhiv/features/onboarding/customer/data/models/currency_convert_model.dart';
import 'package:inposhiv/features/onboarding/customer/domain/repositories/convert_currency.dart';

class GetCurrentCurrencyImpl implements ConvertCurrency {
  GetCurrencyDs dataSource;
  GetCurrentCurrencyImpl({required this.dataSource});
  @override
  Future<CurrencyConvertModel> getCurrentCurrency() async {
    return await dataSource.getCurrency();
  }
}
