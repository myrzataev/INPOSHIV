part of 'send_files_to_chat_bloc.dart';

@freezed
class SendFilesToChatState with _$SendFilesToChatState {
  const factory SendFilesToChatState.initial() = _Initial;
    const factory SendFilesToChatState.loading() = _Loading;
  const factory SendFilesToChatState.loaded({required String fileUrl}) = _Loaded;
  const factory SendFilesToChatState.error({required AppError error}) = _Error;

}
