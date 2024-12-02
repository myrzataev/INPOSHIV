part of 'get_user_info_bloc.dart';

@freezed
class GetUserInfoState with _$GetUserInfoState {
  const factory GetUserInfoState.initial() = _Initial;
  const factory GetUserInfoState.loading() = _Loading;
  const factory GetUserInfoState.loaded({required ProfileModel model}) = _Loaded;
  const factory GetUserInfoState.error({required String errorText}) = _Error;
}
