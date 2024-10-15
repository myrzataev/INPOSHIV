import 'package:bloc/bloc.dart';
import 'package:inposhiv/features/main/chat/data/models/chat_room_history_model.dart';
import 'package:inposhiv/features/main/chat/data/models/pageble_model.dart';
import 'package:inposhiv/features/main/chat/data/repositories/send_message_repoimpl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/main/chat/domain/repositories/get_chat_room_history_repo.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  SendMessageRepoimpl repoimpl;
  GetChatRoomHistoryRepo getChatRoomHistoryRepo;
  ChatBloc({required this.repoimpl, required this.getChatRoomHistoryRepo})
      : super(const _Initial()) {
    on<ChatEvent>((event, emit) async {
      await event.map(sendMessage: (value) async {
        await sendMessage(event: value, emit: emit);
      }, getChatRoomHistory: (value) async {
        await getChatHistory(event: value, emit: emit);
      });
    });
  }
  Future<void> sendMessage(
      {required SendMessage event, required Emitter<ChatState> emit}) async {
    try {
      emit(const ChatState.loading());
      await repoimpl.sendMessage(
          chatUuid: event.chatUuid,
          senderUuid: event.senderUuid,
          recipientUuid: event.recipientUuid,
          content: event.content);
      emit(const ChatState.sended());
    } catch (e) {
      emit(ChatState.sendError(errorext: e.toString()));
    }
  }

  Future<void> getChatHistory(
      {required _GetChatRoomHistory event,
      required Emitter<ChatState> emit}) async {
    try {
      emit(const ChatState.loading());
      final result = await getChatRoomHistoryRepo.getChatRoomHistory(
          chatRoomUuid: event.chatRoomUuid, model: event.model);
      emit(ChatState.getChatroomHistoryLoaded(model: result));
    } catch (e) {
      emit(ChatState.getChatroomHistoryError(errorext: e.toString()));
    }
  }
}
