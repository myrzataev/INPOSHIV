import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_manufacturer_event.dart';
part 'search_manufacturer_state.dart';
part 'search_manufacturer_bloc.freezed.dart';

class SearchManufacturerBloc extends Bloc<SearchManufacturerEvent, SearchManufacturerState> {
  SearchManufacturerBloc() : super(_Initial()) {
    on<SearchManufacturerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
