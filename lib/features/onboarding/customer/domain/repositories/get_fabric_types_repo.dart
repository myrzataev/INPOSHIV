import 'package:inposhiv/features/onboarding/customer/data/models/fabric_type_model.dart';

abstract interface class GetFabricTypesRepo {
  Future<List<FabricTypeModel>> getFabricTypes();
}