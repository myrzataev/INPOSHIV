import 'package:dio/dio.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/tracking_model.dart';

abstract interface class ConfirmStageRepo {
  Future<TrackingModel> confirmTrackingStage(
      { required FormData body, required Map<String, dynamic> queryParameters});
}
