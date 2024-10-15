import 'package:dio/dio.dart';
import 'package:inposhiv/features/onboarding/manufacturer/data/models/manufacturer_model.dart';

abstract interface class CreateManufacturerProfileRepo {
  Future<ManufacturerModel> createManufacturereProfile({required FormData formData, required String userId});
}
