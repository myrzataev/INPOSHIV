import 'package:dartz/dartz.dart';
import 'package:inposhiv/features/main/home/data/data_source/user_account_ds.dart';
import 'package:inposhiv/features/main/home/domain/repositories/change_password_repo.dart';

class ChangePasswordRepoimmpl implements ChangePasswordRepo {
  UserAccountDs userAccountDs;
  ChangePasswordRepoimmpl({required this.userAccountDs});
  @override
  Future<Either<String, String>> changePassword(Map<String, dynamic> body) async {
   return await userAccountDs.changePassword(body: body);
  }
}
