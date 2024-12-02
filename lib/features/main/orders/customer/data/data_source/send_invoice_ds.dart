import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/invoice_model.dart';

class SendInvoiceDs {
  final Dio dio;
  SendInvoiceDs({required this.dio});
  Future<InvoiceModel> sendInvoice(
      {required Map<String, dynamic> invoice, required String orderId}) async {
    final Response response =
        await dio.post("${UrlRoutes.sendInvoice}/$orderId", data: invoice);
    return InvoiceModel.fromJson(response.data);
  }

  Future<InvoiceModel> changeInvoice(
      {required Map<String, dynamic> invoice, required String orderId}) async {
    final Response response =
        await dio.put("${UrlRoutes.sendInvoice}/$orderId", data: invoice);
    return InvoiceModel.fromJson(response.data);
  }
}
