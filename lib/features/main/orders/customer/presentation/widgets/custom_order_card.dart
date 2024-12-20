import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/main_screen.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:inposhiv/services/number_format_service.dart';

class CustomOrderCard extends StatefulWidget {
  const CustomOrderCard({
    super.key,
    required this.images,
    required int currentIndex,
    required this.onPageChanged,
    required this.reliableStatus,
    required this.name,
    required this.quantity,
    required this.retailPriceInRuble,
    required this.totalPriceInRuble,
    required this.gridwiewLength,
    this.sizeQuantities,
  });

  final List<String> images;
  final int gridwiewLength;
  final String reliableStatus;
  final String name;
  final int quantity;
  final int retailPriceInRuble;
  final int totalPriceInRuble;
  final Map<String, int>? sizeQuantities;

  final Function(int carouselIndex, CarouselPageChangedReason reason)
      onPageChanged;

  @override
  State<CustomOrderCard> createState() => _CustomOrderCardState();
}

class _CustomOrderCardState extends State<CustomOrderCard> {
  int _currentIndex = 0;
  final CarouselSliderController _carouselSliderController =
      CarouselSliderController();
  List<SizesModel> sizes = [
    SizesModel("XS", "42", 0),
    SizesModel("S", "44", 0),
    SizesModel("M", "46", 0),
    SizesModel("L", "48", 0),
    SizesModel("XL", "50", 0),
    SizesModel("XXL", "52", 0)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(alignment: Alignment.center, children: [
            CarouselSlider.builder(
              carouselController: _carouselSliderController,
              itemCount: widget.images.length,
              options: CarouselOptions(
                initialPage: 0,
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 1,
                aspectRatio: 16 / 7,
                height: 300.h,
                onPageChanged: (indexCarousel, reason) {
                  // widget.onPageChanged(indexCarousel, reason);
                  setState(() {
                    _currentIndex = indexCarousel;
                  });
                },
              ),
              itemBuilder: (context, caruselIndex, realIndex) {
                return Stack(children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15.r),
                      child: CachedNetworkImage(
                        imageUrl: widget.images[caruselIndex],
                        fit: BoxFit.contain,
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
                        borderRadius: BorderRadius.circular(60.r)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.w),
                      child: Text(
                        widget.reliableStatus,
                        style: AppFonts.w400s16
                            .copyWith(color: AppColors.accentTextColor),
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
                dotsCount: widget.images.length ?? 1,
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
              Expanded(
                child: Text(
                  widget.name,
                  style:
                      AppFonts.w700s20.copyWith(color: AppColors.accentTextColor),
                ),
              ),
              Text(
                "${widget.quantity} шт",
                style:
                    AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: Text(
              "${formatNumber(widget.retailPriceInRuble.toDouble())} руб за ед, итого ${formatNumber(widget.totalPriceInRuble.toDouble())} руб",
              style: AppFonts.w400s16.copyWith(),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Размерный ряд",
                style:
                    AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
              ),
            ],
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,
            child: true
                ? GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 0,
                        mainAxisExtent: 30.h,
                        crossAxisCount: 2),
                    itemCount: widget.gridwiewLength,
                    itemBuilder: (context, gridwiewIndex) {
                      return Text(
                        "${sizes[gridwiewIndex].usaSize} (${sizes[gridwiewIndex].ruSize}) – ${widget.sizeQuantities?["${gridwiewIndex + 1}"]}шт",
                        style: AppFonts.w400s16
                            .copyWith(color: AppColors.accentTextColor),
                      );
                    })
                : const SizedBox.shrink(),
          ),
          // ElevatedButton(
          //     onPressed: () {},
          //     child: const Text("data"))
        ],
      ),
    );
  }
}
