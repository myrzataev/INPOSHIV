// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:inposhiv/features/main/orders/customer/data/data_source/review_for_manufacturer_ds.dart';
import 'package:inposhiv/features/main/orders/customer/domain/repositories/review_for_manufacturer_repo.dart';

class ReviewForManufacturerRepoimpl implements ReviewForManufacturerRepo {
  ReviewForManufacturerDs reviewForManufacturerDs;
  ReviewForManufacturerRepoimpl({
    required this.reviewForManufacturerDs,
  });
  @override
  Future<void> reviewForManufacturer(
      {required String manufacturerUuid,
      required String customerUuid,
      required Map<String, dynamic> body}) async {
    await reviewForManufacturerDs.review(
        manufacturerUuid: manufacturerUuid,
        customerUuid: customerUuid,
        body: body);
  }
}
