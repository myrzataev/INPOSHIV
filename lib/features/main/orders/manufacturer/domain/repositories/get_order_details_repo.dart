import 'package:inposhiv/features/main/orders/customer/data/models/order_details_response_model.dart';

abstract class GetOrderDetailsRepo {
  Future<OrderDetailsResponseModel> getOrderDetails({required String orderId});
}
