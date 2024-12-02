import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/core/error/app_error.dart';
import 'package:inposhiv/core/error/error_handler.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';
import 'package:inposhiv/features/main/auction/data/repositories/get_auctions_list_repoimmpl.dart';

part 'get_auctions_event.dart';
part 'get_auctions_state.dart';
part 'get_auctions_bloc.freezed.dart';

class GetAuctionsBloc extends Bloc<GetAuctionsEvent, GetAuctionsState> {
  final GetAuctionsListRepoimmpl getAuctionsListRepoimpl;
  GetAuctionsBloc({required this.getAuctionsListRepoimpl})
      : super(const _Initial()) {
    on<GetAuctionsEvent>((event, emit) async {
      try {
        emit(const GetAuctionsState.loading());
        final auctions = await getAuctionsListRepoimpl.getAuctionsList();
        emit(GetAuctionsState.loaded(model: auctions));
      } catch (e) {
        emit(GetAuctionsState.error(error: handleException(e)));
      }
    });
  }
}
