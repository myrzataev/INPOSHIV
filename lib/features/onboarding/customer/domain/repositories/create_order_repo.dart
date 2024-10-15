import 'package:dio/dio.dart';
import 'package:inposhiv/features/onboarding/customer/data/models/order_model.dart';

abstract interface class CreateOrderRepo {
  Future<OrderModel> creatOrder({required FormData formData, required String customerUuid});
}