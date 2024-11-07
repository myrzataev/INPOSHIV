import 'package:inposhiv/features/main/chat/data/models/create_chat_room_model.dart';

abstract interface class CreateChatRoomRepo {
  Future<CreateChatRoomModel> createChatRoom(
      {required Map<String, dynamic> chatData});
}