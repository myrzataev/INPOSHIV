abstract interface class AuctionRepo {
  Future<void> createAuction({required int orderId});
}
