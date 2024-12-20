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
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/auction_bloc/auction_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/customer_auctions_bloc/customer_auctions_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/get_auctions_bloc/get_auctions_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/manufacturer_auctions_bloc/manufacturer_auctions_bloc.dart';
import 'package:inposhiv/features/main/home/data/mocked_data.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/main_screen.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/custom_drawer.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/main_appbar.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/calculate_service.dart';
import 'package:inposhiv/services/number_format_service.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:inposhiv/services/showdialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuctionScreen extends StatefulWidget {
  const AuctionScreen({super.key});

  @override
  State<AuctionScreen> createState() => _AuctionScreenState();

  static Color statusColor({required int status}) {
    switch (status) {
      case 2:
        return AppColors.accentTextColor;
      case 1:
        return AppColors.orange;
      case 0:
        return AppColors.red;
      default:
        return AppColors.accentTextColor;
    }
  }

  static String trustStatus({required int status}) {
    switch (status) {
      case 2:
        return "Очень надежный";
      case 1:
        return "Надежный";
      case 0:
        return "Ненадежный";
      default:
        return "Надежный";
    }
  }
}

class _AuctionScreenState extends State<AuctionScreen> {
  AuctionModel? selectedAuction;
  final preferences = locator<SharedPreferences>();
  final TextEditingController bidPriceController = TextEditingController();
  bool? isCustomer;
  CalculateService calculateService = CalculateService();
  final CarouselSliderController _carouselSliderController =
      CarouselSliderController();
  List<int> _currentIndexes = [];
  List<bool> _isExpandedList = [];
  List<SizesModel> sizes = [
    SizesModel("XS", "42", 0),
    SizesModel("S", "44", 0),
    SizesModel("M", "46", 0),
    SizesModel("L", "48", 0),
    SizesModel("XL", "50", 0),
    SizesModel("XXL", "52", 0)
  ];
  @override
  void initState() {
    isCustomer = preferences.getBool("isCustomer");
    (isCustomer ?? false) ? getCustomerAuctions() : getManufacturerAuctions();
    null;
    _isExpandedList = List.filled(MockedCardData.cardsList.length, false);
    _currentIndexes = List.filled(MockedCardData.cardsList.length, 0);
    super.initState();
  }

  @override
  void dispose() {
    bidPriceController.dispose();
    super.dispose();
  }

  void getCustomerAuctions() {
    BlocProvider.of<CustomerAuctionsBloc>(context).add(
        CustomerAuctionsEvent.getCustomerAuctions(
            customerId: preferences.getString("customerId") ?? ""));
  }

