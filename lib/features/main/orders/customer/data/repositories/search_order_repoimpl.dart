import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';
import 'package:inposhiv/features/main/orders/customer/data/data_source/search_order_ds.dart';
import 'package:inposhiv/features/main/orders/customer/domain/repositories/search_order_repo.dart';

class SearchOrderRepoImpl implements SearchOrderRepo {
  SearchOrderDs searchOrderDs;
  SearchOrderRepoImpl({required this.searchOrderDs});
  @override
  Future<List<CustomerOrdersModel>> searchOrder(
      String fabricType, String category, String productName) async {
    return await searchOrderDs.searchOrder(fabricType, category, productName);
  }
}
