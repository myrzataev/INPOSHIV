import 'package:inposhiv/features/main/orders/customer/data/models/customers_orders_model.dart';

abstract class GetCustomerOrdersRepo {
  Future<List<CustomersOrdersModel>> getCustomerOrders({required String customerId});
}