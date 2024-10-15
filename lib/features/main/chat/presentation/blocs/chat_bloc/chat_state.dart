part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loading() = _Loading;
  const factory ChatState.sended() = _Sended;
  const factory ChatState.sendError({required String errorext}) = _Error;
  const factory ChatState.getChatroomHistoryLoaded(
      {required List<ChatRoomHistoryModel> model}) = _GetChatroomHistoryLoaded;
  const factory ChatState.getChatroomHistoryError({required String errorext}) =
      _GetChatroomHistoryError;
}
