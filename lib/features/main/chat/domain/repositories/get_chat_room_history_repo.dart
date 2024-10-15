import 'package:inposhiv/features/main/chat/data/models/chat_room_history_model.dart';
import 'package:inposhiv/features/main/chat/data/models/pageble_model.dart';

abstract interface class GetChatRoomHistoryRepo {
  Future<List<ChatRoomHistoryModel>> getChatRoomHistory(
      {required String chatRoomUuid, required PagebleModel model});
}
