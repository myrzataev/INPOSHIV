import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/core/platform/platform_provider.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/providers/photo_provider.dart';
import 'package:inposhiv/features/auth/presentation/providers/size_provider.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/create_auction_bloc/create_auction_bloc.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/main_screen.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/providers/order_provider.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/screens/set_quantity_screen.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/calculate_service.dart';
import 'package:inposhiv/services/number_format_service.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OrderDetailedViewScreen extends StatefulWidget {
  final ProductsList productsList;
  const OrderDetailedViewScreen({
    super.key,
    required this.productsList,
  });

  @override
  State<OrderDetailedViewScreen> createState() => _OrderDetailedViewState();
}

class _OrderDetailedViewState extends State<OrderDetailedViewScreen> {
  CarouselSliderController carouselController = CarouselSliderController();
  int _currentIndex = 0;
  final preferences = locator<SharedPreferences>();
  bool isDialogOpened = false;
  List<SizesModel> sizes = [
    SizesModel("XS", "42", 0),
    SizesModel("S", "44", 0),
    SizesModel("M", "46", 0),
    SizesModel("L", "48", 0),
    SizesModel("XL", "50", 0),
    SizesModel("XXL", "52", 0)
  ];

  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox.shrink(),
                      CustomSearchWidget(
                        onTap: () {
                          GoRouter.of(context).pop();
                        },
                        child: SvgPicture.asset(SvgImages.goback),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Text(
                          "Детали заказа",
                          style: AppFonts.w700s36.copyWith(
                              height: 0.8, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                CarouselSlider.builder(
                                  carouselController: carouselController,
                                  itemCount:
                                      widget.productsList.photos?.length ?? 0,
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
                                      (context, carouselIndex, realIndex) {
                                    return ClipRRect(
                                      borderRadius: BorderRadius.circular(15.r),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.h),
                                        child: CachedNetworkImage(
                                          imageUrl:
                                              "${UrlRoutes.baseUrl}${widget.productsList.photos?[carouselIndex] ?? ""}",
                                          fit: BoxFit.contain,
                                          height: 300.h,
                                          width: double.infinity,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                Positioned(
                                  bottom: 10.h,
                                  child: DotsIndicator(
                                    dotsCount:
                                        widget.productsList.photos?.length ?? 0,
                                    position: _currentIndex,
                                    decorator: DotsDecorator(
                                      activeColor: Colors.white,
                                      size: Size(10.w, 10.h),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${widget.productsList.name}",
                                  style: AppFonts.w700s20.copyWith(
                                    color: AppColors.accentTextColor,
                                  ),
                                ),
                                Text(
                                  "${widget.productsList.quantity} шт",
                                  style: AppFonts.w400s16.copyWith(
                                    color: AppColors.accentTextColor,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              widget.productsList.description ?? "",
                              style: AppFonts.w400s16,
                            ),
                            Text(
                              "${(formatNumber(widget.productsList.priceRub?.toDouble() ?? 0))} руб за ед, итого ${formatNumber(CalculateService().calculateTotalPriceInRuble(ruble: widget.productsList.priceRub ?? 0, totalCount: (double.parse(widget.productsList.quantity.toString() ?? "0").toInt())))} руб",
                              style: AppFonts.w400s16
                                  .copyWith(color: AppColors.accentTextColor),
                            ),
                            InkWell(
                              onTap: () => setState(() {
                                isDialogOpened = !isDialogOpened;
                              }),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Размерный ряд",
                                    style: AppFonts.w400s16.copyWith(
                                      color: AppColors.accentTextColor,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6.w),
                                    child: RotatedBox(
                                      quarterTurns: isDialogOpened ? 2 : 0,
                                      child: SvgPicture.asset(SvgImages.bottom),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            AnimatedSize(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.fastOutSlowIn,
                              child: isDialogOpened
                                  ? GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisSpacing: 0,
                                              mainAxisExtent: 30.h,
                                              crossAxisCount: 2),
                                      itemCount: widget.productsList
                                              .sizeQuantities?.length ??
                                          0,
                                      itemBuilder: (context, gridwiewIndex) {
                                        return Text(
                                          "${sizes[gridwiewIndex].usaSize} (${sizes[gridwiewIndex].ruSize}) – ${widget.productsList?.sizeQuantities?["${gridwiewIndex + 1}"]}шт",
                                          style: AppFonts.w400s16.copyWith(
                                              color: AppColors.accentTextColor),
                                        );
                                      })
                                  : const SizedBox.shrink(),
                            ),
                            widget.productsList.technicalDocuments != null
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Тех. задание"),
                                      IconButton(
                                          onPressed: () {
                                            router.pushNamed("seeDoc",
                                                extra: true,
                                                queryParameters: {
                                                  "docUrl":
                                                      "${UrlRoutes.baseUrl}${widget.productsList.technicalDocuments?.first}"
                                                });
                                          },
                                          icon:
                                              const Icon(Icons.picture_as_pdf))
                                    ],
                                  )
                                : const SizedBox.shrink(),
                            (widget.productsList.lekalaDocuments != null &&
                                    widget.productsList.lekalaDocuments
                                            ?.first !=
                                        "null")
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Лекала"),
                                      IconButton(
                                          onPressed: () {
                                            router.pushNamed("seeDoc",
                                                extra: true,
                                                queryParameters: {
                                                  "docUrl":
                                                      "${UrlRoutes.baseUrl}${widget.productsList.lekalaDocuments?.first}"
                                                });
                                          },
                                          icon:
                                              const Icon(Icons.picture_as_pdf))
                                    ],
                                  )
                                : const SizedBox.shrink(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
