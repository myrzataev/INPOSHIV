part of 'delete_account_bloc.dart';

@freezed
class DeleteAccountState with _$DeleteAccountState {
  const factory DeleteAccountState.initial() = _Initial;
  const factory DeleteAccountState.loading() = _Loading;
  const factory DeleteAccountState.loaded({required String message}) = _Loaded;
  const factory DeleteAccountState.error() = _Error;
}
