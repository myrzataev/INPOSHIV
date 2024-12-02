import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/invoice_model.dart';

class GetManufacturerInvoicesDs {
  final Dio dio;
  GetManufacturerInvoicesDs({required this.dio});
  Future<List<InvoiceModel>> getManufacturerInvoices(
      {required String manufacturerId, }) async {
    final Response response =
        await dio.get("${UrlRoutes.sendInvoice}/manufacturer/$manufacturerId");
    final List responseList = response.data;
    return responseList
        .map((element) => InvoiceModel.fromJson(element))
        .toList();
  }
}
