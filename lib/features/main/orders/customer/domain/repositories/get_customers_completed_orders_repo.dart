import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';

abstract interface class GetCustomersCompletedOrdersRepo {
  Future<List<CustomerOrdersModel>> getCustomersCompletedOrders(
      {required String customerId});
}
