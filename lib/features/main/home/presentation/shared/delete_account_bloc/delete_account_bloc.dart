import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/main/home/data/repositories/delete_account_repoimpl.dart';

part 'delete_account_event.dart';
part 'delete_account_state.dart';
part 'delete_account_bloc.freezed.dart';

class DeleteAccountBloc extends Bloc<DeleteAccountEvent, DeleteAccountState> {
  DeleteAccountRepoimpl deleteAccountRepoimpl;
  DeleteAccountBloc({required this.deleteAccountRepoimpl})
      : super(const _Initial()) {
    on<DeleteAccountEvent>((event, emit) async {
      try {
        emit(const DeleteAccountState.loading());
        final result = await deleteAccountRepoimpl.deleteAccount(
            phoneNumber: event.phoneNumber);
        emit(DeleteAccountState.loaded(message: result));
      } catch (e) {
        emit(const DeleteAccountState.error());
      }
    });
  }
}
