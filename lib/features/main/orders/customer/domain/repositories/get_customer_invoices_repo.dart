import 'package:inposhiv/features/main/orders/customer/data/models/invoice_model.dart';

abstract interface class GetCustomerInvoicesRepo {
  Future<List<InvoiceModel>> getCustomerInvoices(
      {required String customerUuid});
  Future<InvoiceModel> getInvoiceDetails({required String orderId});
}
