part of 'get_job_priorities_bloc.dart';

@freezed
class GetJobPrioritiesEvent with _$GetJobPrioritiesEvent {
  const factory GetJobPrioritiesEvent.getJobPriorities({required bool isCustomer}) = _GetJobPriorities;
}