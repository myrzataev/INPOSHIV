part of 'get_job_priorities_bloc.dart';

@freezed
class GetJobPrioritiesState with _$GetJobPrioritiesState {
  const factory GetJobPrioritiesState.initial() = _Initial;
    const factory GetJobPrioritiesState.loading() = _Loading;
  const factory GetJobPrioritiesState.loaded({required List<JobPrioritiesModel> model}) = _Loaded;
  const factory GetJobPrioritiesState.error({required AppError error}) = _Error;

}
