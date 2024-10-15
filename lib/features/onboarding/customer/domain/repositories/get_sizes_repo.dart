import 'package:inposhiv/features/onboarding/customer/data/models/size_model.dart';

abstract interface class GetSizesRepo {
  Future<List<SizeModel>> getSizes();
}