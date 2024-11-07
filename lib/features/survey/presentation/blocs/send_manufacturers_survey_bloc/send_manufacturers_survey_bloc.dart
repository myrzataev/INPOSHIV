import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/survey/data/models/create_manufacturers_profile_model.dart';
import 'package:inposhiv/features/survey/data/repositories/send_manufacturer_survey_repoimpl.dart';

part 'send_manufacturers_survey_event.dart';
part 'send_manufacturers_survey_state.dart';
part 'send_manufacturers_survey_bloc.freezed.dart';

class SendManufacturersSurveyBloc
    extends Bloc<SendManufacturersSurveyEvent, SendManufacturersSurveyState> {
  final SendManufacturerSurveryRepoImpl sendManufacturerSurveryRepoImpl;
  SendManufacturersSurveyBloc({required this.sendManufacturerSurveryRepoImpl})
      : super(const _Initial()) {
    on<SendManufacturersSurveyEvent>((event, emit) async {
      try {
        emit(const SendManufacturersSurveyState.loading());
        final result =
            await sendManufacturerSurveryRepoImpl.createManufacturereProfile(
                data: event.data, manufacturerUuid: event.manufacturerId);
        emit(SendManufacturersSurveyState.loaded(model: result));
      } catch (e) {
        emit(SendManufacturersSurveyState.error(errorText: e.toString()));
      }
    });
  }
}
