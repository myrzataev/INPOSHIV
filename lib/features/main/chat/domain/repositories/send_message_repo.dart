abstract interface class SendMessageRepo {
  Future<void> sendMessage(
      {required String chatUuid,
      required String senderUuid,
      required String recipientUuid,
      required String content});
}
