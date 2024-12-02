import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/core/error/app_error.dart';
import 'package:inposhiv/core/error/error_handler.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';
import 'package:inposhiv/features/main/auction/data/repositories/get_manufacturer_auctions_repoimpl.dart';

part 'manufacturer_auctions_event.dart';
part 'manufacturer_auctions_state.dart';
part 'manufacturer_auctions_bloc.freezed.dart';

class ManufacturerAuctionsBloc
    extends Bloc<ManufacturerAuctionsEvent, ManufacturerAuctionsState> {
  GetManufacturerAuctionsRepoimpl getManufacturerAuctionsRepoimpl;
  ManufacturerAuctionsBloc({required this.getManufacturerAuctionsRepoimpl})
      : super(const _Initial()) {
    on<ManufacturerAuctionsEvent>((event, emit) async {
      try {
        emit(const ManufacturerAuctionsState.loading());
        final result = await getManufacturerAuctionsRepoimpl
            .getManufacturersAuctions(manufacturerId: event.manufacturerId);
        emit(ManufacturerAuctionsState.loaded(model: result));
      } catch (e) {
        emit(ManufacturerAuctionsState.error(errorText: handleException(e)));
      }
    });
  }
}
