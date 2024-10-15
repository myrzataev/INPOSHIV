import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/survey/data/models/job_priorities_model.dart';
import 'package:inposhiv/features/survey/data/repositories/get_job_prioritities_list_repoimpl.dart';

part 'get_job_priorities_event.dart';
part 'get_job_priorities_state.dart';
part 'get_job_priorities_bloc.freezed.dart';

class GetJobPrioritiesBloc
    extends Bloc<GetJobPrioritiesEvent, GetJobPrioritiesState> {
  GetJobPriorititiesListRepoimpl repoImpl;
  GetJobPrioritiesBloc({required this.repoImpl}) : super(const _Initial()) {
    on<GetJobPrioritiesEvent>((event, emit) async {
      emit(const GetJobPrioritiesState.loading());
      try {
        final result = await repoImpl.getJobPrioritiesList(isCustomer: event.isCustomer);
        emit(GetJobPrioritiesState.loaded(model: result));
      } catch (e) {
        emit(GetJobPrioritiesState.error(errorText: e.toString()));
      }
    });
  }
}
