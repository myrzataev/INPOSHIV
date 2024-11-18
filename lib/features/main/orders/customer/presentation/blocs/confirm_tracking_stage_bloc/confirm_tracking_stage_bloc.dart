import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/tracking_model.dart';
import 'package:inposhiv/features/main/orders/customer/data/repositories/confirm_tracking_stage_repoimpl.dart';

part 'confirm_tracking_stage_event.dart';
part 'confirm_tracking_stage_state.dart';
part 'confirm_tracking_stage_bloc.freezed.dart';

class ConfirmTrackingStageBloc
    extends Bloc<ConfirmTrackingStageEvent, ConfirmTrackingStageState> {
  ConfirmTrackingStageRepoimpl confirmTrackingStageRepoimpl;

  ConfirmTrackingStageBloc({required this.confirmTrackingStageRepoimpl})
      : super(const _Initial()) {
    on<ConfirmTrackingStageEvent>((event, emit) async {
      try {
        emit(const ConfirmTrackingStageState.loading());
        final result = await confirmTrackingStageRepoimpl.confirmTrackingStage(
            body: event.body, queryParameters: event.queryParameters);
        emit(ConfirmTrackingStageState.loaded(model: result));
      } catch (e) {
        emit(ConfirmTrackingStageState.error(errorText: e.toString()));
      }
    });
  }
}
