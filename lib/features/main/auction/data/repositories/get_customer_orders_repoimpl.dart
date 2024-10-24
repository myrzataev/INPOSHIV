import 'package:inposhiv/features/main/auction/data/data_source/get_customers_orders_ds.dart';
import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';
import 'package:inposhiv/features/main/auction/domain/repositories/get_customers_ordersrepo.dart';

class GetCustomerOrdersRepoimpl implements GetCustomersOrdersrepo {
  GetCustomersOrdersDs getCustomersOrdersDs;
  GetCustomerOrdersRepoimpl({required this.getCustomersOrdersDs});
  @override
  Future<List<CustomerOrdersModel>> getCustomersOrders(
      {required String customerId}) async {
    return await getCustomersOrdersDs.getCustomerOrders(customerId: customerId);
  }
}
