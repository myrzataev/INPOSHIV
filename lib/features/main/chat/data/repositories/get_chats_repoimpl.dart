import 'package:inposhiv/features/main/chat/data/data_source/get_chats_ds.dart';
import 'package:inposhiv/features/main/chat/data/models/create_chat_room_model.dart';
import 'package:inposhiv/features/main/chat/domain/repositories/get_chat_rooms_repo.dart';

class GetChatRoomsRepoimpl implements GetChatRoomsRepo {
  GetChatsDs getChatsDs;
  GetChatRoomsRepoimpl({required this.getChatsDs});
  @override
  Future<List<CreateChatRoomModel>> getChats({required String userUuid}) async {
    return await getChatsDs.getChatsList(userUuid: userUuid);
  }
}
