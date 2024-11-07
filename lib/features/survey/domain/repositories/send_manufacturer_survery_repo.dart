import 'package:dio/dio.dart';
import 'package:inposhiv/features/survey/data/models/create_manufacturers_profile_model.dart';

abstract class SendManufacturerSurveryRepo {
  Future<CreateManufacturersProfileModel> createManufacturereProfile({
    required Map<String, dynamic> data,
    required String manufacturerUuid,
    required FormData photo,
  });
}
