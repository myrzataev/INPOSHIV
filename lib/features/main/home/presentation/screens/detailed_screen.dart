import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/data/feedback_mocked_data.dart';
import 'package:inposhiv/features/main/home/data/mocked_data.dart';
import 'package:inposhiv/features/main/home/data/mocked_history_data.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_appbar.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_choise_widget.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/history_card.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/money_widget.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';

class DetailedScreen extends StatefulWidget {
  final CardsModel model;
  const DetailedScreen({super.key, required this.model});

  @override
  State<DetailedScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<DetailedScreen> {
  final CarouselSliderController _carouselSliderController =
      CarouselSliderController();
  int _currentIndex = 0;
  int selectedIndex = 0;

  // Add a PageController for handling page transitions.
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    bool isAndroid = Platform.isAndroid;
    List<MockedHistoryModel> historyList = MockedHistoryData.data;
    List<FeedbackMockedModel> mockedFeedbackData = FeedbackMockedData.data;

    return Scaffold(
      body: Stack(children: [
        SafeArea(
            child: Padding(
          padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
              top: 5.h,
              bottom: isAndroid ? 70.h : 50.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CustomAppBar(),
              Padding(
                padding: EdgeInsets.only(bottom: 20.h, top: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomChoiceWidget(
                      isSelelected: selectedIndex == 0,
                      text: "Профиль",
                      onTap: () {
                        setState(() {
                          selectedIndex = 0;
                        });
                        // Animate to the corresponding page in the PageView.
                        _pageController.animateToPage(0,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInOut);
                      },
                    ),
                    CustomChoiceWidget(
                      isSelelected: selectedIndex == 1,
                      text: "История заказов",
                      onTap: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                        _pageController.animateToPage(1,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInOut);
                      },
                    ),
                    CustomChoiceWidget(
                      isSelelected: selectedIndex == 2,
                      text: "Отзывы",
                      onTap: () {
                        setState(() {
                          selectedIndex = 2;
                        });
                        _pageController.animateToPage(2,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInOut);
                      },
                    ),
                  ],
                ),
              ),

              // Use PageView for smooth horizontal scrolling between tabs.
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      selectedIndex = index;
                      _currentIndex = 0;
                    });
                  },
                  children: [
                    // Tab 1: Profile content
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
                                  carouselController: _carouselSliderController,
                                  itemCount: widget.model.carouselImage.length,
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
                                              fit: BoxFit.fill,
                                              width: double.infinity,
                                              widget.model.carouselImage[
                                                  caruselIndex])),
                                    ]);
                                  },
                                ),
                                Positioned(
                                  top: 10.h,
                                  left: 10.w,
                                  right: 10.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 36.h,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(60.r)),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 14.w),
                                          child: Text(
                                            "Очень надежный",
                                            style: AppFonts.w400s16.copyWith(
                                                color:
                                                    AppColors.accentTextColor),
                                          ),
                                        ),
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 20.r,
                                        child: SvgPicture.asset(
                                          SVGImages.chat,
                                          color: AppColors.accentTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 10.h,
                                  child: DotsIndicator(
                                    dotsCount:
                                        widget.model.carouselImage.length,
                                    position: _currentIndex,
                                    // position: _currentIndex.toDouble(),
                                    decorator: DotsDecorator(
                                        activeColor: Colors.white,
                                        size: Size(10.w, 10.h)),
                                  ),
                                )
                              ]),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.h),
                                child: Row(
                                  children: [
                                    Text(
                                      widget.model.locaionName,
                                      style: AppFonts.w700s20.copyWith(
                                          color: AppColors.accentTextColor),
                                    ),
                                    const Spacer(),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5.w),
                                      child: SvgPicture.asset(
                                        SVGImages.star,
                                        height: 16.h,
                                        width: 16.w,
                                      ),
                                    ),
                                    Text(
                                      "${widget.model.rating}",
                                      style: AppFonts.w700s16,
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                widget.model.description,
                                style: AppFonts.w400s16,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.h),
                                child: Text(
                                  "Выполнено в Inposhiv ${widget.model.quantity} заказов.",
                                  style: AppFonts.w400s16.copyWith(
                                      color: AppColors.accentTextColor),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Tab 2: Order history content
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Выполнено в Inposhiv ${widget.model.quantity} заказов.",
                          style: AppFonts.w400s16.copyWith(
                              color: AppColors.accentTextColor,
                              fontFamily: "SF Pro"),
                        ),
                        Expanded(
                          child: ListView.separated(
                              itemCount: historyList.length,
                              separatorBuilder: (context, index) {
                                return const Divider();
                              },
                              itemBuilder: (context, index) {
                                final MockedHistoryModel currentItem =
                                    historyList[index];
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10.h, horizontal: 10.w),
                                  child: CustomHistoryCard(
                                    nameOfGood: currentItem.nameOfGood,
                                    status: currentItem.statusOfDeal,
                                    quantity: currentItem.quantity,
                                    startDate: "22.06.2024",
                                    endDate: "16.07.2024",
                                    index: index,
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                    // Tab 3: Reviews content
                    CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: Column(
                            children: [
                              Stack(alignment: Alignment.center, children: [
                                CarouselSlider.builder(
                                  carouselController: _carouselSliderController,
                                  itemCount: widget.model.carouselImage.length,
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
                                    return Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15.r),
                                          child: Image.asset(
                                            fit: BoxFit.fill,
                                            width: double.infinity,
                                            widget.model
                                                .carouselImage[caruselIndex],
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                                Positioned(
                                  bottom: 10.h,
                                  child: DotsIndicator(
                                    dotsCount:
                                        widget.model.carouselImage.length,
                                    position: _currentIndex,
                                    decorator: DotsDecorator(
                                      activeColor: Colors.white,
                                      size: Size(10.w, 10.h),
                                    ),
                                  ),
                                )
                              ]),
                              // Remove Expanded and replace with Flexible
                              Padding(
                                padding: EdgeInsets.only(top: 10.h),
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap:
                                      true, // Allows ListView to wrap its content
                                  physics:
                                      const NeverScrollableScrollPhysics(), // Disable its own scroll
                                  itemCount: mockedFeedbackData.length,
                                  itemBuilder: (context, index) {
                                    final FeedbackMockedModel currentItem =
                                        mockedFeedbackData[index];
                                    return Padding(
                                      padding: EdgeInsets.only(bottom: 10.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                currentItem
                                                    .feedBacks[0].userName,
                                                style: AppFonts.w700s20
                                                    .copyWith(
                                                        color: AppColors
                                                            .accentTextColor),
                                              ),
                                              const Spacer(),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 5.w),
                                                child: SvgPicture.asset(
                                                  SVGImages.star,
                                                  height: 16.h,
                                                  width: 16.w,
                                                ),
                                              ),
                                              Text(
                                                currentItem
                                                    .feedBacks.first.rating
                                                    .toString(),
                                                style: AppFonts.w700s16,
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 10.h),
                                            child: Text(
                                              currentItem.feedBacks[0].feedBack,
                                              style: AppFonts.w400s16.copyWith(
                                                  fontFamily: "SF Pro"),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )),
        Positioned(
            bottom: 20.h,
            left: 20.w,
            right: 20.w,
            child: CustomButton(
                text: "Связаться с производителем", onPressed: () {}))
      ]),
    );
  }
}
