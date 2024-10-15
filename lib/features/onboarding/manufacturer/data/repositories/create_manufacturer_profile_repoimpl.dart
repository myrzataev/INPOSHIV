import 'package:dio/dio.dart';
import 'package:inposhiv/features/onboarding/manufacturer/data/data_source/create_manufacturer_profile_ds.dart';
import 'package:inposhiv/features/onboarding/manufacturer/data/models/manufacturer_model.dart';
import 'package:inposhiv/features/onboarding/manufacturer/domain/create_manufacturer_profile_repo.dart';

class CreateManufacturerProfileRepoimpl
    implements CreateManufacturerProfileRepo {
  CreateManufacturerProfileDs dataSource;
  CreateManufacturerProfileRepoimpl({required this.dataSource});
  @override
  Future<ManufacturerModel> createManufacturereProfile(
      {required FormData formData, required String userId}) async {
    return await dataSource.createManufacturereProfile(
        formData: formData, userId: userId);
  }
}
