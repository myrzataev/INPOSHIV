import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_order_event.dart';
part 'search_order_state.dart';
part 'search_order_bloc.freezed.dart';

class SearchOrderBloc extends Bloc<SearchOrderEvent, SearchOrderState> {
  SearchOrderBloc() : super(const _Initial()) {
    on<SearchOrderEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
