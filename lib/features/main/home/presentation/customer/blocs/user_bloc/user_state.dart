part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = _Loading;
  const factory UserState.userInfoLoaded({required ProfileModel model}) =
      _UserInfoLoaded;
  const factory UserState.userInfoError({required AppError error}) =
      _UserInfoError;
}
