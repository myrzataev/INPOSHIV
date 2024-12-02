import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/core/widgets/custom_error_widget.dart';
import 'package:inposhiv/core/widgets/loading_card.dart';
import 'package:inposhiv/core/widgets/loading_state.dart';
import 'package:inposhiv/features/auth/presentation/providers/role_provider.dart';
import 'package:inposhiv/features/auth/presentation/providers/size_provider.dart';
import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/get_auctions_bloc/get_auctions_bloc.dart';
import 'package:inposhiv/features/main/home/presentation/customer/blocs/get_manufacturers_profile_bloc/get_manufacturers_profile_bloc.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_dialog.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/screens/set_quantity_screen.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/data/mocked_data.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_drawer.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/main_appbar.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/calculate_service.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainScreen extends StatefulWidget {
  final bool isFromSearch;
  final List<CustomerOrdersModel>? auctionsList;

  final bool? hasDialog;
  const MainScreen(
      {super.key,
      required this.isFromSearch,
      this.hasDialog = false,
      this.auctionsList});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final CarouselSliderController _carouselSliderController =
      CarouselSliderController();
  List<int> _currentIndexes = [];
  List<bool> _isExpandedList = [];
  late bool? isCustomer;
  final preferences = locator<SharedPreferences>();
  CalculateService calculateService = CalculateService();
  int? selectedAuction;
  String? selectedAuctionUuid;
  List<SizesModel> sizes = [
    SizesModel("XS", "42", 0),
    SizesModel("S", "44", 0),
    SizesModel("M", "46", 0),
    SizesModel("L", "48", 0),
    SizesModel("XL", "50", 0),
    SizesModel("XXL", "52", 0)
  ];

  void getManufacturers() {
    BlocProvider.of<GetManufacturersProfileBloc>(context)
        .add(const GetManufacturersProfileEvent.started());
  }

  @override
  void initState() {
    super.initState();
    _currentIndexes = List.filled(MockedCardData.cardsList.length, 0);
    _isExpandedList = List.filled(MockedCardData.cardsList.length, false);
    isCustomer = preferences.getBool("isCustomer") ?? true;

    (isCustomer ?? true) ? getManufacturers() : getAuctionsList();
    if (widget.hasDialog ?? false) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        showDialog(
            context: context,
            builder: (context) => CustomDialog(
                  title:
                      "Мы уведомим вас, когда появятся отклики от производителей",
                  description: "",
                  button: CustomButton(
                    height: 40,
                    text: "Понятно",
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    sizedTemporary: true,
                  ),
                ));
      });
    }
  }

  void getAuctionsList() {
    BlocProvider.of<GetAuctionsBloc>(context)
        .add(const GetAuctionsEvent.getAuctions());
  }

  @override
  Widget build(BuildContext context) {
    List<CardsModel> data = MockedCardData.cardsList;
    final int role = Provider.of<RoleProvider>(context).role;
    List<SizeModelWithController> sizesVm =
        Provider.of<SizeProvider>(context, listen: true).sizes;
    final List<CustomerOrdersModel> auctionsList = widget.auctionsList ?? [];

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
                        "По вашему поиску мы нашли ${auctionsList.length} подходящих ${(isCustomer ?? true) ? "производителей" : "заказов"} ",
                        style: AppFonts.w700s20.copyWith(
                          color: AppColors.accentTextColor,
                        ),
                      ),
                    )
                  : const SizedBox(),
              (isCustomer ?? true)
                  ? BlocBuilder<GetManufacturersProfileBloc,
                      GetManufacturersProfileState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          loading: () {
                            return const Expanded(
                                child: CustomMainLoadingListview());
                          },
                          orElse: () {
                            return const SizedBox.shrink();
                          },
                          error: (errorText) => Expanded(
                            child: CustomErrorWidget(
                              description: errorText.userMessage,
                              onRefresh: () {
                                getManufacturers();
                              },
                            ),
                          ),
                          loaded: (model) {
                            return Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(top: 10.h, bottom: 50.h),
                              child: RefreshIndicator.adaptive(
                                onRefresh: () async {
                                  getManufacturers();
                                },
                                child: ListView.builder(
                                    itemCount: model.length,
                                    itemBuilder: (context, index) {
                                      final currentItem = model[index];
                                      final bool currentIndexIsExpanded =
                                          _isExpandedList[index];
                                      final List<
                                          String> fullPhotoUrls = currentItem
                                              .photosUrls
                                              ?.map((url) =>
                                                  "${UrlRoutes.baseUrl}$url")
                                              .toList() ??
                                          [];
                                      final item = data[index];

                                      return Padding(
                                        padding: EdgeInsets.only(bottom: 10.h),
                                        child: InkWell(
                                          onTap: () {
                                            GoRouter.of(context).pushNamed(
                                                "detailed",
                                                extra: currentItem);
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.r)),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      CarouselSlider.builder(
                                                        carouselController:
                                                            _carouselSliderController,
                                                        itemCount: fullPhotoUrls
                                                            .length,
                                                        options:
                                                            CarouselOptions(
                                                          autoPlay: false,
                                                          enlargeCenterPage:
                                                              true,
                                                          viewportFraction: 1,
                                                          aspectRatio: 16 / 7,
                                                          height: 300.h,
                                                          onPageChanged:
                                                              (indexCarousel,
                                                                  reason) {
                                                            setState(() {
                                                              _currentIndexes[
                                                                      index] =
                                                                  indexCarousel;
                                                            });
                                                          },
                                                        ),
                                                        itemBuilder: (context,
                                                            caruselIndex,
                                                            realIndex) {
                                                          return Stack(
                                                              children: [
                                                                ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(15
                                                                            .r),
                                                                    child: fullPhotoUrls
                                                                            .isNotEmpty
                                                                        ? CachedNetworkImage(
                                                                            progressIndicatorBuilder: (context, url, progress) =>
                                                                                Center(
                                                                                  child: LoadingCard(height: 300.h, radius: 0),
                                                                                ),
                                                                            fit: BoxFit
                                                                                .cover,
                                                                            // height: 350.h,
                                                                            width: double
                                                                                .infinity,
                                                                            imageUrl: fullPhotoUrls[
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
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              height: 36.h,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .accentTextColor,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60.r)),
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            14.w),
                                                                child: Text(
                                                                  "Надежный" ??
                                                                      "",
                                                                  style: AppFonts
                                                                      .w400s16
                                                                      .copyWith(
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
                                                          dotsCount: fullPhotoUrls
                                                                  .isNotEmpty
                                                              ? fullPhotoUrls
                                                                  .length
                                                              : 1,
                                                          position:
                                                              _currentIndexes[
                                                                  index],
                                                          decorator:
                                                              DotsDecorator(
                                                                  activeColor:
                                                                      Colors
                                                                          .white,
                                                                  size: Size(
                                                                      10.w,
                                                                      10.h)),
                                                        ),
                                                      )
                                                    ]),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 10.h),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        model[index]
                                                                .companyName ??
                                                            "",
                                                        style: AppFonts.w700s20
                                                            .copyWith(
                                                                color: AppColors
                                                                    .accentTextColor),
                                                      ),
                                                      const Spacer(),
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    5.w),
                                                        child: SvgPicture.asset(
                                                          SvgImages.star,
                                                          height: 16.h,
                                                          width: 16.w,
                                                        ),
                                                      ),
                                                      Text(
                                                        currentItem.rating
                                                            .toString(),
                                                        style: AppFonts.w700s16,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Text(
                                                  model[index]
                                                          .companyDescription ??
                                                      "",
                                                  style: AppFonts.w400s16,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 10.h),
                                                  child: Text(
                                                    "Выполнено в Inposhiv ${40} заказов.",
                                                    style: AppFonts.w400s16
                                                        .copyWith(
                                                            color: AppColors
                                                                .accentTextColor),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                            ));
                          },
                        );
                      },
                    )
                  //////////// для производителя
                  : BlocBuilder<GetAuctionsBloc, GetAuctionsState>(
                      builder: (context, state) {
                        return state.maybeWhen(loading: () {
                          return const Expanded(
                              child: CustomMainLoadingListview());
                        }, loaded: (model) {
                          if (model.isNotEmpty) {
                            return Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(top: 10.h, bottom: 50.h),
                              child: RefreshIndicator.adaptive(
                                onRefresh: () async {
                                  getAuctionsList();
                                },
                                child: ListView.builder(
                                    itemCount: model.length,
                                    itemBuilder: (context, index) {
                                      final currentItem = model[index];
                                      final bool currentIndexIsExpanded =
                                          _isExpandedList[index];
                                      final List<
                                          String> fullPhotoUrls = currentItem
                                              .productsList?.first.photos
                                              ?.map((url) =>
                                                  "${UrlRoutes.baseUrl}$url")
                                              .toList() ??
                                          [];
                                      // final item = data[index];

                                      return Padding(
                                        padding: EdgeInsets.only(bottom: 10.h),
                                        child: InkWell(
                                          onTap: () {
                                            // GoRouter.of(context).pushNamed(
                                            //     "detailed",
                                            //     extra: currentItem);
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.r)),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      CarouselSlider.builder(
                                                        carouselController:
                                                            _carouselSliderController,
                                                        itemCount: fullPhotoUrls
                                                            .length,
                                                        options:
                                                            CarouselOptions(
                                                          autoPlay: false,
                                                          enlargeCenterPage:
                                                              true,
                                                          viewportFraction: 1,
                                                          aspectRatio: 16 / 7,
                                                          height: 300.h,
                                                          onPageChanged:
                                                              (indexCarousel,
                                                                  reason) {
                                                            setState(() {
                                                              _currentIndexes[
                                                                      index] =
                                                                  indexCarousel;
                                                            });
                                                          },
                                                        ),
                                                        itemBuilder: (context,
                                                            caruselIndex,
                                                            realIndex) {
                                                          return Stack(
                                                              children: [
                                                                ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            15.r),
                                                                    child: CachedNetworkImage(
                                                                        progressIndicatorBuilder: (context, url, progress) {
                                                                          return Center(
                                                                            child:
                                                                                LoadingCard(height: 300.h, radius: 0),
                                                                          );
                                                                        },
                                                                        fit: BoxFit.cover,
                                                                        // height: 350.h,
                                                                        width: double.infinity,
                                                                        imageUrl: fullPhotoUrls[caruselIndex])),
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
                                                                  .end,
                                                          children: [
                                                            Transform.scale(
                                                              scale: 1.5,
                                                              child: Checkbox(
                                                                  side:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .grey,
                                                                    width:
                                                                        1.5.w,
                                                                  ),
                                                                  value:
                                                                      selectedAuction ==
                                                                          index,
                                                                  activeColor:
                                                                      AppColors
                                                                          .buttonGreenColor,
                                                                  onChanged:
                                                                      (value) {
                                                                    setState(
                                                                        () {
                                                                      if (selectedAuction ==
                                                                          index) {
                                                                        selectedAuction =
                                                                            null;
                                                                        selectedAuctionUuid =
                                                                            null;
                                                                      } else {
                                                                        selectedAuction =
                                                                            index;
                                                                        selectedAuctionUuid =
                                                                            currentItem.auctionUuid;
                                                                      }
                                                                    });
                                                                  }),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Positioned(
                                                        bottom: 10.h,
                                                        child: DotsIndicator(
                                                          dotsCount:
                                                              fullPhotoUrls
                                                                      .length ??
                                                                  1,
                                                          position:
                                                              _currentIndexes[
                                                                  index],
                                                          decorator:
                                                              DotsDecorator(
                                                                  activeColor:
                                                                      Colors
                                                                          .white,
                                                                  size: Size(
                                                                      10.w,
                                                                      10.h)),
                                                        ),
                                                      )
                                                    ]),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 10.h),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          currentItem
                                                                  .productsList
                                                                  ?.first
                                                                  .name ??
                                                              "",
                                                          style: AppFonts
                                                              .w700s20
                                                              .copyWith(
                                                                  color: AppColors
                                                                      .accentTextColor),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    5.w),
                                                        child: SvgPicture.asset(
                                                          SvgImages.star,
                                                          height: 16.h,
                                                          width: 16.w,
                                                        ),
                                                      ),
                                                      Text(
                                                        "5",
                                                        style: AppFonts.w700s16,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Text(
                                                  "${currentItem.productsList?.first.priceRub?.toStringAsFixed(2)} руб за ед,  ${calculateService.calculateTotalPriceInRuble(ruble: currentItem.productsList?.first.priceRub ?? 0, totalCount: currentItem.productsList?.first.quantity ?? 0).toStringAsFixed(2)} руб",
                                                  style: AppFonts.w400s16,
                                                ),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10.h),
                                                    child: Column(
                                                      children: [
                                                        InkWell(
                                                          onTap: () {
                                                            setState(() {
                                                              _isExpandedList[
                                                                      index] =
                                                                  !_isExpandedList[
                                                                      index];
                                                            });
                                                          },
                                                          child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Размерный ряд",
                                                                style: AppFonts
                                                                    .w400s16
                                                                    .copyWith(
                                                                        color: AppColors
                                                                            .accentTextColor),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 6
                                                                            .w),
                                                                child:
                                                                    RotatedBox(
                                                                  quarterTurns:
                                                                      currentIndexIsExpanded
                                                                          ? 2
                                                                          : 0,
                                                                  child: SvgPicture
                                                                      .asset(SvgImages
                                                                          .bottom),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        AnimatedSize(
                                                          duration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      300),
                                                          curve: Curves
                                                              .fastOutSlowIn,
                                                          child: currentIndexIsExpanded
                                                              ? GridView.builder(
                                                                  shrinkWrap: true,
                                                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisSpacing: 0, mainAxisExtent: 30.h, crossAxisCount: 2),
                                                                  itemCount: currentItem.productsList?.first.sizeQuantities?.length ?? 0,
                                                                  itemBuilder: (context, gridwiewIndex) {
                                                                    return Text(
                                                                      "${sizes[gridwiewIndex].usaSize} (${sizes[gridwiewIndex].ruSize}) – ${currentItem.productsList?.first.sizeQuantities?["${gridwiewIndex + 1}"]}шт",
                                                                      style: AppFonts
                                                                          .w400s16
                                                                          .copyWith(
                                                                              color: AppColors.accentTextColor),
                                                                    );
                                                                  })
                                                              : const SizedBox.shrink(),
                                                        ),
                                                      ],
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                            ));
                          } else {
                            return RefreshIndicator.adaptive(
                              onRefresh: ()async => (),
                              child: SingleChildScrollView(
                                child: const Center(
                                  child: Text("Пусто"),
                                ),
                              ),
                            );
                          }
                        }, error: (error) {
                          return Expanded(
                            child: CustomErrorWidget(
                              description: error.userMessage,
                              onRefresh: () {
                                getAuctionsList();
                              },
                            ),
                          );
                        }, orElse: () {
                          return const SizedBox.shrink();
                        });
                      },
                    ),
            ],
          ),
          Positioned(
              bottom: 10.h,
              left: 0.w,
              right: 0.w,
              child: CustomButton(
                  isActive:
                      (isCustomer ?? true) ? true : selectedAuction != null,
                  text: (isCustomer ?? true) ? "Создать заказ" : "Участвовать",
                  onPressed: () {
                    (isCustomer ?? true)
                        ? GoRouter.of(context).pushNamed("chooseImageSource")
                        : router.pushNamed("detailedViewScreenForManufacturer",
                            extra: selectedAuctionUuid);
                  }))
        ]),
      )),
    );
  }
}

class SizesModel {
  final String usaSize;
  final String ruSize;
  final int quantity;

  SizesModel(this.usaSize, this.ruSize, this.quantity);
}
