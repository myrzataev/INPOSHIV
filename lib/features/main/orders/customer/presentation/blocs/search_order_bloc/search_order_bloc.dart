import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';
import 'package:inposhiv/features/main/orders/customer/data/repositories/search_order_repoimpl.dart';

part 'search_order_event.dart';
part 'search_order_state.dart';
part 'search_order_bloc.freezed.dart';

class SearchOrderBloc extends Bloc<SearchOrderEvent, SearchOrderState> {
  SearchOrderRepoImpl searchOrderRepoImpl;
  SearchOrderBloc({required this.searchOrderRepoImpl})
      : super(const _Initial()) {
    on<SearchOrderEvent>((event, emit) async {
      try {
        emit(const SearchOrderState.loading());

        final result = await searchOrderRepoImpl.searchOrder(
            fabricType: event.fabricType,
            category: event.category,
            productName: event.productName);
        print("in bloc ${event.category}");
        print("in bloc ${event.fabricType}");
        print("in bloc ${event.productName}");
        emit(SearchOrderState.loaded(modelList: result));
      } catch (e) {
        emit(SearchOrderState.error(errorText: e.toString()));
      }
    });
  }
}
