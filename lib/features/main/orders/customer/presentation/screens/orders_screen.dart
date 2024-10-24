import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/auction/data/mocked_aution_data.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_choise_widget.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_drawer.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/widgets/comment_column.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/widgets/custom_order_card.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:url_launcher/url_launcher.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;

  List<String> images = [Images.good1, Images.good2, Images.good1];
  int selectedIndex = 0;
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  final CarouselSliderController _carouselSliderController =
      CarouselSliderController();
  final List<MockedAuctionModel> data = MockedAutionData.data;
  List<TrackingStatus> mockData = TrackingStatusData.data;
  List<AddressesModel> mockAdressesData = Addresses.adresses;
  bool openedDetailedView = false;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Stack(children: [
            Positioned.fill(
              child: Column(
                children: [
                  Builder(
                    builder: (context) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomSearchWidget(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                            child: SvgPicture.asset(SvgImages.burgerMenu)),
                        CustomSearchWidget(
                            onTap: () {
                              GoRouter.of(context).pushNamed("searchScreen");
                              // GoRouter.of(context).pushNamed("searchScreen");
                            },
                            child: SvgPicture.asset(SvgImages.search))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.h, top: 10.h),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomChoiceWidget(
                            isSelelected: selectedIndex == 0,
                            text: "Все заказы",
                            onTap: () {
                              setState(() {
                                selectedIndex = 0;
                                _currentIndex = 0;
                              });
                              // Animate to the corresponding page in the PageView.
                              _pageController.animateToPage(0,
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.easeInOut);
                            },
                          ),
                          CustomChoiceWidget(
                            isSelelected: selectedIndex == 1,
                            text: "Завершенные",
                            onTap: () {
                              setState(() {
                                selectedIndex = 1;
                                _currentIndex = 0;
                              });
                              _pageController.animateToPage(1,
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.easeInOut);
                            },
                          ),
                          CustomChoiceWidget(
                            isSelelected: selectedIndex == 2,
                            text: "Пункты выдачи",
                            onTap: () {
                              setState(() {
                                selectedIndex = 2;
                                _currentIndex = 0;
                              });
                              _pageController.animateToPage(2,
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.easeInOut);
                            },
                          ),
                          CustomChoiceWidget(
                            isSelelected: selectedIndex == 3,
                            text: "Трекинг заказ",
                            onTap: () {
                              setState(() {
                                selectedIndex = 3;
                                _currentIndex = 0;
                              });
                              _pageController.animateToPage(3,
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.easeInOut);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(bottom: 70.h),
                    child: PageView(
                      controller: _pageController,
                      onPageChanged: (value) {
                        setState(() {
                          selectedIndex = value;

                          _currentIndex = 0;
                        });
                      },
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10.h),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(alignment: Alignment.center, children: [
                                    CarouselSlider.builder(
                                      carouselController:
                                          _carouselSliderController,
                                      itemCount: images.length,
                                      options: CarouselOptions(
                                        autoPlay: false,
                                        enlargeCenterPage: true,
                                        viewportFraction: 1,
                                        aspectRatio: 16 / 7,
                                        height: 300.h,
                                        onPageChanged: (indexCarousel, reason) {
                                          setState(() {
                                            _currentIndex = indexCarousel;
                                          });
                                        },
                                      ),
                                      itemBuilder:
                                          (context, caruselIndex, realIndex) {
                                        return Stack(children: [
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15.r),
                                              child: Image.asset(
                                                images[caruselIndex],
                                                fit: BoxFit.fill,
                                                width: double.infinity,
                                              )),
                                        ]);
                                      },
                                    ),
                                    Positioned(
                                      top: 10.h,
                                      left: 10.w,
                                      right: 10.w,
                                      child: Row(
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: 36.h,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        60.r)),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 14.w),
                                              child: Text(
                                                "Очень надежный",
                                                style: AppFonts.w400s16
                                                    .copyWith(
                                                        color: AppColors
                                                            .accentTextColor),
                                              ),
                                            ),
                                          ),
                                          // CircleAvatar(
                                          //   backgroundColor: Colors.white,
                                          //   radius: 20.r,
                                          //   child: SvgPicture.asset(
                                          //     SVGImages.chat,
                                          //     color: AppColors.accentTextColor,
                                          //   ),
                                          // ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10.h,
                                      child: DotsIndicator(
                                        dotsCount: images.length,
                                        position: _currentIndex,
                                        // position: _currentIndex.toDouble(),
                                        decorator: DotsDecorator(
                                            activeColor: Colors.white,
                                            size: Size(10.w, 10.h)),
                                      ),
                                    )
                                  ]),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Хлопковая блузка",
                                        style: AppFonts.w700s20.copyWith(
                                            color: AppColors.accentTextColor),
                                      ),
                                      Text(
                                        "825 штук",
                                        style: AppFonts.w400s16.copyWith(
                                            color: AppColors.accentTextColor),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.h),
                                    child: Text(
                                      "600 руб за единицу, итого 348 000 руб",
                                      style: AppFonts.w400s16.copyWith(),
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Размерный ряд",
                                        style: AppFonts.w400s16.copyWith(
                                            color: AppColors.accentTextColor),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 6.w),
                                        child:
                                            SvgPicture.asset(SvgImages.bottom),
                                      ),
                                    ],
                                  ),
                                  // ElevatedButton(
                                  //     onPressed: () {},
                                  //     child: const Text("data"))
                                ],
                              ),
                            ),
                          ),
                        ),
                        ListView.separated(
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 10.h,
                              );
                            },
                            itemCount: data.length,
                            itemBuilder: (context, index) {
                              final item = data[index];
                              return CustomOrderCard(
                                logo: item.logo,
                                location: item.location,
                                trustRating: item.trustStatuses,
                                rating: 4.96,
                                retailPrice: item.retailPrice,
                                retailPriceInRuble: 580,
                                quantityInApp: item.quantityOfOrders,
                              );
                            }),
                        ListView.separated(
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 10.h,
                              );
                            },
                            itemCount: mockAdressesData.length,
                            itemBuilder: (context, index) {
                              final currentItem = mockAdressesData[index];
                              return InkWell(
                                onTap: () =>
                                    launchUrl(Uri.parse(currentItem.url)),
                                child: Ink(
                                  decoration: BoxDecoration(
                                      color: AppColors.containersGrey,
                                      borderRadius:
                                          BorderRadius.circular(15.r)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Пункт выдачи Inposhiv",
                                              style: AppFonts.w400s16.copyWith(
                                                  color: AppColors
                                                      .accentTextColor),
                                            ),
                                            Text(
                                              currentItem.address,
                                              style: AppFonts.w400s16,
                                            )
                                          ],
                                        ),
                                        Image.asset(
                                            height: 20.h,
                                            width: 20.w,
                                            Images.mapgis)
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                        openedDetailedView
                            ? SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomSearchWidget(
                                        onTap: () {
                                          setState(() {
                                            openedDetailedView = false;
                                          });
                                        },
                                        child:
                                            SvgPicture.asset(SvgImages.goback)),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 20.h),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: AppColors.containersGrey,
                                            borderRadius:
                                                BorderRadius.circular(15.r)),
                                        child: Padding(
                                          padding: EdgeInsets.all(10.h),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Этап 2",
                                                style: AppFonts.w400s16,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 4.h),
                                                child: Text(
                                                  "Пошив",
                                                  style: AppFonts.w700s18,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 8.h),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15.r)),
                                                  child: CustomProgressBar(
                                                    progress: 0.5.toInt(),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10.h),
                                                child: SizedBox(
                                                  height: 65.h,
                                                  child: ListView.separated(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.r),
                                                          child: Image.asset(
                                                              Images.good1),
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return SizedBox(
                                                          width: 5.w,
                                                        );
                                                      },
                                                      itemCount: 3),
                                                ),
                                              ),
                                              Text(
                                                "Комментарии от производителя",
                                                style:
                                                    AppFonts.w400s14.copyWith(),
                                              ),
                                              const CommentColumn(
                                                comment:
                                                    "Все готово к началу производства",
                                                data: "18.04.2024",
                                              ),
                                              const CommentColumn(
                                                comment:
                                                    "Все готово к началу производства",
                                                data: "18.04.2024",
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10.h),
                                                child: CustomButton(
                                                  text: "Подтвердить",
                                                  onPressed: () {},
                                                  sizedTemporary: true,
                                                  height: 50,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            : Column(
                                children: [
                                  Text(
                                    "Отслеживайте ваш заказ ",
                                    style: AppFonts.w700s36,
                                  ),
                                  Expanded(
                                    child: ListView.separated(
                                        itemCount:
                                            TrackingStatusData.data.length,
                                        separatorBuilder: (context, index) =>
                                            const Divider(
                                              color: AppColors.borderColorGrey,
                                            ),
                                        itemBuilder: (context, index) {
                                          final currentItem = mockData[index];
                                          return Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 8.h,
                                                horizontal: 10.w),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  currentItem.steps,
                                                  style: AppFonts.w400s16.copyWith(
                                                      color: currentItem.isDone
                                                          ? AppColors
                                                              .accentTextColor
                                                          : AppColors
                                                              .regularGreyColor),
                                                ),
                                                SvgPicture.asset(
                                                  SvgImages.progress,
                                                  color: currentItem.isDone
                                                      ? AppColors
                                                          .accentTextColor
                                                      : AppColors
                                                          .regularGreyColor,
                                                )
                                              ],
                                            ),
                                          );
                                        }),
                                  )
                                ],
                              )
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                bottom: 10.h,
                child: selectedIndex == 3
                    ? CustomButton(
                        text: openedDetailedView
                            ? "Показать все этапы"
                            : "Показать подробно",
                        onPressed: () {
                          setState(() {
                            openedDetailedView =
                                openedDetailedView ? false : true;
                          });
                        })
                    : CustomButton(text: "Создать заказ", onPressed: () {}))
          ]),
        ),
      ),
    );
  }
}

