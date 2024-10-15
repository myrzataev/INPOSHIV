part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.sendMessage(
      {required String chatUuid,
      required String senderUuid,
      required String recipientUuid,
      required String content}) = SendMessage;
      const factory ChatEvent.getChatRoomHistory(
      {required String chatRoomUuid,
      required PagebleModel model,
      }) = _GetChatRoomHistory;
}
