import 'package:inposhiv/features/onboarding/customer/data/data_source/get_fabric_types_ds.dart';
import 'package:inposhiv/features/onboarding/customer/data/models/fabric_type_model.dart';
import 'package:inposhiv/features/onboarding/customer/domain/repositories/get_fabric_types_repo.dart';

class GetFabricTypesRepoimpl implements GetFabricTypesRepo {
  GetFabricTypesDs dataSource;
  GetFabricTypesRepoimpl({required this.dataSource});
  @override
  Future<List<FabricTypeModel>> getFabricTypes() async {
    return await dataSource.getFabricTypes();
  }
}
