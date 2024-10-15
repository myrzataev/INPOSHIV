import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/survey/data/models/customer_survey_model.dart';
import 'package:inposhiv/features/survey/data/models/customer_survey_response_model.dart';
import 'package:inposhiv/features/survey/data/repositories/send_customer_survey_repo_impl.dart';
import 'package:inposhiv/features/survey/domain/repositories/send_customer_survey_repo.dart';

part 'send_customer_survey_data_event.dart';
part 'send_customer_survey_data_state.dart';
part 'send_customer_survey_data_bloc.freezed.dart';

class SendCustomerSurveyDataBloc
    extends Bloc<SendCustomerSurveyDataEvent, SendCustomerSurveyDataState> {
  SendCustomerSurveyRepoImpl repoImpl;
  SendCustomerSurveyDataBloc({required this.repoImpl})
      : super(const _Initial()) {
    on<SendCustomerSurveyDataEvent>((event, emit) async {
      emit(const SendCustomerSurveyDataState.loading());
      try {
        final result = await repoImpl.sendCustomersSurvey(
            userId: event.userId, customerSurveyData: event.customerSurveyData);
        emit(SendCustomerSurveyDataState.loaded(model: result));
      } catch (e) {
        emit(SendCustomerSurveyDataState.error(errorText: e.toString()));
      }
    });
  }
}
