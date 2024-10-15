part of 'manufacturer_bloc.dart';

@freezed
class ManufacturerState with _$ManufacturerState {
  const factory ManufacturerState.initial() = _Initial;
  const factory ManufacturerState.loading() = _Loading;
  const factory ManufacturerState.createdProfile({required ManufacturerModel model}) = _CreatedProfile;
  const factory ManufacturerState.errorWhileCreatingProfile({required String errorText}) =
      _ErrorWhileCreatingProfile;
}
