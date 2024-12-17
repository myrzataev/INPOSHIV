import 'package:inposhiv/features/onboarding/customer/data/models/order_model.dart';

abstract class GetCustomerOrdersRepo {
   Future<List<OrderModel>> getCustomerOrdersHistory({required String customerUid});
}