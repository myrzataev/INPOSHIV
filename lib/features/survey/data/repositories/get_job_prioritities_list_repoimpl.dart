// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:inposhiv/features/survey/data/data_source/get_job_priorities_ds.dart';
import 'package:inposhiv/features/survey/data/models/job_priorities_model.dart';
import 'package:inposhiv/features/survey/domain/repositories/get_job_priorities_list_repo.dart';

class GetJobPriorititiesListRepoimpl implements GetJobPrioritiesListRepo {
  GetJobPrioritiesDs dataSource;
  GetJobPriorititiesListRepoimpl({
    required this.dataSource,
  });
  @override
  Future<List<JobPrioritiesModel>> getJobPrioritiesList({required bool isCustomer}) async {
    return await dataSource.getJobPrioritiesList(isCustomer: isCustomer);
  }
}
