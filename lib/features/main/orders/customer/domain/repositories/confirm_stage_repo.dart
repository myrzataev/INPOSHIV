import 'package:inposhiv/features/main/orders/customer/data/models/tracking_model.dart';

abstract interface class ConfirmStageRepo {
  Future<TrackingModel> confirmTrackingStage(
      {required String invoiceUuid, required Map<String, dynamic> body});
}
