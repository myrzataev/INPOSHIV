import 'package:inposhiv/features/main/home/data/data_source/get_manufacturers_ds.dart';
import 'package:inposhiv/features/main/home/data/models/manufacturers_profile_model.dart';
import 'package:inposhiv/features/main/home/domain/repositories/get_manufacturers_repo.dart';

class GetManufacturersRepoimpl implements GetManufacturersRepo {
  GetManufacturersDs getManufacturersDs;
  GetManufacturersRepoimpl({required this.getManufacturersDs});
  @override
  Future<List<ManufacturersProfileModel>> getManufacturers() async {
    return await getManufacturersDs.getManufacturers();
  }
}
