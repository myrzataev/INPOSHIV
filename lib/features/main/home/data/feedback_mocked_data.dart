import 'package:inposhiv/resources/resources.dart';

class FeedbackMockedModel {
  final List<String> carouselPhotos;
  final List<PersonsFeedBack> feedBacks;

  FeedbackMockedModel({required this.carouselPhotos, required this.feedBacks});
}

class PersonsFeedBack {
  final String userName;
  final String feedBack;
  final double rating;
  PersonsFeedBack(
      {required this.userName, required this.feedBack, required this.rating});
}

abstract class FeedbackMockedData {
  static List<FeedbackMockedModel> data = [
    FeedbackMockedModel(carouselPhotos: [
      Images.girl,
      Images.good1,
      Images.good2
    ], feedBacks: [
      PersonsFeedBack(
          userName: "Ryan Gosling",
          feedBack:
              "Отличный швейный цех! Качество пошива на высоте, все заказы выполняют быстро и аккуратно. Рекомендую!",
          rating: 4.96)
    ]),
    FeedbackMockedModel(carouselPhotos: [
      Images.girl,
      Images.good1,
      Images.good2
    ], feedBacks: [
      PersonsFeedBack(
          userName: "Denzel Washington",
          feedBack:
              "Хороший швейный цех. Качество в целом устраивает, но иногда бывают небольшие задержки с заказами.",
          rating: 3.52)
    ]),
    FeedbackMockedModel(carouselPhotos: [
      Images.girl,
      Images.good1,
      Images.good2
    ], feedBacks: [
      PersonsFeedBack(
          userName: "Ryan Gosling",
          feedBack:
              "Отличный швейный цех! Качество пошива на высоте, все заказы выполняют быстро и аккуратно. Рекомендую!",
          rating: 4.96)
    ]),
    FeedbackMockedModel(carouselPhotos: [
      Images.girl,
      Images.good1,
      Images.good2
    ], feedBacks: [
      PersonsFeedBack(
          userName: "Denzel Washington",
          feedBack:
              "Хороший швейный цех. Качество в целом устраивает, но иногда бывают небольшие задержки с заказами.",
          rating: 3.52)
    ]),
    FeedbackMockedModel(carouselPhotos: [
      Images.girl,
      Images.good1,
      Images.good2
    ], feedBacks: [
      PersonsFeedBack(
          userName: "Ryan Gosling",
          feedBack:
              "Отличный швейный цех! Качество пошива на высоте, все заказы выполняют быстро и аккуратно. Рекомендую!",
          rating: 4.96)
    ]),
    FeedbackMockedModel(carouselPhotos: [
      Images.girl,
      Images.good1,
      Images.good2
    ], feedBacks: [
      PersonsFeedBack(
          userName: "Denzel Washington",
          feedBack:
              "Хороший швейный цех. Качество в целом устраивает, но иногда бывают небольшие задержки с заказами.",
          rating: 3.52)
    ]),
  ];
}
