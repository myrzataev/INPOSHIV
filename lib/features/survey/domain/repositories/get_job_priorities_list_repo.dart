import 'package:inposhiv/features/survey/data/models/job_priorities_model.dart';

abstract interface class GetJobPrioritiesListRepo {
  Future<List<JobPrioritiesModel>> getJobPrioritiesList({required bool isCustomer});
}