class TrackingStatus {
  final String steps;
  bool isDone;
  TrackingStatus({this.isDone = false, required this.steps});
}

class AddressesModel {
  final String address;
  final String url;
  AddressesModel({required this.address, required this.url});
}

abstract class Addresses {
  static List<AddressesModel> adresses = [
    AddressesModel(address: "Манаса, 41а", url: "https://go.2gis.com/ugclb"),
    AddressesModel(address: "Манаса, 41а", url: "https://go.2gis.com/ugclb"),
    AddressesModel(address: "Манаса, 41а", url: "https://go.2gis.com/ugclb"),
    AddressesModel(address: "Манаса, 41а", url: "https://go.2gis.com/ugclb"),
    AddressesModel(address: "Манаса, 41а", url: "https://go.2gis.com/ugclb"),
    AddressesModel(address: "Манаса, 41а", url: "https://go.2gis.com/ugclb"),
    AddressesModel(address: "Манаса, 41а", url: "https://go.2gis.com/ugclb")
  ];
}

abstract class TrackingStatusData {
  static List<TrackingStatus> data = [
    TrackingStatus(steps: "Оплата первой части заказа", isDone: true),
    TrackingStatus(steps: "Закуп ткани и крой"),
    TrackingStatus(steps: "Пошив"),
    TrackingStatus(steps: "Отдел контроля качества"),
    TrackingStatus(steps: "Готово к отгрузке"),
    TrackingStatus(steps: "Отгружено"),
    TrackingStatus(steps: "Оплата второй части заказа"),
    TrackingStatus(steps: "Приемка заказа"),
  ];
}

