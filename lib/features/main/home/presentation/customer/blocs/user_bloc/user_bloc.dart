import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/core/error/app_error.dart';
import 'package:inposhiv/core/error/error_handler.dart';
import 'package:inposhiv/features/main/home/data/models/profile_model.dart';
import 'package:inposhiv/features/main/home/data/repositories/get_user_info_repoimpl.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  GetUserInfoRepoimpl repoimpl;
  UserBloc({required this.repoimpl}) : super(const _Initial()) {
    on<_GetUserInfo>((event, emit)async {
    await getUserInfo(event: event, emit: emit);
    });
  }
  Future<void> getUserInfo(
      {required UserEvent event, required Emitter<UserState> emit}) async {
    emit(const UserState.loading());
    try {
      final result = await repoimpl.getUserInf(userId: event.userId);
      emit(UserState.userInfoLoaded(model: result));
    } catch (e) {
      emit(UserState.userInfoError(error: handleException(e)));
    }
  }
}
