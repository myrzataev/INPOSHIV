import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/onboarding/manufacturer/data/models/manufacturer_model.dart';
import 'package:inposhiv/features/onboarding/manufacturer/data/repositories/create_manufacturer_profile_repoimpl.dart';

part 'manufacturer_event.dart';
part 'manufacturer_state.dart';
part 'manufacturer_bloc.freezed.dart';

class ManufacturerBloc extends Bloc<ManufacturerEvent, ManufacturerState> {
  CreateManufacturerProfileRepoimpl createManufacturerProfileRepoimpl;
  ManufacturerBloc({required this.createManufacturerProfileRepoimpl})
      : super(const _Initial()) {
    on<ManufacturerEvent>((event, emit) async {
    await  event.map(
        createProfile: (value) async {
        await  createManufacturereProfile(event: value, emit: emit);
        },
      );
    });
  }
  Future<void> createManufacturereProfile(
      {required _CreateProfile event,
      required Emitter<ManufacturerState> emit}) async {
    try {
      emit(const ManufacturerState.loading());
      final result =
          await createManufacturerProfileRepoimpl.createManufacturereProfile(
              formData: event.formData, userId: event.userId);
      emit(ManufacturerState.createdProfile(model: result));
    } catch (e) {
      emit(
          ManufacturerState.errorWhileCreatingProfile(errorText: e.toString()));
    }
  }
}
