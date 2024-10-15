import 'package:inposhiv/features/main/orders/customer/data/data_source/send_order_details_ds.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/order_details_model.dart';
import 'package:inposhiv/features/main/orders/customer/domain/repositories/send_order_details_repo.dart';

class SendOrderDetailsRepoImpl implements SendOrderDetailsRepo {
  SendOrderDetailsDs dataSource;
  SendOrderDetailsRepoImpl({required this.dataSource});
  @override
  Future<OrderDetailsModel> sendOrderDetails(
      {required Map<String, dynamic> orderDetails,
      required String orderId}) async {
    return await dataSource.sendOrderDetails(
        orderDetails: orderDetails, orderId: orderId);
  }
}
