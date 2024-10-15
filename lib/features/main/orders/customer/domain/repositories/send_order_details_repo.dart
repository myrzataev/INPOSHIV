import 'package:inposhiv/features/main/orders/customer/data/models/order_details_model.dart';

abstract interface class SendOrderDetailsRepo {
  Future<OrderDetailsModel> sendOrderDetails(
      {required Map<String, dynamic> orderDetails, required String orderId});
}
