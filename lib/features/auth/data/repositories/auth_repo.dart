import 'package:inposhiv/features/auth/data/data_sources/auth_ds.dart';
import 'package:inposhiv/features/auth/data/models/user_model.dart';
import 'package:inposhiv/features/auth/domain/entities/user_entity.dart';
import 'package:inposhiv/features/auth/domain/repositories/auth_usecase.dart';

class AuthRepoImpl implements AuthRepo {
  AuthDataSource dataSource;
  AuthRepoImpl({required this.dataSource});
  @override
  Future<UserEntity> auth({required UserModel userModel}) async {
    return await dataSource.modelToEntity(usermodel: userModel);
  }
}
