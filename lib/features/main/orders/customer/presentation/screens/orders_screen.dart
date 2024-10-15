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
import 'package:inposhiv/features/main/orders/customer/presentation/widgets/custom_order_card.dart';
import 'package:inposhiv/resources/resources.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  List<String> images = [Images.good1, Images.good2, Images.good1];
  int selectedIndex = 0;
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  final CarouselSliderController _carouselSliderController =
      CarouselSliderController();
  final List<MockedAuctionModel> data = MockedAutionData.data;

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
                            isSelelected: selectedIndex == 4,
                            text: "Трекинг заказ",
                            onTap: () {
                              setState(() {
                                selectedIndex = 4;
                                _currentIndex = 0;
                              });
                              _pageController.animateToPage(4,
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
                        Column(
                          children: [
                            Text(
                              "Отслеживайте ваш заказ ",
                              style: AppFonts.w700s36,
                            ),
                            ListView.builder(

                              itemBuilder: (context, index){})
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
                child: CustomButton(text: "Создать заказ", onPressed: () {}))
          ]),
        ),
      ),
    );
  }
}
// class TrackingStatusData