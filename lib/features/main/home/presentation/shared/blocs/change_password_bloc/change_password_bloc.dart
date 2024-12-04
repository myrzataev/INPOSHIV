// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/core/error/app_error.dart';
import 'package:inposhiv/core/error/error_handler.dart';

import 'package:inposhiv/features/main/home/data/repositories/change_password_repoimmpl.dart';

part 'change_password_bloc.freezed.dart';
part 'change_password_event.dart';
part 'change_password_state.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordRepoimmpl changePasswordRepoimmpl;
  ChangePasswordBloc(
    this.changePasswordRepoimmpl,
  ) : super(const _Initial()) {
    on<ChangePasswordEvent>((event, emit) async {
      emit(const ChangePasswordState.loading());

      final result = await changePasswordRepoimmpl.changePassword(event.body);
      result.fold((failure) => emit(ChangePasswordState.error(error: failure)),
          (success) => emit(ChangePasswordState.loaded(message: success)));
      // try {
      //   emit(const ChangePasswordState.loading());
      //   final result = await changePasswordRepoimmpl.changePassword(event.body);
      //   result.fold((failure)=> emit, ifRight)
      // } catch (e) {
      //   emit(ChangePasswordState.error(error: handleException(e)));
      // }
    });
  }
}
