import 'package:dio/src/form_data.dart';
import 'package:inposhiv/features/onboarding/customer/data/data_source/create_order_ds.dart';
import 'package:inposhiv/features/onboarding/customer/data/models/order_model.dart';
import 'package:inposhiv/features/onboarding/customer/domain/repositories/create_order_repo.dart';

class CreateOrderRepoImpl implements CreateOrderRepo {
  CreateOrderDs dataSource;
  CreateOrderRepoImpl({required this.dataSource});
  @override
  Future<OrderModel> creatOrder(
      {required FormData formData, required String customerUuid}) async {
    return await dataSource.createOrder(
        formData: formData, customerUuid: customerUuid);
  }
}
