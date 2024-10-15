import 'package:inposhiv/features/main/chat/data/data_source/send_message_ds.dart';
import 'package:inposhiv/features/main/chat/domain/repositories/send_message_repo.dart';

class SendMessageRepoimpl implements SendMessageRepo {
  SendMessageDs dataSource;
  SendMessageRepoimpl({required this.dataSource});
  @override
  Future<void> sendMessage(
      {required String chatUuid,
      required String senderUuid,
      required String recipientUuid,
      required String content}) async {
    dataSource.sendMessage(
        chatUuid: chatUuid,
        senderUuid: senderUuid,
        recipientUuid: recipientUuid,
        content: content);
  }
}
