// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:inposhiv/features/main/orders/customer/data/models/invoice_model.dart';
import 'package:inposhiv/features/main/orders/manufacturer/data/data_sources/get_manufacturer_invoices_ds.dart';
import 'package:inposhiv/features/main/orders/manufacturer/domain/repositories/get_manufacturer_invoices_repo.dart';

class GetManufacturerInvoicesRepoimpl implements GetManufacturerInvoicesRepo {
  GetManufacturerInvoicesDs getManufacturerInvoicesDs;
  GetManufacturerInvoicesRepoimpl({
    required this.getManufacturerInvoicesDs,
  });
  @override
  Future<List<InvoiceModel>> getManufacturerInvoices(
      {required String manufacturerId}) async {
    return await getManufacturerInvoicesDs.getManufacturerInvoices(
        manufacturerId: manufacturerId);
  }
}
