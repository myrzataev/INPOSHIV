import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inposhiv/core/platform/platform_provider.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/providers/photo_provider.dart';
import 'package:inposhiv/features/auth/presentation/providers/size_provider.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/create_auction_bloc/create_auction_bloc.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/blocs/create_order_bloc/create_order_bloc.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/providers/order_provider.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/screens/set_quantity_screen.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OrderReadyScreen extends StatefulWidget {
  final String totalPriceInRuble;
  final int orderId;
  const OrderReadyScreen({
    super.key,
    required this.totalPriceInRuble,
    required this.orderId,
  });

  @override
  State<OrderReadyScreen> createState() => _OrderReadyScreenState();
}

class _OrderReadyScreenState extends State<OrderReadyScreen> {
  CarouselSliderController carouselController = CarouselSliderController();
  int _currentIndex = 0;
  final preferences = locator<SharedPreferences>();

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<OrderProvider>(context, listen: true);
    bool? isAndroid = Provider.of<PlatformProvider>(context).platformIsAndroid;
    List<XFile>? images =
        Provider.of<PhotoProvider>(context, listen: true).selectedPhotos;
    List<PlatformFile>? files =
        Provider.of<PhotoProvider>(context, listen: true).selectedFiles;
    List<SizeModelWithController> sizesVm =
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
            BlocListener<CreateAuctionBloc, CreateAuctionState>(
              listener: (context, state) {
                state.maybeWhen(
                    auctionCreated: () => context.goNamed("main",
                        queryParameters: {"hasDialod": "true"}),
                    orElse: () {});
              },
              child: const SizedBox.shrink(),
            ),
            CustomSearchWidget(
                onTap: () {
                  GoRouter.of(context).pop();
                },
                child: SvgPicture.asset(SvgImages.goback)),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text(
                "Ваш заказ создан!",
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
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.h),
                                child: Image.file(
                                  File(images?[caruselIndex].path ?? ""),
                                  fit: BoxFit.contain,
                                  height: 300.h,
                                  width: double.infinity,
                                ),
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
                      "${(vm.priceRub ?? 0).toStringAsFixed(2)} руб за единицу, итого ${double.parse(widget.totalPriceInRuble).toStringAsFixed(2)} руб",
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
            Padding(
              padding: EdgeInsets.only(bottom: isAndroid! ? 10.h : 0),
              child: CustomButton(
                  text: "Начать аукцион",
                  onPressed: () async {
                    BlocProvider.of<CreateAuctionBloc>(context).add(
                        CreateAuctionEvent.createAuction(
                            orderId: widget.orderId));
                  }),
            )
          ],
        ),
      )),
    );
  }
}
