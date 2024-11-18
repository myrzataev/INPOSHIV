// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:inposhiv/features/main/orders/customer/data/data_source/confirm_tracking_stage_ds.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/tracking_model.dart';
import 'package:inposhiv/features/main/orders/customer/domain/repositories/confirm_stage_repo.dart';

class ConfirmTrackingStageRepoimpl implements ConfirmStageRepo {
  ConfirmTrackingStageDs confirmTrackingStageDs;
  ConfirmTrackingStageRepoimpl({
    required this.confirmTrackingStageDs,
  });
  @override
  Future<TrackingModel> confirmTrackingStage(
      {required FormData body,
      required Map<String, dynamic> queryParameters}) async {
    return await confirmTrackingStageDs.confirmTrackingStage(
        body: body, queryParameters: queryParameters);
  }
}
