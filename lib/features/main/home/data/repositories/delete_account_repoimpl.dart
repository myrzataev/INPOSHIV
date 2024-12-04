import 'package:inposhiv/features/main/home/data/data_source/user_account_ds.dart';
import 'package:inposhiv/features/main/home/domain/repositories/delete_account_repo.dart';

class DeleteAccountRepoimpl implements DeleteAccountRepo {
  UserAccountDs deleteAccountDs;
  DeleteAccountRepoimpl({required this.deleteAccountDs});
  @override
  Future<String> deleteAccount({required String phoneNumber}) async {
    return await deleteAccountDs.deleteAccount(phoneNumber: phoneNumber);
  }
}
