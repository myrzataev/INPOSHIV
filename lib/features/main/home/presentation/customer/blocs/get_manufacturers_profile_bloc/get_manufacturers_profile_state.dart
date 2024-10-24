part of 'get_manufacturers_profile_bloc.dart';

@freezed
class GetManufacturersProfileState with _$GetManufacturersProfileState {
  const factory GetManufacturersProfileState.initial() = _Initial;
  const factory GetManufacturersProfileState.loading() = _Loading;
  const factory GetManufacturersProfileState.loaded(
      {required List<ManufacturersProfileModel> model}) = _Loaded;
  const factory GetManufacturersProfileState.error(
      {required String errorText}) = _Error;
}
