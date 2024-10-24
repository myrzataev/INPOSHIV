part of 'chat_bloc.dart';

@freezed
class ChatsState with _$ChatsState {
  const factory ChatsState.initial() = _Initial;
  const factory ChatsState.loading() = _Loading;
  const factory ChatsState.sended() = _Sended;
  const factory ChatsState.sendError({required String errorext}) = _Error;
  const factory ChatsState.getChatroomHistoryLoaded(
      {required List<ChatRoomHistoryModel> model}) = _GetChatroomHistoryLoaded;
  const factory ChatsState.getChatroomHistoryError({required String errorext}) =
      _GetChatroomHistoryError;
  const factory ChatsState.createChatRoomSuccess(
      {required CreateChatRoomModel model}) = _CreateChatRoomSuccess;
  const factory ChatsState.createChatRoomError({required String errorText}) =
      _CreateChatRoomError;
}
