// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:inposhiv/features/survey/data/data_source/send_manufacturer_survey_ds.dart';
import 'package:inposhiv/features/survey/data/models/create_manufacturers_profile_model.dart';
import 'package:inposhiv/features/survey/domain/repositories/send_manufacturer_survery_repo.dart';

class SendManufacturerSurveryRepoImpl implements SendManufacturerSurveryRepo {
  SendManufacturerSurveyDs sendManufacturerSurveyDs;
  SendManufacturerSurveryRepoImpl({
    required this.sendManufacturerSurveyDs,
  });
  @override
  Future<CreateManufacturersProfileModel> createManufacturereProfile(
      {required Map<String, dynamic> data,
      required FormData photo,
      required String manufacturerUuid}) async {
    return await sendManufacturerSurveyDs.sendManufacturerSurvery(
        photo: photo, data: data, manufacturerUuid: manufacturerUuid);
  }
}
