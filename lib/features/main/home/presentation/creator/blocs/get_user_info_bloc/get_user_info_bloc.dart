import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/main/home/data/models/profile_model.dart';

part 'get_user_info_event.dart';
part 'get_user_info_state.dart';
part 'get_user_info_bloc.freezed.dart';

class GetUserInfoBloc extends Bloc<GetUserInfoEvent, GetUserInfoState> {
  GetUserInfoBloc() : super(const _Initial()) {
    on<GetUserInfoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
