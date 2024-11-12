import 'package:inposhiv/features/main/orders/customer/data/models/tracking_model.dart';

abstract interface class OrderTrackingRepo {
  Future<TrackingModel> orderTracking({required String invoiceId});
}