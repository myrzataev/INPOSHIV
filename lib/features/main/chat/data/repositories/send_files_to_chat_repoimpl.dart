import 'package:inposhiv/features/main/chat/data/data_source/send_files_to_chat_ds.dart';
import 'package:inposhiv/features/main/chat/domain/repositories/send_files_to_chat_repo.dart';

class SendFilesToChatRepoimpl implements SendFilesToChatRepo {
  SendFilesToChatDs sendFilesToChatDs;
  SendFilesToChatRepoimpl({required this.sendFilesToChatDs});
  @override
  Future<String> sendFileToChat({required Map<String, dynamic> body}) async {
    return await sendFilesToChatDs.sendFilesToChat(body: body);
  }
}
