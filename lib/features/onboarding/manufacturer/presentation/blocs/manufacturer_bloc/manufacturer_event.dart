part of 'manufacturer_bloc.dart';

@freezed
class ManufacturerEvent with _$ManufacturerEvent {
  const factory ManufacturerEvent.createProfile(
      {required FormData formData, required String userId}) = _CreateProfile;
}
