import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';

abstract interface class SearchOrderRepo {
  Future<List<CustomerOrdersModel>> searchOrder(
      {required String fabricType,
      required String category,
      required String productName});
}
