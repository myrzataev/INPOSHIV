// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/core/error/app_error.dart';
import 'package:inposhiv/core/error/error_handler.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';

import 'package:inposhiv/features/main/auction/data/repositories/get_auctions_list_repoimmpl.dart';

part 'active_auctions_bloc.freezed.dart';
part 'active_auctions_event.dart';
part 'active_auctions_state.dart';

class ActiveAuctionsBloc
    extends Bloc<ActiveAuctionsEvent, ActiveAuctionsState> {
  GetAuctionsListRepoimmpl getAuctionsListRepoimmpl;
  ActiveAuctionsBloc(
    this.getAuctionsListRepoimmpl,
  ) : super(const _Initial()) {
    on<ActiveAuctionsEvent>((event, emit) async {
      try {
        emit(const ActiveAuctionsState.loading());
        final result = await getAuctionsListRepoimmpl.getActiveAuctionsList(
            manufacturerUuid: event.manufacturerUuid);
        emit(ActiveAuctionsState.loaded(auctionModel: result));
      } catch (e) {
        emit(ActiveAuctionsState.error(error: handleException(e)));
      }
    });
  }
}