  getManufacturerAuctions() {
    BlocProvider.of<ManufacturerAuctionsBloc>(context).add(
        ManufacturerAuctionsEvent.getManufacturerAuctions(
            manufacturerId: preferences.getString("customerId") ?? ""));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: const MainAppBar(),
            ),
            // ElevatedButton(onPressed: (){print(isCustomer);}, child: Text("data")),
            Center(
              child: Text(
                "Мои аукционы",
                style: AppFonts.w700s36,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: (isCustomer ?? false)
                    ? BlocBuilder<CustomerAuctionsBloc, CustomerAuctionsState>(
                        builder: (context, state) {
                          return state.maybeWhen(loading: () {
                            return const CustomMainLoadingListview();
                          }, customerOrdersLoaded: (customerOrdersModel) {
                            if (customerOrdersModel.isNotEmpty) {
                              return RefreshIndicator.adaptive(
                                onRefresh: () async => getCustomerAuctions(),
                                child: ListView.separated(
                                  itemCount: customerOrdersModel.length,
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                    height: 5.h,
                                  ),
                                  itemBuilder: (context, index) {
                                    final currentItem =
                                        customerOrdersModel[index];
                                    final bool currentIndexIsExpanded =
                                        _isExpandedList[index];
                                    final List<String> fullPhotoUrls =
                                        currentItem.products?.first.photos
                                                ?.map((url) =>
                                                    "${UrlRoutes.baseUrl}$url")
                                                .toList() ??
                                            [];
                                    return Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.h),
                                        child: InkWell(
                                          onTap: () {
                                            GoRouter.of(context).pushNamed(
                                                "detailedViewScreen",
                                                extra: currentItem
                                                    .auctonsUuid?.first);
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
                                                                                .contain,
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
                                                            const SizedBox
                                                                .shrink(),
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
                                                                  "${currentItem.auctionProcessDtoList?.length ?? 0} откликов",
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
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          softWrap: true,
                                                          currentItem
                                                                  .products
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
                                                      // const Spacer(),
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    5.w),
                                                        child: Text(
                                                          "${currentItem.products?.first.quantity} шт",
                                                          style: AppFonts
                                                              .w400s16
                                                              .copyWith(
                                                                  color: AppColors
                                                                      .accentTextColor),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Text(
                                                  currentItem.products?.first
                                                          .description ??
                                                      "",
                                                  style: AppFonts.w400s16,
                                                ),
                                                Column(
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
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 6.w),
                                                            child: RotatedBox(
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
                                                      duration: const Duration(
                                                          milliseconds: 300),
                                                      curve:
                                                          Curves.fastOutSlowIn,
                                                      child:
                                                          currentIndexIsExpanded
                                                              ? GridView
                                                                  .builder(
                                                                      shrinkWrap:
                                                                          true,
                                                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                                          mainAxisSpacing:
                                                                              0,
                                                                          mainAxisExtent: 30
                                                                              .h,
                                                                          crossAxisCount:
                                                                              2),
                                                                      itemCount: currentItem
                                                                              .products
                                                                              ?.first
                                                                              .sizeQuantities
                                                                              ?.length ??
                                                                          0,
                                                                      itemBuilder:
                                                                          (context,
                                                                              gridwiewIndex) {
                                                                        return Text(
                                                                          "${sizes[gridwiewIndex].usaSize} (${sizes[gridwiewIndex].ruSize}) – ${currentItem.products?.first.sizeQuantities?["${gridwiewIndex + 1}"]}шт",
                                                                          style: AppFonts
                                                                              .w400s16
                                                                              .copyWith(color: AppColors.accentTextColor),
                                                                        );
                                                                      })
                                                              : const SizedBox
                                                                  .shrink(),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ));
                                  },
                                ),
                              );
                            } else {
                              return RefreshIndicator.adaptive(
                                onRefresh: () async => (),
                                child: SingleChildScrollView(
                                  physics:
                                      const AlwaysScrollableScrollPhysics(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center, // Align text to the center horizontally
                                    children: [
                                      SizedBox(
                                        height: 100.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical:
                                                20.0.h), // Add some padding
                                        child: Text(
                                          "Создайте свой первый заказ и начните торговаться",
                                          textAlign: TextAlign.center,
                                          style: AppFonts.w700s20.copyWith(
                                            color: AppColors.accentTextColor,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 150.h,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }
                          }, customerOrdersError: (error) {
                            return Expanded(
                              child: CustomErrorWidget(
                                  description: error.userMessage,
                                  onRefresh: () {
                                    getCustomerAuctions();
                                  }),
                            );
                          }, orElse: () {
                            return const SizedBox.shrink();
                          });
                        },
                      )
                    : BlocBuilder<ManufacturerAuctionsBloc,
                        ManufacturerAuctionsState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                              loading: () => Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 10.h),
                                      child: ListView.separated(
                                          itemBuilder: (context, index) {
                                            return LoadingCard(
                                                height: 140.h, radius: 10.r);
                                          },
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                              height: 8.h,
                                            );
                                          },
                                          itemCount: 7),
                                    ),
                                  ),
                              error: (errorText) => Expanded(
                                    child: CustomErrorWidget(
                                        description: errorText.userMessage,
                                        onRefresh: () {
                                          getManufacturerAuctions();
                                        }),
                                  ),
                              loaded: (model) {
                                if (model.isNotEmpty) {
                                  return Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 10.h),
                                      child: RefreshIndicator.adaptive(
                                        onRefresh: () async {
                                          getManufacturerAuctions();
                                        },
                                        child: ListView.separated(
                                            itemBuilder: (context, index) {
                                              final item = model[index];

                                              return InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    selectedAuction = item;
                                                  });
                                                  router.pushNamed(
                                                      "detailedViewScreenForManufacturer",
                                                      extra: item.auctionUuid);
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color:
                                                          AppColors.cardsColor,
                                                      borderRadius:
                                                          BorderRadiusDirectional
                                                              .circular(10.r)),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10.w,
                                                            vertical: 10.h),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 10.h),
                                                          child: SizedBox(
                                                            height: 140.h,
                                                            child: ListView
                                                                .separated(
                                                                    scrollDirection:
                                                                        Axis
                                                                            .horizontal,
                                                                    itemCount: item
                                                                            .productsList
                                                                            ?.first
                                                                            .photos
                                                                            ?.length ??
                                                                        0,
                                                                    separatorBuilder:
                                                                        (context,
                                                                            index) {
                                                                      return SizedBox(
                                                                        width:
                                                                            10.w,
                                                                      );
                                                                    },
                                                                    itemBuilder:
                                                                        (context,
                                                                            indexForPhotos) {
                                                                      final List<
                                                                          String> fullPhotoUrls = item
                                                                              .productsList
                                                                              ?.first
                                                                              .photos
                                                                              ?.map((url) => "${UrlRoutes.baseUrl}$url")
                                                                              .toList() ??
                                                                          [];
                                                                      return InkWell(
                                                                        onTap:
                                                                            () {
                                                                          GoRouter.of(context).pushNamed(
                                                                              "seeImage",
                                                                              extra: fullPhotoUrls);
                                                                        },
                                                                        child: ClipRRect(
                                                                            borderRadius: BorderRadius.circular(6.r),
                                                                            child: CachedNetworkImage(
                                                                                fit: BoxFit.contain,
                                                                                height: 100.h,
                                                                                width: 100.w,
                                                                                // progressIndicatorBuilder: (context, url, progress) => ,
                                                                                imageUrl: "${UrlRoutes.baseUrl}${item.productsList?.first.photos?[indexForPhotos]}")),
                                                                      );
                                                                    }),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                item
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
                                                            Text(
                                                              "${item.productsList?.first.quantity ?? 580} шт",
                                                              style: AppFonts
                                                                  .w400s16
                                                                  .copyWith(
                                                                      color: AppColors
                                                                          .accentTextColor),
                                                            )
                                                          ],
                                                        ),
                                                        Text(
                                                          item
                                                                  .productsList
                                                                  ?.first
                                                                  .description ??
                                                              "",
                                                          style:
                                                              AppFonts.w400s16,
                                                        ),
                                                        Text(
                                                          "${formatNumber(item.productsList?.first.priceRub?.toDouble() ?? 0)} руб за ед., итого ${formatNumber(calculateService.calculateTotalPriceInRuble(ruble: item.productsList?.first.priceRub ?? 0, totalCount: item.productsList?.first.quantity ?? 0))} руб",
                                                          style:
                                                              AppFonts.w400s16,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                height: 10.h,
                                              );
                                            },
                                            itemCount: model.length),
                                      ),
                                    ),
                                  );
                                } else {
                                  return RefreshIndicator.adaptive(
                                    onRefresh: () async => (),
                                    child: SingleChildScrollView(
                                      physics:
                                          const AlwaysScrollableScrollPhysics(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center, // Align text to the center horizontally
                                        children: [
                                          SizedBox(
                                            height: 100.h,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical:
                                                    20.0.h), // Add some padding
                                            child: Text(
                                              "Найдите подходящие заказы и сделайте свою первую ставку",
                                              textAlign: TextAlign.center,
                                              style: AppFonts.w700s20.copyWith(
                                                color:
                                                    AppColors.accentTextColor,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 150.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }
                              },
                              orElse: () {
                                return const SizedBox.shrink();
                              });
                        },
                      ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
