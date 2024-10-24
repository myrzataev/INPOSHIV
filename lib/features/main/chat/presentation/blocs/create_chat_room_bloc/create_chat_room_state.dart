part of 'create_chat_room_bloc.dart';

@freezed
class CreateChatRoomState with _$CreateChatRoomState {
  const factory CreateChatRoomState.initial() = _Initial;
  const factory CreateChatRoomState.loading() = _Loading;
  const factory CreateChatRoomState.createdChatRoomSuccess(
      {required CreateChatRoomModel model}) = _CreatedChatRoomSuccess;
  const factory CreateChatRoomState.createChatRoomError({required String errorText}) =
      _CreateChatRoomError;
}
