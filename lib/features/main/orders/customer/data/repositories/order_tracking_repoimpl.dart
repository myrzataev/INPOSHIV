import 'package:inposhiv/features/main/orders/customer/data/data_source/order_tracking_ds.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/tracking_model.dart';
import 'package:inposhiv/features/main/orders/customer/domain/repositories/order_tracking_repo.dart';

class OrderTrackingRepoimpl implements OrderTrackingRepo {
  OrderTrackingDs orderTrackingDs;
  OrderTrackingRepoimpl({
    required this.orderTrackingDs,
  });
  @override
  Future<TrackingModel> orderTracking({required String invoiceId}) async {
    return await orderTrackingDs.orderTracking(invoiceId: invoiceId);
  }
}
