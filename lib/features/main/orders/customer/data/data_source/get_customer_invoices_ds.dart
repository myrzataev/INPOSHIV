import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/invoice_model.dart';

class GetCustomerInvoicesDs {
  final Dio dio;
  GetCustomerInvoicesDs({required this.dio});
  Future<List<InvoiceModel>> getCustomerInvoices({
    required String customerUid,
  }) async {
    final Response response =
        await dio.get("${UrlRoutes.sendInvoice}/$customerUid");
    final List responseList = response.data;
    return responseList
        .map((element) => InvoiceModel.fromJson(element))
        .toList();
  }

  Future<InvoiceModel> getInvoiceDetails({required String orderId}) async {
    final Response response =
        await dio.get("${UrlRoutes.invoiceDetails}/$orderId");
    return InvoiceModel.fromJson(response.data);
  }
}
