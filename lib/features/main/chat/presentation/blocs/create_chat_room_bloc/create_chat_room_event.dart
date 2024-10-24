part of 'create_chat_room_bloc.dart';

@freezed
class CreateChatRoomEvent with _$CreateChatRoomEvent {
  const factory CreateChatRoomEvent.createChatRoom(
      {required Map<String, dynamic> chatData}) = _CreateChatRoom;
}
