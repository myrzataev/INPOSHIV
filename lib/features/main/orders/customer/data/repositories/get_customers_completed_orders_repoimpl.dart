import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';
import 'package:inposhiv/features/main/orders/customer/data/data_source/get_customers_completed_orders_ds.dart';
import 'package:inposhiv/features/main/orders/customer/domain/repositories/get_customers_completed_orders_repo.dart';

class GetCustomersCompletedOrdersRepoimpl
    implements GetCustomersCompletedOrdersRepo {
  GetCustomersCompletedOrdersDs getCustomersCompletedOrdersDs;
  GetCustomersCompletedOrdersRepoimpl(
      {required this.getCustomersCompletedOrdersDs});
  @override
  Future<List<CustomerOrdersModel>> getCustomersCompletedOrders(
      {required String customerId}) async {
    return await getCustomersCompletedOrdersDs.getCustomerOrders(
        customerUid: customerId);
  }
}
