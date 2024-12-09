abstract interface class SendFilesToChatRepo {
  Future<String> sendFileToChat({required Map<String, dynamic> body});
}
