import 'package:inposhiv/features/main/orders/customer/data/models/order_details_model.dart';

abstract class GetOrderDetailsRepo {
  Future<OrderDetailsModel> getOrderDetails({required String orderId});
}
