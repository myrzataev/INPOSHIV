import 'package:inposhiv/features/main/chat/data/models/chat_rooms_model.dart';

abstract interface class GetChatRoomsRepo {
  Future<List<ChatRoomsModel>> getChats({required String userUuid});
}
