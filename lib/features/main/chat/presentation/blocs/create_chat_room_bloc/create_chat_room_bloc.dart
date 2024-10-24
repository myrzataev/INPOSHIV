import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/main/chat/data/models/create_chat_room_model.dart';
import 'package:inposhiv/features/main/chat/data/repositories/create_chat_repoimpl.dart';

part 'create_chat_room_event.dart';
part 'create_chat_room_state.dart';
part 'create_chat_room_bloc.freezed.dart';

class CreateChatRoomBloc
    extends Bloc<CreateChatRoomEvent, CreateChatRoomState> {
  final CreateChatRepoimpl createChatRepoimpl;
  CreateChatRoomBloc({required this.createChatRepoimpl})
      : super(const _Initial()) {
    on<CreateChatRoomEvent>((event, emit) async {
      try {
        emit(const CreateChatRoomState.loading());
        final result =
            await createChatRepoimpl.createChatRoom(chatData: event.chatData);
        emit(CreateChatRoomState.createdChatRoomSuccess(model: result));
      } catch (e) {
        emit(CreateChatRoomState.createChatRoomError(errorText: e.toString()));
      }
    });
  }
}
