import 'package:inposhiv/features/main/chat/data/models/create_chat_room_model.dart';

abstract interface class GetChatRoomsRepo {
  Future<List<CreateChatRoomModel>> getChats({required String userUuid});
}
