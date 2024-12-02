// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:inposhiv/features/main/orders/customer/data/models/order_details_response_model.dart';
import 'package:inposhiv/features/main/orders/manufacturer/data/data_sources/get_order_detail_ds.dart';
import 'package:inposhiv/features/main/orders/manufacturer/domain/repositories/get_order_details_repo.dart';

class GetOrderDetailsRepoImpl implements GetOrderDetailsRepo {
  GetOrderDetailDs getOrderDetailDs;
  GetOrderDetailsRepoImpl({
    required this.getOrderDetailDs,
  });
  @override
  Future<OrderDetailsResponseModel> getOrderDetails({required String orderId}) async {
    return await getOrderDetailDs.getOrderDetails(orderId: orderId);
  }
}
