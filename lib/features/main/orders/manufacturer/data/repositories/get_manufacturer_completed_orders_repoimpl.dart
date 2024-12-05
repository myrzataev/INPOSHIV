import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';
import 'package:inposhiv/features/main/orders/manufacturer/data/data_sources/get_manufacturers_completed_orders_ds.dart';
import 'package:inposhiv/features/main/orders/manufacturer/domain/repositories/get_manufacturers_completed_orders_repo.dart';

class GetManufacturerCompletedOrdersRepoimpl
    implements GetManufacturersCompletedOrdersRepo {
  GetManufacturersCompletedOrdersDs getManufacturersCompletedOrdersDs;
  GetManufacturerCompletedOrdersRepoimpl(
      {required this.getManufacturersCompletedOrdersDs});
  @override
  Future<List<CustomerOrdersModel>> getManufacturersCompletedOrders(
      {required String manufacturerUuid}) async {
    return await getManufacturersCompletedOrdersDs.getCustomerOrders(
        manufacturerUuid: manufacturerUuid);
  }
}
