import 'package:inposhiv/features/main/home/data/data_source/search_manufacturer_ds.dart';
import 'package:inposhiv/features/main/home/data/models/manufacturers_profile_model.dart';
import 'package:inposhiv/features/main/home/domain/repositories/search_manufacturers_repo.dart';

class SearchManufacturerRepoimpl implements SearchManufacturersRepo {
  SearchManufacturerDs searchManufacturerDs;
  SearchManufacturerRepoimpl({required this.searchManufacturerDs});
  @override
  Future<List<ManufacturersProfileModel>> searchManufacturers(
      String fabricType, String category) async {
    return await searchManufacturerDs.searchManufacturer(fabricType, category);
  }
}
