part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.loading() = _Loading;
  const factory LoginState.loaded({required LoginEntity entity}) = _Loaded;
  const factory LoginState.error({required AppError errorText}) = _Error;
}
