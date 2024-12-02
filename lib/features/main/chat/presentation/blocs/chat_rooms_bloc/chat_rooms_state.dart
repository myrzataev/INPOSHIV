part of 'chat_rooms_bloc.dart';

@freezed
class ChatRoomsState with _$ChatRoomsState {
  const factory ChatRoomsState.initial() = _Initial;
  const factory ChatRoomsState.loading() = _Loading;
  const factory ChatRoomsState.chatRoomsLoaded(
      {required List<CreateChatRoomModel> model}) = _ChatRoomsLoaded;
  const factory ChatRoomsState.chatRoomsError({required AppError error}) = _ChatRoomsError;
}
