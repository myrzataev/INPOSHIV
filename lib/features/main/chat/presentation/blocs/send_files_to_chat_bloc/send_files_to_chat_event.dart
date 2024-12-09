part of 'send_files_to_chat_bloc.dart';

@freezed
class SendFilesToChatEvent with _$SendFilesToChatEvent {
  const factory SendFilesToChatEvent.started(
      {required Map<String, dynamic> body}) = _Started;
}
