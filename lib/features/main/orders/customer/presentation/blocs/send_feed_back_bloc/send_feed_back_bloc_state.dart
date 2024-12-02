part of 'send_feed_back_bloc_bloc.dart';

@freezed
class SendFeedBackBlocState with _$SendFeedBackBlocState {
  const factory SendFeedBackBlocState.initial() = _Initial;
  const factory SendFeedBackBlocState.loading() = _Loading;
  const factory SendFeedBackBlocState.loaded() = _Loaded;
  const factory SendFeedBackBlocState.error() = _Error;
}
