import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/onboarding/customer/data/models/currency_convert_model.dart';

class GetCurrencyDs {
  final Dio dio;
  GetCurrencyDs({required this.dio});
  Future<CurrencyConvertModel> getCurrency() async {
    final Response response = await dio.get(UrlRoutes.getCurrency);
    return CurrencyConvertModel.fromJson(response.data);
  }
}
