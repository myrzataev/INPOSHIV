part of 'chat_bloc.dart';

@freezed
class ChatsEvent with _$ChatsEvent {
  const factory ChatsEvent.sendMessage(
      {required String chatUuid,
      required String senderUuid,
      required String recipientUuid,
      required String content}) = SendMessage;
  const factory ChatsEvent.getChatRoomHistory({
    required String chatRoomUuid,
    required PagebleModel model,
  }) = _GetChatRoomHistory;

  
}
