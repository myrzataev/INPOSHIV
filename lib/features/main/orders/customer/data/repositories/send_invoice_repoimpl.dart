import 'package:inposhiv/features/main/orders/customer/data/data_source/send_invoice_ds.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/invoice_model.dart';
import 'package:inposhiv/features/main/orders/customer/domain/repositories/send_invoice_repo.dart';

class SendInvoiceRepoimpl implements SendInvoiceRepo {
  SendInvoiceDs sendInvoiceDs;
  SendInvoiceRepoimpl({required this.sendInvoiceDs});
  @override
  Future<InvoiceModel> sendInvoice(
      {required Map<String, dynamic> invoice, required String orderId}) async {
    return sendInvoiceDs.sendInvoice(invoice: invoice, orderId: orderId);
  }
}
