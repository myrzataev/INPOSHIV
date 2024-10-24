import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/providers/photo_provider.dart';
import 'package:inposhiv/features/auth/presentation/providers/size_provider.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/blocs/manufacturer_bloc/manufacturer_bloc.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/screens/set_quantity_screen.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileReadyScreen extends StatefulWidget {
  final String descriptionOfCompany;
  const ProfileReadyScreen({super.key, required this.descriptionOfCompany});

  @override
  State<ProfileReadyScreen> createState() => _OrderReadyScreenState();
}

class _OrderReadyScreenState extends State<ProfileReadyScreen> {
  CarouselSliderController carouselController = CarouselSliderController();
  int _currentIndex = 0;
  final preferences = locator<SharedPreferences>();
  @override
  Widget build(BuildContext context) {
    final String? userName = preferences.getString("userName");
    List<XFile>? images =
        Provider.of<PhotoProvider>(context, listen: true).selectedPhotos;
    List<SizeModelWithController> sizesVm =
        Provider.of<SizeProvider>(context, listen: true).sizes;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: BlocListener<ManufacturerBloc, ManufacturerState>(
          listener: (context, state) {
            state.maybeWhen(
              createdProfile: (model) {
                      context.goNamed("main", extra: false);
              },
              orElse: () {});
          },
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
                                  fit: BoxFit.contain,
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
                              activeColor: Colors.white,
                              size: Size(10.w, 10.h)),
                        ),
                      )
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          userName ?? "",
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
                  text: "Найти заказы",
                  onPressed: () async {
                    context.goNamed("main", extra: false);
                    BlocProvider.of<ManufacturerBloc>(context)
                        .add(ManufacturerEvent.createProfile(
                            formData: FormData.fromMap({
                              "username": preferences.getString("userName"),
                              "companyName": "Фортилайнс",
                              "description": widget.descriptionOfCompany,
                              "companySize": 45,
                              "photos":
                                  await Future.wait(images!.map((image) async {
                                return await MultipartFile.fromFile(image.path,
                                    filename: image.name);
                              }))
                            }),
                            userId: preferences.getString("customerId") ?? ""));
                  }),
            ],
          ),
        ),
      )),
    );
  }
}
