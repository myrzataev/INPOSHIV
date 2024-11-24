import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_feed_back_bloc_event.dart';
part 'send_feed_back_bloc_state.dart';
part 'send_feed_back_bloc_bloc.freezed.dart';

class SendFeedBackBlocBloc extends Bloc<SendFeedBackBlocEvent, SendFeedBackBlocState> {
  SendFeedBackBlocBloc() : super(_Initial()) {
    on<SendFeedBackBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
