import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/onboarding/customer/data/models/fabric_type_model.dart';
import 'package:inposhiv/features/onboarding/customer/data/repositories/get_fabric_types_repoimpl.dart';

part 'get_fabric_types_event.dart';
part 'get_fabric_types_state.dart';
part 'get_fabric_types_bloc.freezed.dart';

class GetFabricTypesBloc
    extends Bloc<GetFabricTypesEvent, GetFabricTypesState> {
  GetFabricTypesRepoimpl repoimpl;
  GetFabricTypesBloc({required this.repoimpl}) : super(const _Initial()) {
    on<GetFabricTypesEvent>((event, emit) async {
      emit(const GetFabricTypesState.loading());
      try {
        final result = await repoimpl.getFabricTypes();
        emit(GetFabricTypesState.loaded(model: result));
      } catch (e) {
        emit(GetFabricTypesState.error(errorText: e.toString()));
      }
    });
  }
}
