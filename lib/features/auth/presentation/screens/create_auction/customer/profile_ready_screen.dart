import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
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

class ProfileReadyScreen extends StatefulWidget {
  final String descriptionOfCompany;
  const ProfileReadyScreen({super.key, required this.descriptionOfCompany});

  @override
  State<ProfileReadyScreen> createState() => _OrderReadyScreenState();
}

class _OrderReadyScreenState extends State<ProfileReadyScreen> {
  CarouselSliderController carouselController = CarouselSliderController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<XFile>? images =
        Provider.of<PhotoProvider>(context, listen: true).selectedPhotos;
    List<SizeModel> sizesVm =
        Provider.of<SizeProvider>(context, listen: true).sizes;

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
                "Ваш профиль готов!",
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
                        "Цех052",
                        style: AppFonts.w700s20
                            .copyWith(color: AppColors.accentTextColor),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(SvgImages.star),
                          Text(
                            "${0.00}",
                            style: AppFonts.w400s16
                                .copyWith(color: AppColors.accentTextColor),
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: Text(
                      widget.descriptionOfCompany,
                      style: AppFonts.w400s16.copyWith(),
                    ),
                  ),
                  Text(
                    "Выполнено в Inposhiv 0 заказов.",
                    style: AppFonts.w400s16
                        .copyWith(color: AppColors.accentTextColor),
                  ),
                ],
              ),
            ),
            const Spacer(),
            CustomButton(
                text: "Начать аукцион",
                onPressed: () {
                  context.goNamed("main", extra: false);
                })
          ],
        ),
      )),
    );
  }
}
