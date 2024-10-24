part of 'chat_rooms_bloc.dart';

@freezed
class ChatRoomsEvent with _$ChatRoomsEvent {
  const factory ChatRoomsEvent.getChatRoomsList({required String userUuid}) =
      _GetChatRoomsList;
}
