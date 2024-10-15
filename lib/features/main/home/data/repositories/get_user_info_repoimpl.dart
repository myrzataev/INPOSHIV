import 'package:inposhiv/features/main/home/data/data_source/get_user_info_ds.dart';
import 'package:inposhiv/features/main/home/data/models/profile_model.dart';
import 'package:inposhiv/features/main/home/domain/repositories/get_user_info_repo.dart';

class GetUserInfoRepoimpl implements GetUserInfoRepo {
  GetUserInfoDs dataSource;
  GetUserInfoRepoimpl({required this.dataSource});
  @override
  Future<ProfileModel> getUserInf({required String userId}) async {
    return await dataSource.getUserInfo(userId: userId);
  }
}
