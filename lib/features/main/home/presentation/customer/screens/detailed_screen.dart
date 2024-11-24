import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/providers/size_provider.dart';
import 'package:inposhiv/features/main/home/data/models/manufacturers_profile_model.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/screens/set_quantity_screen.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/data/feedback_mocked_data.dart';
import 'package:inposhiv/features/main/home/data/mocked_history_data.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_appbar.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_choise_widget.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/history_card.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailedScreen extends StatefulWidget {
  final ManufacturersProfileModel model;
  const DetailedScreen({super.key, required this.model});

  @override
  State<DetailedScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<DetailedScreen> {
  final CarouselSliderController _carouselSliderController =
      CarouselSliderController();
  int _currentIndex = 0;
  int selectedIndex = 0;
  int _carouselIndex = 0;
  bool isExpanded = false;
  final ValueNotifier<int> selectedIndexNotifier = ValueNotifier<int>(0);
  late PageController _pageController;
  bool? isCustomer;
  final preferences = locator<SharedPreferences>();
  List<String> tabs = ["Профиль", "История заказов", "Отзывы"];
  @override
  void initState() {
    isCustomer = preferences.getBool("isCustomer");

    _pageController =
        PageController(initialPage: _currentIndex, keepPage: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isAndroid = Platform.isAndroid;
    List<MockedHistoryModel> historyList = MockedHistoryData.data;
    List<FeedbackMockedModel> mockedFeedbackData = FeedbackMockedData.data;
    final List<String> fullPhotoUrls = widget.model.photosUrls
            ?.map((url) => "${UrlRoutes.baseUrl}$url")
            .toList() ??
        [];
    List<SizeModelWithController> sizesVm =
        Provider.of<SizeProvider>(context, listen: true).sizes;
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
              (isCustomer ?? true)
                  ? Padding(
                      padding: EdgeInsets.only(bottom: 20.h, top: 10.h),
                      child: SizedBox(
                        height: 55.h,
                        child: ValueListenableBuilder(
                          valueListenable: selectedIndexNotifier,
                          builder: (context, selectedIndex, child) =>
                              ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: tabs.length,
                                  itemBuilder: (context, index) {
                                    return CustomChoiceWidget(
                                      isSelelected: selectedIndex == index,
                                      text: tabs[index],
                                      onTap: () {
                                        if (selectedIndexNotifier.value !=
                                            index) {
                                          selectedIndexNotifier.value = index;
                                          _pageController.animateToPage(
                                            index,
                                            duration: const Duration(
                                                milliseconds: 200),
                                            curve: Curves.easeInOut,
                                          );
                                        }
                                      },
                                    );
                                  }),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),

              // Use PageView for smooth horizontal scrolling between tabs.
              (isCustomer ?? true)
                  ? Expanded(
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
                                    Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CarouselSlider.builder(
                                            carouselController:
                                                _carouselSliderController,
                                            itemCount: fullPhotoUrls.length,
                                            options: CarouselOptions(
                                              autoPlay: false,
                                              enlargeCenterPage: true,
                                              viewportFraction: 1,
                                              aspectRatio: 16 / 7,
                                              height: 300.h,
                                              onPageChanged:
                                                  (indexCarousel, reason) {
                                                setState(() {
                                                  _carouselIndex =
                                                      indexCarousel;
                                                });
                                              },
                                            ),
                                            itemBuilder: (context, caruselIndex,
                                                realIndex) {
                                              return Stack(children: [
                                                ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.r),
                                                    child: fullPhotoUrls
                                                            .isNotEmpty
                                                        ? CachedNetworkImage(
                                                            progressIndicatorBuilder:
                                                                (context, url,
                                                                        progress) =>
                                                                    const Center(
                                                                      child: CircularProgressIndicator
                                                                          .adaptive(),
                                                                    ),
                                                            fit: BoxFit.contain,
                                                            // height: 350.h,
                                                            width:
                                                                double.infinity,
                                                            imageUrl:
                                                                fullPhotoUrls[
                                                                    caruselIndex])
                                                        : Image.asset(
                                                            Images.good1)),
                                              ]);
                                            },
                                          ),
                                          Positioned(
                                            top: 10.h,
                                            left: 10.w,
                                            right: 10.w,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 14.w),
                                                    child: Text(
                                                      widget.model.trustLevel ??
                                                          "",
                                                      style: AppFonts.w400s16
                                                          .copyWith(
                                                              color: AppColors
                                                                  .accentTextColor),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 10.h,
                                            child: DotsIndicator(
                                              dotsCount: (fullPhotoUrls
                                                          .isNotEmpty &&
                                                      widget.model.photosUrls !=
                                                          null &&
                                                      (widget.model.photosUrls
                                                              ?.isNotEmpty ??
                                                          false))
                                                  ? fullPhotoUrls.length
                                                  : 1,
                                              position: _carouselIndex,
                                              decorator: DotsDecorator(
                                                  activeColor: Colors.white,
                                                  size: Size(10.w, 10.h)),
                                            ),
                                          )
                                        ]),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.h),
                                      child: Row(
                                        children: [
                                          Text(
                                            widget.model.companyName ?? "",
                                            style: AppFonts.w700s20.copyWith(
                                                color:
                                                    AppColors.accentTextColor),
                                          ),
                                          const Spacer(),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5.w),
                                            child: SvgPicture.asset(
                                              SvgImages.star,
                                              height: 16.h,
                                              width: 16.w,
                                            ),
                                          ),
                                          Text(
                                            widget.model.rating.toString(),
                                            style: AppFonts.w700s16,
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      widget.model.companyDescription ?? "",
                                      style: AppFonts.w400s16,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.h),
                                      child: Text(
                                        "Выполнено в Inposhiv ${40} заказов.",
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
                                "Выполнено в Inposhiv ${40} заказов.",
                                style: AppFonts.w400s16.copyWith(
                                    color: AppColors.accentTextColor,
                                    fontFamily: "SF Pro"),
                              ),
                              Expanded(
                                child: ListView.separated(
                                    itemCount: historyList.length ?? 1,
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
                                    Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CarouselSlider.builder(
                                            carouselController:
                                                _carouselSliderController,
                                            itemCount:
                                                fullPhotoUrls?.length ?? 1,
                                            options: CarouselOptions(
                                              autoPlay: false,
                                              enlargeCenterPage: true,
                                              viewportFraction: 1,
                                              aspectRatio: 16 / 7,
                                              height: 300.h,
                                              onPageChanged:
                                                  (indexCarousel, reason) {
                                                setState(() {
                                                  _currentIndex = indexCarousel;
                                                });
                                              },
                                            ),
                                            itemBuilder: (context, caruselIndex,
                                                realIndex) {
                                              return Stack(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.r),
                                                    child: fullPhotoUrls
                                                            .isNotEmpty
                                                        ? CachedNetworkImage(
                                                            fit: BoxFit.fill,
                                                            width:
                                                                double.infinity,
                                                            imageUrl:
                                                                fullPhotoUrls[
                                                                    caruselIndex],
                                                          )
                                                        : Image.asset(
                                                            Images.good1),
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                          Positioned(
                                            bottom: 10.h,
                                            child: DotsIndicator(
                                              dotsCount: (fullPhotoUrls
                                                          .isNotEmpty &&
                                                      widget.model.photosUrls !=
                                                          null &&
                                                      (widget.model.photosUrls
                                                              ?.isNotEmpty ??
                                                          false))
                                                  ? fullPhotoUrls.length
                                                  : 1,
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
                                        itemCount:
                                            mockedFeedbackData.length ?? 1,
                                        itemBuilder: (context, index) {
                                          final FeedbackMockedModel
                                              currentItem =
                                              mockedFeedbackData[index];
                                          return Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 10.h),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      currentItem.feedBacks[0]
                                                          .userName,
                                                      style: AppFonts.w700s20
                                                          .copyWith(
                                                              color: AppColors
                                                                  .accentTextColor),
                                                    ),
                                                    const Spacer(),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 5.w),
                                                      child: SvgPicture.asset(
                                                        SvgImages.star,
                                                        height: 16.h,
                                                        width: 16.w,
                                                      ),
                                                    ),
                                                    Text(
                                                      currentItem.feedBacks
                                                          .first.rating
                                                          .toString(),
                                                      style: AppFonts.w700s16,
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 10.h),
                                                  child: Text(
                                                    currentItem
                                                        .feedBacks[0].feedBack,
                                                    style: AppFonts.w400s16
                                                        .copyWith(
                                                            fontFamily:
                                                                "SF Pro"),
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
                    )
                  : Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: SingleChildScrollView(
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
                                    itemCount: fullPhotoUrls?.length ?? 1,
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
                                                widget.model.photosUrls?[
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
                                                  color: AppColors
                                                      .accentTextColor),
                                            ),
                                          ),
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 20.r,
                                          child: SvgPicture.asset(
                                            SvgImages.chat,
                                            color: AppColors.accentTextColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10.h,
                                    child: DotsIndicator(
                                      dotsCount: (fullPhotoUrls.isNotEmpty &&
                                              widget.model.photosUrls != null &&
                                              (widget.model.photosUrls
                                                      ?.isNotEmpty ??
                                                  false))
                                          ? fullPhotoUrls.length
                                          : 1,
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
                                        widget.model.companyName ?? "",
                                        style: AppFonts.w700s20.copyWith(
                                            color: AppColors.accentTextColor),
                                      ),
                                      const Spacer(),
                                      (isCustomer ?? true)
                                          ? Text(
                                              "825 штук",
                                              style: AppFonts.w400s16.copyWith(
                                                  color: AppColors
                                                      .accentTextColor),
                                            )
                                          : Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5.w),
                                              child: SvgPicture.asset(
                                                SvgImages.star,
                                                height: 16.h,
                                                width: 16.w,
                                              ),
                                            ),
                                      (isCustomer ?? true)
                                          ? const SizedBox.shrink()
                                          : Text(
                                              "${widget.model.rating}",
                                              style: AppFonts.w700s16,
                                            )
                                    ],
                                  ),
                                ),
                                Text(
                                  (isCustomer ?? true)
                                      ? "600 руб за единицу, итого 348 000 руб"
                                      : widget.model.companyDescription,
                                  style: AppFonts.w400s16,
                                ),
                                (isCustomer ?? true)
                                    ? Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                isExpanded = !isExpanded;
                                              });
                                            },
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Размерный ряд",
                                                  style: AppFonts.w400s16
                                                      .copyWith(
                                                          color: AppColors
                                                              .accentTextColor),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 6.w),
                                                  child: RotatedBox(
                                                    quarterTurns:
                                                        isExpanded ? 2 : 0,
                                                    child: SvgPicture.asset(
                                                        SvgImages.bottom),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          AnimatedSize(
                                            duration: const Duration(
                                                milliseconds: 300),
                                            curve: Curves.fastOutSlowIn,
                                            child: isExpanded
                                                ? GridView.builder(
                                                    shrinkWrap: true,
                                                    gridDelegate:
                                                        SliverGridDelegateWithFixedCrossAxisCount(
                                                            mainAxisSpacing: 0,
                                                            mainAxisExtent:
                                                                30.h,
                                                            crossAxisCount: 2),
                                                    itemCount:
                                                        sizesVm.length ?? 1,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Text(
                                                        "${sizesVm[index].usSize} (${sizesVm[index].ruSize}) – ${sizesVm[index].quantity}шт",
                                                        style: AppFonts.w400s16
                                                            .copyWith(
                                                                color: AppColors
                                                                    .accentTextColor),
                                                      );
                                                    })
                                                : const SizedBox.shrink(),
                                          ),
                                        ],
                                      )
                                    : Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.h),
                                        child: Text(
                                          "Выполнено в Inposhiv ${50} заказов.",
                                          style: AppFonts.w400s16.copyWith(
                                              color: AppColors.accentTextColor),
                                        ),
                                      )
                              ],
                            ),
                          ),
                        ),
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
                text: isCustomer == 0
                    ? "Участвовать"
                    : "Связаться с производителем",
                onPressed: () {}))
      ]),
    );
  }
}
