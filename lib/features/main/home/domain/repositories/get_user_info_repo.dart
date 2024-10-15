import 'package:inposhiv/features/main/home/data/models/profile_model.dart';

abstract interface class GetUserInfoRepo {
  Future<ProfileModel> getUserInf({required String userId});
}