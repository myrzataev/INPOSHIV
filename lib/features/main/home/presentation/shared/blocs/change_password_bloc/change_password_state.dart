part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.initial() = _Initial;
    const factory ChangePasswordState.loading() = _Loading;
  const factory ChangePasswordState.loaded({required String message}) = _Loaded;
  const factory ChangePasswordState.error({required String error}) = _Error;

}
