import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/auth/data/repositories/loginrepo_impl.dart';
import 'package:inposhiv/features/auth/domain/entities/login_entity.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginrepoImpl repoImpl;
  LoginBloc({required this.repoImpl}) : super(const _Initial()) {
    on<LoginEvent>((event, emit) async {
      emit(const LoginState.loading());
      try {
        final result = await repoImpl.login(
            phoneNumber: event.phoneNumber, password: event.password);
        emit(LoginState.loaded(entity: result));
      } catch (e) {
        emit(LoginState.error(errorText: e.toString()));
      }
    });
  }
}
