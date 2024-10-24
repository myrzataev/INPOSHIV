import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:inposhiv/features/main/chat/data/models/chat_room_history_model.dart';
import 'package:inposhiv/features/main/chat/data/models/chat_rooms_model.dart';
import 'package:inposhiv/features/main/chat/data/models/create_chat_room_model.dart';
import 'package:inposhiv/features/main/chat/data/models/pageble_model.dart';
import 'package:inposhiv/features/main/chat/data/repositories/create_chat_repoimpl.dart';
import 'package:inposhiv/features/main/chat/data/repositories/send_message_repoimpl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/main/chat/domain/repositories/get_chat_room_history_repo.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatsBloc extends Bloc<ChatsEvent, ChatsState> {
  SendMessageRepoimpl repoimpl;
  GetChatRoomHistoryRepo getChatRoomHistoryRepo;

  ChatsBloc({
    required this.repoimpl,
    required this.getChatRoomHistoryRepo,
  }) : super(const _Initial()) {
    on<ChatsEvent>((event, emit) async {
      await event.map(
        sendMessage: (value) async {
          await sendMessage(event: value, emit: emit);
        },
        getChatRoomHistory: (value) async {
          await getChatHistory(event: value, emit: emit);
        },
      );
    });
  }
  Future<void> sendMessage(
      {required SendMessage event, required Emitter<ChatsState> emit}) async {
    try {
      emit(const ChatsState.loading());
      await repoimpl.sendMessage(
          chatUuid: event.chatUuid,
          senderUuid: event.senderUuid,
          recipientUuid: event.recipientUuid,
          content: event.content);
      emit(const ChatsState.sended());
    } catch (e) {
      emit(ChatsState.sendError(errorext: e.toString()));
    }
  }

  Future<void> getChatHistory(
      {required _GetChatRoomHistory event,
      required Emitter<ChatsState> emit}) async {
    try {
      emit(const ChatsState.loading());
      final result = await getChatRoomHistoryRepo.getChatRoomHistory(
          chatRoomUuid: event.chatRoomUuid, model: event.model);
      emit(ChatsState.getChatroomHistoryLoaded(model: result));
    } catch (e) {
      emit(ChatsState.getChatroomHistoryError(errorext: e.toString()));
    }
  }

  // Future<void> createChatroom(
  //     {required CreateChatRoom event,
  //     required Emitter<ChatsState> emit}) async {
  //   try {
  //     emit(const ChatsState.loading());
  //     final result =
  //         await createChatRepoimpl.createChatRoom(chatData: event.chatData);
  //     emit(ChatsState.createChatRoomSuccess(model: result));
  //   } catch (e) {
  //     emit(ChatsState.createChatRoomError(errorText: e.toString()));
  //   }
  // }
}
