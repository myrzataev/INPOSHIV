import 'package:inposhiv/features/main/orders/customer/data/models/customers_orders_model.dart';
import 'package:inposhiv/features/main/orders/customer/domain/repositories/get_customer_orders_repo.dart';

class GetCustomerOrdersRepoimpl implements GetCustomerOrdersRepo{
  @override
  Future<List<CustomersOrdersModel>> getCustomerOrders({required String customerId}) {
    // TODO: implement getCustomerOrders
    throw UnimplementedError();
  }
}