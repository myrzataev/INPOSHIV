import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/main/home/data/models/manufacturers_profile_model.dart';
import 'package:inposhiv/features/main/home/data/repositories/get_manufacturers_repoimpl.dart';

part 'get_manufacturers_profile_event.dart';
part 'get_manufacturers_profile_state.dart';
part 'get_manufacturers_profile_bloc.freezed.dart';

class GetManufacturersProfileBloc
    extends Bloc<GetManufacturersProfileEvent, GetManufacturersProfileState> {
  GetManufacturersRepoimpl getManufacturersRepoimpl;
  GetManufacturersProfileBloc({required this.getManufacturersRepoimpl})
      : super(const _Initial()) {
    on<GetManufacturersProfileEvent>((event, emit) async {
      try {
        emit(const GetManufacturersProfileState.loading());
        final result = await getManufacturersRepoimpl.getManufacturers();
        emit(GetManufacturersProfileState.loaded(model: result));
      } catch (e) {
        emit(GetManufacturersProfileState.error(errorText: e.toString()));
      }
    });
  }
}