class CustomProgressBar extends StatefulWidget {
  final String? text;
  final int progress;
  const CustomProgressBar({super.key, required this.progress, this.text});

  @override
  _CustomProgressBarState createState() => _CustomProgressBarState();
}

class _CustomProgressBarState extends State<CustomProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    _setAnimation();
    _animationController.forward();
  }

  @override
  void didUpdateWidget(CustomProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.progress != widget.progress) {
      _setAnimation();
      _animationController.forward(from: 0.0);
    }
  }

  void _setAnimation() {
    // Animate from the current progress to the new progress
    _animation = Tween<double>(
      begin: 0.0,
      end: (widget.progress.toDouble()) / 100.0,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.text ?? "",
            style: AppFonts.w400s14,
          ),
          SizedBox(height: 10.h),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.centerLeft,
            children: [
              // Linear Progress Bar Background
              Container(
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Container(
                    height: 8,
                    width: MediaQuery.of(context).size.width * _animation.value,
                    decoration: BoxDecoration(
                      color: AppColors.accentTextColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  );
                },
              ),
              // Animated Checkmark
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Positioned(
                    left: (MediaQuery.of(context).size.width - 40) *
                        _animation.value,
                    child: SvgPicture.asset(
                      SvgImages.check,
                      height: 20.h,
                      width: 20.w,
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
