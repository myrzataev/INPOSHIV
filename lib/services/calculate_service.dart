import 'package:dio/dio.dart';
import 'package:inposhiv/features/onboarding/customer/data/data_source/get_currency_ds.dart';

class CalculateService {
  GetCurrencyDs getCurrencyDs = GetCurrencyDs(dio: Dio());
  
  double calculateTotalPriceInRuble(
      {required double ruble, required int totalCount}) {
    return totalCount * ruble;
  }
}
