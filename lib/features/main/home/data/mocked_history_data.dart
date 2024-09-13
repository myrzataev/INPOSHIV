class MockedHistoryModel {
  final String nameOfGood;
  final String statusOfDeal;
  final int quantity;

  MockedHistoryModel(
      {required this.nameOfGood,
      required this.statusOfDeal,
      required this.quantity});
}

abstract class MockedHistoryData {
  static List<MockedHistoryModel> data = [
    MockedHistoryModel(
        nameOfGood: "Хлопковая блузка", statusOfDeal: "Успешно", quantity: 580),
    MockedHistoryModel(
        nameOfGood: "Льняная рубашка", statusOfDeal: "Возврат", quantity: 1920),
    MockedHistoryModel(
        nameOfGood: "Шелковая блузка", statusOfDeal: "Отказ", quantity: 500),
    MockedHistoryModel(
        nameOfGood: "Хлопковые худика", statusOfDeal: "Возврат", quantity: 240),
    MockedHistoryModel(
        nameOfGood: "Хлопковая блузка", statusOfDeal: "Успешно", quantity: 580),
    MockedHistoryModel(
        nameOfGood: "Льняная рубашка", statusOfDeal: "Возврат", quantity: 1920),
    MockedHistoryModel(
        nameOfGood: "Шелковая блузка", statusOfDeal: "Отказ", quantity: 500),
    MockedHistoryModel(
        nameOfGood: "Хлопковые худика", statusOfDeal: "Возврат", quantity: 240),
    MockedHistoryModel(
        nameOfGood: "Хлопковая блузка", statusOfDeal: "Успешно", quantity: 580),
    MockedHistoryModel(
        nameOfGood: "Льняная рубашка", statusOfDeal: "Возврат", quantity: 1920),
    MockedHistoryModel(
        nameOfGood: "Шелковая блузка", statusOfDeal: "Отказ", quantity: 500),
    MockedHistoryModel(
        nameOfGood: "Хлопковые худика", statusOfDeal: "Возврат", quantity: 240),
  ];
}
