import 'package:inposhiv/features/auth/data/data_sources/login_ds.dart';
import 'package:inposhiv/features/auth/domain/entities/login_entity.dart';
import 'package:inposhiv/features/auth/domain/repositories/login_repo.dart';

class LoginrepoImpl implements LoginRepo {
  LoginDs dataSource;
  LoginrepoImpl({required this.dataSource});
  @override
  Future<LoginEntity> login(
      {required String phoneNumber, required String password}) async {
    return await dataSource.modelToEntity(
        phoneNumber: phoneNumber, password: password);
  }
}
