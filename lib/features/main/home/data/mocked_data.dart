import 'package:inposhiv/resources/resources.dart';

class CardsModel {
  final String locaionName;
  final String description;
  final double rating;
  final int quantity;
  final List<String> carouselImage;

  const CardsModel(
      {required this.locaionName,
      required this.description,
      required this.rating,
      required this.carouselImage,
      required this.quantity});
}

abstract class MockedCardData {
  static const List<CardsModel> cardsList = [
    CardsModel(
        // image: Images.good1,
        carouselImage: [
          Images.good1,
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1,
        ],
        locaionName: "Цех052",
        description:
            "Швейный цех с многолетним опытом, современным оборудованием и мастерами, обеспечивающий качественный пошив.",
        rating: 4.96,
        quantity: 40),
    CardsModel(
        carouselImage: [
          Images.good2,
          Images.good1,
          Images.girl,
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1
        ],
        locaionName: "Цех05",
        description:
            "Швейный цех с многолетним опытом, современным оборудованием и мастерами, обеспечивающий качественный пошив.",
        rating: 4.96,
        quantity: 40),
    CardsModel(
        carouselImage: [
          Images.good1,
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1,
        ],
        locaionName: "Цех052",
        description:
            "Швейный цех с многолетним опытом, современным оборудованием и мастерами, обеспечивающий качественный пошив.",
        rating: 4.96,
        quantity: 40),
    CardsModel(
        carouselImage: [
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1
        ],
        locaionName: "Цех05",
        description:
            "Швейный цех с многолетним опытом, современным оборудованием и мастерами, обеспечивающий качественный пошив.",
        rating: 4.96,
        quantity: 40),
    CardsModel(
        carouselImage: [
          Images.good1,
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1,
        ],
        locaionName: "Цех052",
        description:
            "Швейный цех с многолетним опытом, современным оборудованием и мастерами, обеспечивающий качественный пошив.",
        rating: 4.96,
        quantity: 40),
    CardsModel(
        carouselImage: [
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1
        ],
        locaionName: "Цех05",
        description:
            "Швейный цех с многолетним опытом, современным оборудованием и мастерами, обеспечивающий качественный пошив.",
        rating: 4.96,
        quantity: 40),
    CardsModel(
        carouselImage: [
          Images.good1,
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1,
        ],
        locaionName: "Цех052",
        description:
            "Швейный цех с многолетним опытом, современным оборудованием и мастерами, обеспечивающий качественный пошив.",
        rating: 4.96,
        quantity: 40),
    CardsModel(
        carouselImage: [
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1
        ],
        locaionName: "Цех05",
        description:
            "Швейный цех с многолетним опытом, современным оборудованием и мастерами, обеспечивающий качественный пошив.",
        rating: 4.96,
        quantity: 40),
    CardsModel(
        carouselImage: [
          Images.good1,
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1,
        ],
        locaionName: "Цех052",
        description:
            "Швейный цех с многолетним опытом, современным оборудованием и мастерами, обеспечивающий качественный пошив.",
        rating: 4.96,
        quantity: 40),
    CardsModel(
        carouselImage: [
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1
        ],
        locaionName: "Цех05",
        description:
            "Швейный цех с многолетним опытом, современным оборудованием и мастерами, обеспечивающий качественный пошив.",
        rating: 4.96,
        quantity: 40),
    CardsModel(
        carouselImage: [
          Images.good1,
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1,
        ],
        locaionName: "Цех052",
        description:
            "Швейный цех с многолетним опытом, современным оборудованием и мастерами, обеспечивающий качественный пошив.",
        rating: 4.96,
        quantity: 40),
    CardsModel(
        carouselImage: [
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1
        ],
        locaionName: "Цех05",
        description:
            "Швейный цех с многолетним опытом, современным оборудованием и мастерами, обеспечивающий качественный пошив.",
        rating: 4.96,
        quantity: 40),
    CardsModel(
        carouselImage: [
          Images.good1,
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1,
        ],
        locaionName: "Цех052",
        description:
            "Швейный цех с многолетним опытом, современным оборудованием и мастерами, обеспечивающий качественный пошив.",
        rating: 4.96,
        quantity: 40),
    CardsModel(
        carouselImage: [
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1,
          Images.good2,
          Images.good1
        ],
        locaionName: "Цех05",
        description:
            "Швейный цех с многолетним опытом, современным оборудованием и мастерами, обеспечивающий качественный пошив.",
        rating: 4.96,
        quantity: 40),
  ];
}
