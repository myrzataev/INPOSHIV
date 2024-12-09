import 'package:inposhiv/features/main/chat/data/data_source/get_chatroom_history_ds.dart';
import 'package:inposhiv/features/main/chat/data/models/chat_room_history_model.dart';
import 'package:inposhiv/features/main/chat/data/models/pageble_model.dart';
import 'package:inposhiv/features/main/chat/domain/repositories/get_chat_room_history_repo.dart';

class GetChatRoomsHistoryRepoimpl implements GetChatRoomHistoryRepo {
  GetChatroomHistoryDs dataSource;
  GetChatRoomsHistoryRepoimpl({required this.dataSource});
  @override
  Future<ChatRoomHistoryModel> getChatRoomHistory(
      {required String chatRoomUuid, required PagebleModel model}) async {
    return await dataSource.getChatRoomHistory(
        chatRoomUuid: chatRoomUuid, model: model);
  }
}
