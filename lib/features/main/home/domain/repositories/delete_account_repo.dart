abstract interface class DeleteAccountRepo {
  Future<String> deleteAccount({required String phoneNumber});
}