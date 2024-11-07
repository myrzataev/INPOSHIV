import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';

abstract interface class SearchOrderRepo {
  Future<List<CustomerOrdersModel>> searchOrder(
      String fabricType, String category, String productName);
}
