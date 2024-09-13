import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/data/mocked_data.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_drawer.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/main_appbar.dart';
import 'package:inposhiv/resources/resources.dart';

class MainScreen extends StatefulWidget {
  final bool isFromSearch;
  const MainScreen({super.key, required this.isFromSearch});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final CarouselSliderController _carouselSliderController =
      CarouselSliderController();
  // int _currentIndex = 0;
  List<int> _currentIndexes = [];
  @override
  void initState() {
    _currentIndexes = List.filled(MockedCardData.cardsList.length, 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<CardsModel> data = MockedCardData.cardsList;
    return Scaffold(
      drawer: const CustomDrawer(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 5.h),
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const MainAppBar(),
              widget.isFromSearch
                  ? Padding(
                      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                      child: Text(
                        "По вашему поиску мы нашли 132 подходящих производителей",
                        style: AppFonts.w700s20.copyWith(
                          color: AppColors.accentTextColor,
                        ),
                      ),
                    )
                  : const SizedBox(),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: RefreshIndicator.adaptive(
                  onRefresh: () async {},
                  child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final item = data[index];
                        return Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: InkWell(
                            onTap: () {
                              GoRouter.of(context)
                                  .pushNamed("detailed", extra: item);
                            },
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
                                      itemCount: item.carouselImage.length,
                                      options: CarouselOptions(
                                        autoPlay: false,
                                        enlargeCenterPage: true,
                                        viewportFraction: 1,
                                        aspectRatio: 16 / 7,
                                        height: 300.h,
                                        onPageChanged: (indexCarousel, reason) {
                                          setState(() {
                                            _currentIndexes[index] =
                                                indexCarousel;
                                          });
                                        },
                                        // initialPage: 2,
                                      ),
                                      itemBuilder:
                                          (context, caruselIndex, realIndex) {
                                        return Stack(children: [
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15.r),
                                              child: Image.asset(
                                                  fit: BoxFit.fill,
                                                  // height: 350.h,
                                                  width: double.infinity,
                                                  item.carouselImage[
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
                                          CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 20.r,
                                            // ignore: deprecated_member_use
                                            child: SvgPicture.asset(
                                              SVGImages.chat,
                                              // ignore: deprecated_member_use
                                              color: AppColors.accentTextColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10.h,
                                      child: DotsIndicator(
                                        dotsCount: item.carouselImage.length,
                                        position: _currentIndexes[index],
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
                                          item.locaionName,
                                          style: AppFonts.w700s20.copyWith(
                                              color: AppColors.accentTextColor),
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
                                          item.rating.toString(),
                                          style: AppFonts.w700s16,
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    item.description,
                                    style: AppFonts.w400s16,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.h),
                                    child: Text(
                                      "Выполнено в Inposhiv ${item.quantity} заказов.",
                                      style: AppFonts.w400s16.copyWith(
                                          color: AppColors.accentTextColor),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ))
            ],
          ),
          Positioned(
              bottom: 10.h,
              left: 20.w,
              right: 20.w,
              child: CustomButton(text: "Создать заказ", onPressed: () {}))
        ]),
      )),
    );
  }
}
