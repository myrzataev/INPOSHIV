import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/auth/data/models/user_model.dart';
import 'package:inposhiv/features/auth/data/repositories/auth_repo.dart';
import 'package:inposhiv/features/auth/domain/entities/user_entity.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepoImpl repoImpl;

  AuthBloc({required this.repoImpl}) : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      emit(const AuthState.loading());
      try {
        final result = await repoImpl.auth(userModel: event.model);
        emit(AuthState.loaded(entity: result));
      } catch (e) {
        emit(AuthState.error(error: e.toString()));
      }
    });
  }
}
