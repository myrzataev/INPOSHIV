abstract interface class ReviewForManufacturerRepo {
  Future<void> reviewForManufacturer(
      {required String manufacturerUuid,
      required String customerUuid,
      required Map<String, dynamic> body});
}
