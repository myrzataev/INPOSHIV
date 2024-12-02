import 'package:inposhiv/features/main/orders/customer/data/data_source/get_customer_invoices_ds.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/invoice_model.dart';
import 'package:inposhiv/features/main/orders/customer/domain/repositories/get_customer_invoices_repo.dart';

class GetCustomerInvoicesRepoimpl implements GetCustomerInvoicesRepo {
  GetCustomerInvoicesDs getCustomerInvoicesDs;
  GetCustomerInvoicesRepoimpl({required this.getCustomerInvoicesDs});
  @override
  Future<List<InvoiceModel>> getCustomerInvoices(
      {required String customerUuid}) async {
    return await getCustomerInvoicesDs.getCustomerInvoices(
        customerUid: customerUuid);
  }

  @override
  Future<InvoiceModel> getInvoiceDetails({required String orderId}) async {
    return await getCustomerInvoicesDs.getInvoiceDetails(orderId: orderId);
  }
}
