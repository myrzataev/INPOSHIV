import 'package:inposhiv/features/onboarding/customer/data/data_source/get_sizes_ds.dart';
import 'package:inposhiv/features/onboarding/customer/data/models/size_model.dart';
import 'package:inposhiv/features/onboarding/customer/domain/repositories/get_sizes_repo.dart';

class GetSizesRepoimpl implements GetSizesRepo {
  GetSizesDs dataSource;
  GetSizesRepoimpl({required this.dataSource});
  @override
  Future<List<SizeModel>> getSizes() async {
    return await dataSource.getSizes();
  }
}
