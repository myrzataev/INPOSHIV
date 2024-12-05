import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';

abstract interface class GetManufacturersCompletedOrdersRepo {
  Future<List<CustomerOrdersModel>> getManufacturersCompletedOrders(
      {required String manufacturerUuid});
}
