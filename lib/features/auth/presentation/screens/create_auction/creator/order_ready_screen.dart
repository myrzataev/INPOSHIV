import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/providers/photo_provider.dart';
import 'package:inposhiv/features/auth/presentation/providers/size_provider.dart';
import 'package:inposhiv/features/auth/presentation/screens/create_auction/creator/set_quantity_screen.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:provider/provider.dart';

class OrderReadyScreen extends StatefulWidget {
  final String retailPrice;
  final String totalPriceInRuble;
  const OrderReadyScreen(
      {super.key, required this.retailPrice, required this.totalPriceInRuble});

  @override
  State<OrderReadyScreen> createState() => _OrderReadyScreenState();
}

class _OrderReadyScreenState extends State<OrderReadyScreen> {
  CarouselSliderController carouselController = CarouselSliderController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<XFile>? images =
        Provider.of<PhotoProvider>(context, listen: true).selectedPhotos;
    List<SizeModel> sizesVm =
        Provider.of<SizeProvider>(context, listen: true).sizes;
    int totalCount =
        Provider.of<SizeProvider>(context, listen: true).totalQuantity;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchWidget(
                onTap: () {
                  GoRouter.of(context).pop();
                },
                child: SvgPicture.asset(SvgImages.goback)),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text(
                "Ваш заказ готов!",
                style: AppFonts.w700s36
                    .copyWith(height: 0.8, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(alignment: Alignment.center, children: [
                    CarouselSlider.builder(
                      carouselController: carouselController,
                      itemCount: images?.length ?? 0,
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
                      itemBuilder: (context, caruselIndex, realIndex) {
                        return Stack(children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(15.r),
                              child: Image.file(
                                File(images?[caruselIndex].path ?? ""),
                                fit: BoxFit.fill,
                                height: 300.h,
                                width: double.infinity,
                              )),
                        ]);
                      },
                    ),
                    // Positioned(
                    //   top: 10.h,
                    //   left: 10.w,
                    //   right: 10.w,
                    //   child: Row(
                    //     // mainAxisAlignment:
                    //     //     MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Container(
                    //         alignment: Alignment.center,
                    //         height: 36.h,
                    //         decoration: BoxDecoration(
                    //             color: Colors.white,
                    //             borderRadius: BorderRadius.circular(60.r)),
                    //         child: Padding(
                    //           padding: EdgeInsets.symmetric(horizontal: 14.w),
                    //           child: Text(
                    //             "Очень надежный",
                    //             style: AppFonts.w400s16
                    //                 .copyWith(color: AppColors.accentTextColor),
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    Positioned(
                      bottom: 10.h,
                      child: DotsIndicator(
                        dotsCount: images?.length ?? 0,
                        position: _currentIndex,
                        // position: _currentIndex.toDouble(),
                        decorator: DotsDecorator(
                            activeColor: Colors.white, size: Size(10.w, 10.h)),
                      ),
                    )
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Хлопковая блузка",
                        style: AppFonts.w700s20
                            .copyWith(color: AppColors.accentTextColor),
                      ),
                      Text(
                        "$totalCount штук",
                        style: AppFonts.w400s16
                            .copyWith(color: AppColors.accentTextColor),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: Text(
                      "${widget.retailPrice} руб за единицу, итого ${widget.totalPriceInRuble} руб",
                      style: AppFonts.w400s16.copyWith(),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Размерный ряд",
                        style: AppFonts.w400s16
                            .copyWith(color: AppColors.accentTextColor),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.w),
                        child: SvgPicture.asset(SvgImages.bottom),
                      )
                    ],
                  ),
                  sizesVm.length > 1
                      ? Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: SizedBox(
                            height: 150.h,
                            child: GridView.builder(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisSpacing: 0,
                                        mainAxisExtent: 30.h,
                                        crossAxisCount: 2),
                                itemCount: sizesVm.length,
                                itemBuilder: (context, index) {
                                  return Text(
                                    "${sizesVm[index].usSize} (${sizesVm[index].ruSize}) – ${sizesVm[index].quantity}шт",
                                    style: AppFonts.w400s16.copyWith(
                                        color: AppColors.accentTextColor),
                                  );
                                }),
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
            const Spacer(),
            CustomButton(
                text: "Начать аукцион",
                onPressed: () {
                  context.goNamed("main", extra: true);
                })
          ],
        ),
      )),
    );
  }
}
