import 'package:inposhiv/features/main/orders/customer/data/models/invoice_model.dart';

abstract interface class GetManufacturerInvoicesRepo {
  Future<List<InvoiceModel>> getManufacturerInvoices({required String manufacturerId});
  Future<List<InvoiceModel>> getCustomerInvoices({required String customerId});
}