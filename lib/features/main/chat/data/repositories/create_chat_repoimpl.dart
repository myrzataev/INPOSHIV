import 'package:inposhiv/features/main/chat/data/data_source/create_chatroom_ds.dart';
import 'package:inposhiv/features/main/chat/data/models/create_chat_room_model.dart';
import 'package:inposhiv/features/main/chat/domain/repositories/create_chat_room_repo.dart';

class CreateChatRepoimpl implements CreateChatRoomRepo {
  CreateChatroomDs dataSource;
  CreateChatRepoimpl({required this.dataSource});
  @override
  Future<CreateChatRoomModel> createChatRoom(
      {required Map<String, dynamic> chatData}) async {
    return await dataSource.createChatRoom(chatData: chatData);
  }
}
