import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';
import 'package:inposhiv/features/main/auction/data/repositories/get_detailed_auction_info_repoimpl.dart';

part 'get_detailed_auction_info_event.dart';
part 'get_detailed_auction_info_state.dart';
part 'get_detailed_auction_info_bloc.freezed.dart';

class GetDetailedAuctionInfoBloc
    extends Bloc<GetDetailedAuctionInfoEvent, GetDetailedAuctionInfoState> {
  GetDetailedAuctionInfoRepoimpl getDetailedAuctionInfoRepoimpl;
  GetDetailedAuctionInfoBloc({required this.getDetailedAuctionInfoRepoimpl})
      : super(const _Initial()) {
    on<GetDetailedAuctionInfoEvent>((event, emit) async {
      try {
        emit(const GetDetailedAuctionInfoState.loading());
        final result = await getDetailedAuctionInfoRepoimpl
            .getDetailedAuctionInfo(auctionUuid: event.auctionUuid);
        emit(GetDetailedAuctionInfoState.loaded(auctionModel: result));
      } catch (e) {
        emit(GetDetailedAuctionInfoState.error(errorText: e.toString()));
      }
    });
  }
}
