import 'package:inposhiv/resources/resources.dart';

class MockedAuctionModel {
  final String logo;
  final int trustStatuses;
  final String location;
  final int quantityOfOrders;
  final double retailPrice;

  MockedAuctionModel(
      {required this.logo,
      required this.trustStatuses,
      required this.location,
      required this.quantityOfOrders,
      required this.retailPrice});
}

abstract class MockedAutionData {
  static List<MockedAuctionModel> data = [
    MockedAuctionModel(
        logo: Images.logo1,
        trustStatuses: 2,
        location: "Цех058",
        quantityOfOrders: 40,
        retailPrice: 6.43),
    MockedAuctionModel(
        logo: Images.logo2,
        trustStatuses: 1,
        location: "Цех053",
        quantityOfOrders: 40,
        retailPrice: 6.43),
    MockedAuctionModel(
        logo: Images.logo3,
        trustStatuses: 0,
        location: "Цех051",
        quantityOfOrders: 40,
        retailPrice: 6.43),
    MockedAuctionModel(
        logo: Images.logo1,
        trustStatuses: 2,
        location: "Цех050",
        quantityOfOrders: 40,
        retailPrice: 6.43),
    MockedAuctionModel(
        logo: Images.logo2,
        trustStatuses: 1,
        location: "Цех048",
        quantityOfOrders: 40,
        retailPrice: 6.43)
  ];
}
