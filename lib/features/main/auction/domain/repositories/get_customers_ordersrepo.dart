import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';

abstract interface class GetCustomersOrdersrepo {
  Future<List<CustomerOrdersModel>> getCustomersOrders(
      {required String customerId});
}
