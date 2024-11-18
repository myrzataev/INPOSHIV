import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/main/chat/data/models/chat_rooms_model.dart';
import 'package:inposhiv/features/main/chat/data/models/create_chat_room_model.dart';
import 'package:inposhiv/features/main/chat/data/repositories/get_chats_repoimpl.dart';

part 'chat_rooms_event.dart';
part 'chat_rooms_state.dart';
part 'chat_rooms_bloc.freezed.dart';

class ChatRoomsBloc extends Bloc<ChatRoomsEvent, ChatRoomsState> {
  final GetChatRoomsRepoimpl getChatRoomsRepoimpl;
  ChatRoomsBloc({required this.getChatRoomsRepoimpl})
      : super(const _Initial()) {
    on<ChatRoomsEvent>((event, emit) async {
      try {
        emit(const ChatRoomsState.loading());
        final result =
            await getChatRoomsRepoimpl.getChats(userUuid: event.userUuid);
        emit(ChatRoomsState.chatRoomsLoaded(model: result));
      } catch (e) {
        emit(ChatRoomsState.chatRoomsError(errorText: e.toString()));
      }
    });
  }
}
