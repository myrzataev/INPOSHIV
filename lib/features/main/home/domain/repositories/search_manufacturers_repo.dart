
import 'package:inposhiv/features/main/home/data/models/manufacturers_profile_model.dart';

abstract interface class SearchManufacturersRepo {
  Future<List<ManufacturersProfileModel>> searchManufacturers(
      String fabricType, String category);
}
