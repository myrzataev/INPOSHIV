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
import 'package:inposhiv/features/auth/presentation/widgets/custom_tabbar.dart';
import 'package:inposhiv/features/main/home/data/models/manufacturers_profile_model.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/screens/set_quantity_screen.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/data/feedback_mocked_data.dart';
import 'package:inposhiv/features/main/home/data/mocked_history_data.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/custom_appbar.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/custom_choise_widget.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/history_card.dart';
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

class _MainScreenState extends State<DetailedScreen>
    with SingleTickerProviderStateMixin {
  final CarouselSliderController _carouselSliderController =
      CarouselSliderController();
  int _currentIndex = 0;
  int selectedIndex = 0;
  int _carouselIndex = 0;
  bool isExpanded = false;

  late PageController _pageController;
  bool? isCustomer;
  final preferences = locator<SharedPreferences>();
  List<String> tabs = ["Профиль", "История заказов", "Отзывы"];
  late TabController _tabController;
  @override
  void initState() {
    isCustomer = preferences.getBool("isCustomer");
    _tabController = TabController(length: 3, vsync: this);

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
                      child: CustomTabBar(
                          tabController: _tabController, tabs: tabs))
                  : const SizedBox.shrink(),

              // Use PageView for smooth horizontal scrolling between tabs.
              // (isCustomer ?? true)
              Expanded(
                child: TabBarView(
                  controller: _tabController,
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
                                  itemCount: fullPhotoUrls.length,
                                  options: CarouselOptions(
                                    autoPlay: false,
                                    enlargeCenterPage: true,
                                    viewportFraction: 1,
                                    aspectRatio: 16 / 7,
                                    height: 300.h,
                                    onPageChanged: (indexCarousel, reason) {
                                      setState(() {
                                        _carouselIndex = indexCarousel;
                                      });
                                    },
                                  ),
                                  itemBuilder:
                                      (context, caruselIndex, realIndex) {
                                    return Stack(children: [
                                      ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15.r),
                                          child: fullPhotoUrls.isNotEmpty
                                              ? CachedNetworkImage(
                                                  progressIndicatorBuilder:
                                                      (context, url,
                                                              progress) =>
                                                          const Center(
                                                            child:
                                                                CircularProgressIndicator
                                                                    .adaptive(),
                                                          ),
                                                  fit: BoxFit.contain,
                                                  // height: 350.h,
                                                  width: double.infinity,
                                                  imageUrl: fullPhotoUrls[
                                                      caruselIndex])
                                              : Image.asset(Images.good1)),
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
                                            color: AppColors.accentTextColor,
                                            borderRadius:
                                                BorderRadius.circular(60.r)),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 14.w),
                                          child: Text(
                                            "Надежный",
                                            // widget.model.trustLevel ?? "",
                                            style: AppFonts.w400s16.copyWith(
                                                color:
                                                    Colors.white),
                                          ),
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
                                    position: _carouselIndex,
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
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5.w),
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
                                padding: EdgeInsets.symmetric(vertical: 10.h),
                                child: Text(
                                  "Выполнено в Inposhiv ${widget.model.orderHistory?.length ?? 0} заказов.",
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        widget.model.orderHistory?.isNotEmpty ?? false
                            ? Text(
                                "Выполнено в Inposhiv ${widget.model.orderHistory?.length ?? 0} заказов.",
                                style: AppFonts.w400s16.copyWith(
                                    color: AppColors.accentTextColor,
                                    fontFamily: "SF Pro"),
                              )
                            : const SizedBox.shrink(),
                        Expanded(
                          child: (widget.model.orderHistory?.isNotEmpty ??
                                  false)
                              ? ListView.separated(
                                  itemCount:
                                      widget.model.orderHistory?.length ?? 0,
                                  separatorBuilder: (context, index) {
                                    return const Divider();
                                  },
                                  itemBuilder: (context, index) {
                                    final currentItem =
                                        widget.model.orderHistory?[index];
                                    return Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10.h, horizontal: 10.w),
                                      child: CustomHistoryCard(
                                        nameOfGood:
                                            currentItem?.orderName ?? "",
                                        status: currentItem?.status ?? "",
                                        quantity: 40,
                                        startDate:
                                            currentItem?.createdAt.toString() ??
                                                "",
                                        endDate: "16.07.2024",
                                        index: index,
                                      ),
                                    );
                                  })
                              : Center(
                                  child: Text(
                                    "Производитель еще не выполнил ни один заказ через INPOSHIV",
                                    style: AppFonts.w700s18,
                                  ),
                                ),
                        ),
                      ],
                    ),
                    // Tab 3: Reviews content
                    CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Stack(alignment: Alignment.center, children: [
                              //   CarouselSlider.builder(
                              //     carouselController: _carouselSliderController,
                              //     itemCount: fullPhotoUrls?.length ?? 1,
                              //     options: CarouselOptions(
                              //       autoPlay: false,
                              //       enlargeCenterPage: true,
                              //       viewportFraction: 1,
                              //       aspectRatio: 16 / 7,
                              //       height: 300.h,
                              //       onPageChanged: (indexCarousel, reason) {
                              //         setState(() {
                              //           _currentIndex = indexCarousel;
                              //         });
                              //       },
                              //     ),
                              //     itemBuilder:
                              //         (context, caruselIndex, realIndex) {
                              //       return Stack(
                              //         children: [
                              //           ClipRRect(
                              //             borderRadius:
                              //                 BorderRadius.circular(15.r),
                              //             child: fullPhotoUrls.isNotEmpty
                              //                 ? CachedNetworkImage(
                              //                     fit: BoxFit.contain,
                              //                     width: double.infinity,
                              //                     imageUrl: fullPhotoUrls[
                              //                         caruselIndex],
                              //                   )
                              //                 : Image.asset(Images.good1),
                              //           ),
                              //         ],
                              //       );
                              //     },
                              //   ),
                              //   Positioned(
                              //     bottom: 10.h,
                              //     child: DotsIndicator(
                              //       dotsCount: (fullPhotoUrls.isNotEmpty &&
                              //               widget.model.photosUrls != null &&
                              //               (widget.model.photosUrls
                              //                       ?.isNotEmpty ??
                              //                   false))
                              //           ? fullPhotoUrls.length
                              //           : 1,
                              //       position: _currentIndex,
                              //       decorator: DotsDecorator(
                              //         activeColor: Colors.white,
                              //         size: Size(10.w, 10.h),
                              //       ),
                              //     ),
                              //   )
                              // ]),
                              // Remove Expanded and replace with Flexible
                              Padding(
                                padding: EdgeInsets.only(top: 10.h),
                                child: (widget.model.reviews?.isNotEmpty ??
                                        false)
                                    ? ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap:
                                            true, // Allows ListView to wrap its content
                                        physics:
                                            const NeverScrollableScrollPhysics(), // Disable its own scroll
                                        itemCount:
                                            widget.model.reviews?.length ?? 0,
                                        itemBuilder: (context, index) {
                                          final currentItem =
                                              widget.model.reviews?[index];
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
                                                      currentItem
                                                              ?.customerUuid ??
                                                          "",
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
                                                      currentItem?.rating
                                                              .toString() ??
                                                          "5.0",
                                                      style: AppFonts.w700s16,
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 10.h),
                                                  child: Text(
                                                    currentItem?.reviewText ??
                                                        "",
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
                                      )
                                    : SizedBox(
                                      height: 600.h,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .center, // Center vertically
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "У производителя еще нет ни одного отзыва",
                                              style: AppFonts.w700s18,
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
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
              // : Padding(
              //     padding: EdgeInsets.only(top: 10.h),
              //     child: SingleChildScrollView(
              //       scrollDirection: Axis.vertical,
              //       child: Padding(
              //         padding: EdgeInsets.only(bottom: 10.h),
              //         child: Container(
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(20.r)),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Stack(alignment: Alignment.center, children: [
              //                 CarouselSlider.builder(
              //                   carouselController:
              //                       _carouselSliderController,
              //                   itemCount: fullPhotoUrls?.length ?? 1,
              //                   options: CarouselOptions(
              //                     autoPlay: false,
              //                     enlargeCenterPage: true,
              //                     viewportFraction: 1,
              //                     aspectRatio: 16 / 7,
              //                     height: 300.h,
              //                     onPageChanged: (indexCarousel, reason) {
              //                       setState(() {
              //                         _currentIndex = indexCarousel;
              //                       });
              //                     },
              //                   ),
              //                   itemBuilder:
              //                       (context, caruselIndex, realIndex) {
              //                     return Stack(children: [
              //                       ClipRRect(
              //                           borderRadius:
              //                               BorderRadius.circular(15.r),
              //                           child: Image.asset(
              //                               fit: BoxFit.fill,
              //                               width: double.infinity,
              //                               widget.model.photosUrls?[
              //                                       caruselIndex] ??
              //                                   "")),
              //                     ]);
              //                   },
              //                 ),
              //                 Positioned(
              //                   top: 10.h,
              //                   left: 10.w,
              //                   right: 10.w,
              //                   child: Row(
              //                     mainAxisAlignment:
              //                         MainAxisAlignment.spaceBetween,
              //                     children: [
              //                       Container(
              //                         alignment: Alignment.center,
              //                         height: 36.h,
              //                         decoration: BoxDecoration(
              //                             color: Colors.white,
              //                             borderRadius:
              //                                 BorderRadius.circular(60.r)),
              //                         child: Padding(
              //                           padding: EdgeInsets.symmetric(
              //                               horizontal: 14.w),
              //                           child: Text(
              //                             "Очень надежный",
              //                             style: AppFonts.w400s16.copyWith(
              //                                 color: AppColors
              //                                     .accentTextColor),
              //                           ),
              //                         ),
              //                       ),
              //                       CircleAvatar(
              //                         backgroundColor: Colors.white,
              //                         radius: 20.r,
              //                         child: SvgPicture.asset(
              //                           SvgImages.chat,
              //                           color: AppColors.accentTextColor,
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //                 Positioned(
              //                   bottom: 10.h,
              //                   child: DotsIndicator(
              //                     dotsCount: (fullPhotoUrls.isNotEmpty &&
              //                             widget.model.photosUrls != null &&
              //                             (widget.model.photosUrls
              //                                     ?.isNotEmpty ??
              //                                 false))
              //                         ? fullPhotoUrls.length
              //                         : 1,
              //                     position: _currentIndex,
              //                     // position: _currentIndex.toDouble(),
              //                     decorator: DotsDecorator(
              //                         activeColor: Colors.white,
              //                         size: Size(10.w, 10.h)),
              //                   ),
              //                 )
              //               ]),
              //               Padding(
              //                 padding: EdgeInsets.symmetric(vertical: 10.h),
              //                 child: Row(
              //                   children: [
              //                     Text(
              //                       widget.model.companyName ?? "",
              //                       style: AppFonts.w700s20.copyWith(
              //                           color: AppColors.accentTextColor),
              //                     ),
              //                     const Spacer(),
              //                     (isCustomer ?? true)
              //                         ? Text(
              //                             "825 штук",
              //                             style: AppFonts.w400s16.copyWith(
              //                                 color: AppColors
              //                                     .accentTextColor),
              //                           )
              //                         : Padding(
              //                             padding: EdgeInsets.symmetric(
              //                                 horizontal: 5.w),
              //                             child: SvgPicture.asset(
              //                               SvgImages.star,
              //                               height: 16.h,
              //                               width: 16.w,
              //                             ),
              //                           ),
              //                     (isCustomer ?? true)
              //                         ? const SizedBox.shrink()
              //                         : Text(
              //                             "${widget.model.rating}",
              //                             style: AppFonts.w700s16,
              //                           )
              //                   ],
              //                 ),
              //               ),
              //               Text(
              //                 (isCustomer ?? true)
              //                     ? "600 руб за единицу, итого 348 000 руб"
              //                     : widget.model.companyDescription ?? "",
              //                 style: AppFonts.w400s16,
              //               ),
              //               (isCustomer ?? true)
              //                   ? Column(
              //                       children: [
              //                         InkWell(
              //                           onTap: () {
              //                             setState(() {
              //                               isExpanded = !isExpanded;
              //                             });
              //                           },
              //                           child: Row(
              //                             crossAxisAlignment:
              //                                 CrossAxisAlignment.center,
              //                             mainAxisSize: MainAxisSize.max,
              //                             children: [
              //                               Text(
              //                                 "Размерный ряд",
              //                                 style: AppFonts.w400s16
              //                                     .copyWith(
              //                                         color: AppColors
              //                                             .accentTextColor),
              //                               ),
              //                               Padding(
              //                                 padding: EdgeInsets.only(
              //                                     left: 6.w),
              //                                 child: RotatedBox(
              //                                   quarterTurns:
              //                                       isExpanded ? 2 : 0,
              //                                   child: SvgPicture.asset(
              //                                       SvgImages.bottom),
              //                                 ),
              //                               )
              //                             ],
              //                           ),
              //                         ),
              //                         AnimatedSize(
              //                           duration: const Duration(
              //                               milliseconds: 300),
              //                           curve: Curves.fastOutSlowIn,
              //                           child: isExpanded
              //                               ? GridView.builder(
              //                                   shrinkWrap: true,
              //                                   gridDelegate:
              //                                       SliverGridDelegateWithFixedCrossAxisCount(
              //                                           mainAxisSpacing: 0,
              //                                           mainAxisExtent:
              //                                               30.h,
              //                                           crossAxisCount: 2),
              //                                   itemCount:
              //                                       sizesVm.length ?? 1,
              //                                   itemBuilder:
              //                                       (context, index) {
              //                                     return Text(
              //                                       "${sizesVm[index].usSize} (${sizesVm[index].ruSize}) – ${sizesVm[index].quantity}шт",
              //                                       style: AppFonts.w400s16
              //                                           .copyWith(
              //                                               color: AppColors
              //                                                   .accentTextColor),
              //                                     );
              //                                   })
              //                               : const SizedBox.shrink(),
              //                         ),
              //                       ],
              //                     )
              //                   : Padding(
              //                       padding: EdgeInsets.symmetric(
              //                           vertical: 10.h),
              //                       child: Text(
              //                         "Выполнено в Inposhiv ${50} заказов.",
              //                         style: AppFonts.w400s16.copyWith(
              //                             color: AppColors.accentTextColor),
              //                       ),
              //                     )
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
            ],
          ),
        )),
        // Positioned(
        //     bottom: 20.h,
        //     left: 20.w,
        //     right: 20.w,
        //     child: CustomButton(
        //         text: isCustomer == 0
        //             ? "Участвовать"
        //             : "Связаться с производителем",
        //         onPressed: () {}))
      ]),
    );
  }
}
