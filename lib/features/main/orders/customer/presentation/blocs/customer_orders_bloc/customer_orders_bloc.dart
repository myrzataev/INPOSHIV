import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_orders_event.dart';
part 'customer_orders_state.dart';
part 'customer_orders_bloc.freezed.dart';

class CustomerOrdersBloc extends Bloc<CustomerOrdersEvent, CustomerOrdersState> {
  CustomerOrdersBloc() : super(_Initial()) {
    on<CustomerOrdersEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
