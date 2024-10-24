import 'package:inposhiv/features/main/orders/customer/data/models/invoice_model.dart';

abstract class SendInvoiceRepo {
  Future<InvoiceModel> sendInvoice(
      {required Map<String, dynamic> invoice, required String orderId});
}
