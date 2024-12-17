import 'package:inposhiv/features/main/orders/customer/data/data_source/get_customer_orders_ds.dart';
import 'package:inposhiv/features/main/orders/customer/domain/repositories/get_customer_orders_repo.dart';
import 'package:inposhiv/features/onboarding/customer/data/models/order_model.dart';

class GetCustomerOrdersRepoimpl implements GetCustomerOrdersRepo {
  GetCustomerOrdersDs getCustomerOrdersDs;
  GetCustomerOrdersRepoimpl({
    required this.getCustomerOrdersDs,
  });
  @override
  Future<List<OrderModel>> getCustomerOrdersHistory(
      {required String customerUid}) async {
    return await getCustomerOrdersDs.getCustomerOrders(customerID: customerUid);
  }
}
