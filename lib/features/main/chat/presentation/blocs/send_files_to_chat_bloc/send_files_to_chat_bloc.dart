// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:inposhiv/core/error/app_error.dart';
import 'package:inposhiv/core/error/error_handler.dart';
import 'package:inposhiv/features/main/chat/data/repositories/send_files_to_chat_repoimpl.dart';

part 'send_files_to_chat_bloc.freezed.dart';
part 'send_files_to_chat_event.dart';
part 'send_files_to_chat_state.dart';

class SendFilesToChatBloc
    extends Bloc<SendFilesToChatEvent, SendFilesToChatState> {
  SendFilesToChatRepoimpl sendFilesToChatRepoimpl;
  SendFilesToChatBloc(
    this.sendFilesToChatRepoimpl,
  ) : super(const _Initial()) {
    on<SendFilesToChatEvent>((event, emit) async {
      try {
        emit(const SendFilesToChatState.loading());
        final result =
            await sendFilesToChatRepoimpl.sendFileToChat(body: event.body);
        emit(SendFilesToChatState.loaded(fileUrl: result));
      } catch (e) {
        emit(SendFilesToChatState.error(error: handleException(e)));
      }
    });
  }
}
