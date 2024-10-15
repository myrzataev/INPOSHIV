import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/survey/data/models/job_priorities_model.dart';

class GetJobPrioritiesDs {
  final Dio dio;
  GetJobPrioritiesDs({required this.dio});
  Future<List<JobPrioritiesModel>> getJobPrioritiesList(
      {required bool isCustomer}) async {
    final Response response = await dio.get(isCustomer
        ? UrlRoutes.customerPriorities
        : UrlRoutes.manufacturerPriorities);
    final List responseList = response.data;
    return responseList
        .map((element) => JobPrioritiesModel.fromJson(element))
        .toList();
  }
}
