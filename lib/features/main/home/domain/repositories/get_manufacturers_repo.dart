import 'package:inposhiv/features/main/home/data/models/manufacturers_profile_model.dart';

abstract interface class GetManufacturersRepo {
  Future<List<ManufacturersProfileModel>> getManufacturers();
}