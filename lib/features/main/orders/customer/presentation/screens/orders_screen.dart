import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/auction/data/mocked_aution_data.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/customer_auctions_bloc/customer_auctions_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/manufacturer_auctions_bloc/manufacturer_auctions_bloc.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_choise_widget.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_drawer.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/widgets/comment_column.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/widgets/custom_order_card.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/widgets/custom_order_widget.dart';
import 'package:inposhiv/features/main/orders/manufacturer/presentation/blocs/get_manufacturer_invoices_bloc/get_manufacturer_invoices_bloc.dart';
import 'package:inposhiv/features/tracking/presentation/screens/tracking_screen.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/calculate_service.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;

  List<String> images = [Images.good1, Images.good2, Images.good1];
  List<String> tabs = [
    "Все заказы",
    "Завершенные",
    "Пункты выдачи",
    "Трекинг заказ"
  ];
  int selectedIndex = 0;
  int _currentIndex = 0;
  late bool? isCustomer;
  final preferences = locator<SharedPreferences>();
  final PageController _pageController = PageController();
  final CarouselSliderController _carouselSliderController =
      CarouselSliderController();
  final List<MockedAuctionModel> data = MockedAutionData.data;
  List<TrackingStatus> mockData = TrackingStatusData.data;
  List<AddressesModel> mockAdressesData = Addresses.adresses;
  bool openedDetailedView = false;
  CalculateService calculateService = CalculateService();
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: false);
    isCustomer = preferences.getBool("isCustomer") ?? true;
    if (isCustomer ?? true) {
      callBlocForCustomer();
      getCustomerInvoices();
    } else {
      (callBlocForManufacturer());
    }
    ;
    super.initState();
  }

  void callBlocForManufacturer() {
    BlocProvider.of<ManufacturerAuctionsBloc>(context).add(
        ManufacturerAuctionsEvent.getManufacturerAuctions(
            manufacturerId: preferences.getString("customerId") ?? ""));
  }

  void callBlocForCustomer() {
    BlocProvider.of<CustomerAuctionsBloc>(context).add(
        CustomerAuctionsEvent.getCustomerAuctions(
            customerId: preferences.getString("customerId") ?? ""));
  }

  getCustomerInvoices() {
    BlocProvider.of<GetManufacturerInvoicesBloc>(context).add(
        GetManufacturerInvoicesEvent.getManufacturerInvoices(
            manufactureId: preferences.getString("customerId") ?? ""));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Stack(children: [
            Positioned.fill(
              child: Column(
                children: [
                  Builder(
                    builder: (context) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomSearchWidget(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                            child: SvgPicture.asset(SvgImages.burgerMenu)),
                        CustomSearchWidget(
                            onTap: () {
                              GoRouter.of(context).pushNamed("searchScreen");
                              // GoRouter.of(context).pushNamed("searchScreen");
                            },
                            child: SvgPicture.asset(SvgImages.search))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.h, top: 10.h),
                    child: SizedBox(
                      height: 55.h,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return CustomChoiceWidget(
                              isSelelected: selectedIndex == index,
                              text: tabs[index],
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                  _currentIndex = 0;
                                });
                                // Animate to the corresponding page in the PageView.
                                _pageController.animateToPage(index,
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeInOut);
                              },
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: 7.w,
                            );
                          },
                          itemCount: tabs.length),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(bottom: 70.h),
                    child: PageView(
                      controller: _pageController,
                      onPageChanged: (value) {
                        setState(() {
                          selectedIndex = value;
                          _currentIndex = 0;
                        });
                      },
                      children: [
                        (isCustomer ?? true)
                            ? BlocBuilder<CustomerAuctionsBloc,
                                CustomerAuctionsState>(
                                builder: (context, state) {
                                  return state.maybeWhen(
                                      customerOrdersLoaded:
                                          (customerOrdersModel) {
                                        return RefreshIndicator.adaptive(
                                          onRefresh: () async =>
                                              callBlocForCustomer(),
                                          child: ListView.builder(
                                              itemCount:
                                                  customerOrdersModel.length,
                                              scrollDirection: Axis.vertical,
                                              itemBuilder: (context, index) {
                                                final currentItem =
                                                    customerOrdersModel[index];
                                                final List<String>
                                                    fullPhotoUrls =
                                                    customerOrdersModel[index]
                                                            .products
                                                            ?.first
                                                            .photos
                                                            ?.map((url) =>
                                                                "${UrlRoutes.baseUrl}$url")
                                                            .toList() ??
                                                        [];
                                                return Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 10.h),
                                                  child: CustomOrderCard(
                                                    images: fullPhotoUrls,
                                                    onPageChanged:
                                                        (carouselIndex,
                                                            reason) {},
                                                    reliableStatus: "",
                                                    name: currentItem.products
                                                            ?.first.name ??
                                                        "",
                                                    quantity: currentItem
                                                            .products
                                                            ?.first
                                                            .quantity ??
                                                        0,
                                                    retailPriceInRuble:
                                                        currentItem.products
                                                                ?.first.priceRub
                                                                ?.toInt() ??
                                                            0,
                                                    totalPriceInRuble: calculateService
                                                        .calculateTotalPriceInRuble(
                                                            ruble: currentItem
                                                                    .products
                                                                    ?.first
                                                                    .priceRub
                                                                    ?.toDouble() ??
                                                                0,
                                                            totalCount: currentItem
                                                                    .products
                                                                    ?.first
                                                                    .quantity ??
                                                                0)
                                                        .toInt(),
                                                    currentIndex: _currentIndex,
                                                    sizeQuantities: currentItem
                                                            .products
                                                            ?.first
                                                            .sizeQuantities ??
                                                        {},
                                                    gridwiewLength: currentItem
                                                            .products
                                                            ?.first
                                                            .sizeQuantities
                                                            ?.length ??
                                                        0,
                                                  ),
                                                );
                                              }),
                                        );
                                      },
                                      loading: () => const Center(
                                            child: CircularProgressIndicator
                                                .adaptive(),
                                          ),
                                      orElse: () => const SizedBox.shrink());
                                },
                              )
                            : BlocBuilder<ManufacturerAuctionsBloc,
                                ManufacturerAuctionsState>(
                                builder: (context, state) {
                                  return state.maybeWhen(
                                      loading: () => const Center(
                                            child: CircularProgressIndicator
                                                .adaptive(),
                                          ),
                                      error: (errorText) => Center(
                                            child: Text(errorText),
                                          ),
                                      loaded: (model) {
                                        if (model.isNotEmpty) {
                                          return ListView.builder(
                                            scrollDirection: Axis.vertical,
                                            itemCount: model.length,
                                            itemBuilder: (context, index) {
                                              final currentIndex = model[index];
                                              final List<
                                                  String> fullPhotoUrls = model[
                                                          index]
                                                      .productsList
                                                      ?.first
                                                      .photos
                                                      ?.map((url) =>
                                                          "${UrlRoutes.baseUrl}$url")
                                                      .toList() ??
                                                  [];
                                              return Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 10.h),
                                                child: CustomOrderCard(
                                                  images: fullPhotoUrls,
                                                  onPageChanged: (carouselIndex,
                                                      reason) {},
                                                  reliableStatus: "",
                                                  name: currentIndex
                                                          .productsList
                                                          ?.first
                                                          .name ??
                                                      "",
                                                  quantity: currentIndex
                                                          .productsList
                                                          ?.first
                                                          .quantity
                                                          ?.toInt() ??
                                                      0,
                                                  retailPriceInRuble:
                                                      currentIndex.productsList
                                                              ?.first.priceRub
                                                              ?.toInt() ??
                                                          0,
                                                  totalPriceInRuble: calculateService
                                                      .calculateTotalPriceInRuble(
                                                          ruble: currentIndex
                                                                  .productsList
                                                                  ?.first
                                                                  .priceRub ??
                                                              0,
                                                          totalCount: currentIndex
                                                                  .productsList
                                                                  ?.first
                                                                  .quantity
                                                                  ?.toInt() ??
                                                              0)
                                                      .toInt(),
                                                  currentIndex: _currentIndex,
                                                  gridwiewLength: currentIndex
                                                          .productsList
                                                          ?.first
                                                          .sizeQuantities
                                                          ?.length ??
                                                      0,
                                                  sizeQuantities: currentIndex
                                                          .productsList
                                                          ?.first
                                                          .sizeQuantities ??
                                                      {},
                                                ),
                                              );
                                            },
                                          );
                                        } else {
                                          return Center(
                                            child: Text(
                                              "Список пуст",
                                              style: AppFonts.w500s18,
                                            ),
                                          );
                                        }
                                      },
                                      orElse: () {
                                        return const SizedBox.shrink();
                                      });
                                },
                              ),
                        ListView.separated(
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 10.h,
                              );
                            },
                            itemCount: data.length,
                            itemBuilder: (context, index) {
                              final item = data[index];
                              return CustomCompletedOrdersCard(
                                location: item.location,
                                trustRating: item.trustStatuses,
                                rating: 4.96,
                                retailPrice: item.retailPrice,
                                retailPriceInRuble: 580,
                                quantityInApp: item.quantityOfOrders,
                              );
                            }),
                        ListView.separated(
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 10.h,
                              );
                            },
                            itemCount: mockAdressesData.length,
                            itemBuilder: (context, index) {
                              final currentItem = mockAdressesData[index];
                              return InkWell(
                                onTap: () =>
                                    launchUrl(Uri.parse(currentItem.url)),
                                child: Ink(
                                  decoration: BoxDecoration(
                                      color: AppColors.containersGrey,
                                      borderRadius:
                                          BorderRadius.circular(15.r)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Пункт выдачи Inposhiv",
                                              style: AppFonts.w400s16.copyWith(
                                                  color: AppColors
                                                      .accentTextColor),
                                            ),
                                            Text(
                                              currentItem.address,
                                              style: AppFonts.w400s16,
                                            )
                                          ],
                                        ),
                                        Image.asset(
                                            height: 20.h,
                                            width: 20.w,
                                            Images.mapgis)
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                        BlocBuilder<GetManufacturerInvoicesBloc,
                            GetManufacturerInvoicesState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                                loading: () => const Center(
                                      child:
                                          CircularProgressIndicator.adaptive(),
                                    ),
                                error: (errorText) => Center(
                                      child: Text(errorText),
                                    ),
                                loaded: (model) {
                                  // if (model.isNotEmpty) {
                                  return ListView.separated(
                                      itemCount: model.length,
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () => GoRouter.of(context)
                                              .pushNamed(
                                                  "detailedTrackingScreen",
                                                  queryParameters: {
                                                "invoiceId":
                                                    model[index].invoiceUuid
                                                // model[index].invoiceUuid
                                              }),
                                          child: Container(
                                            height: 40.h,
                                            decoration: BoxDecoration(
                                                color: AppColors.cardsColor,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        15.r)),
                                            child: Center(
                                              child: Text("Заказ № $index"),
                                            ),
                                          ),
                                        );
                                      });
                                  // } else {
                                  //   return const Center(
                                  //     child: Text("empty"),
                                  //   );
                                  // }
                                },
                                orElse: () {
                                  return const SizedBox.shrink();
                                });
                          },
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                bottom: 10.h,
                child: selectedIndex == 3
                    ? CustomButton(
                        text: openedDetailedView
                            ? "Показать все этапы"
                            : "Показать подробно",
                        onPressed: () {
                          setState(() {
                            openedDetailedView =
                                openedDetailedView ? false : true;
                          });
                        })
                    : CustomButton(text: "Создать заказ", onPressed: () {}))
          ]),
        ),
      ),
    );
  }
}

class TrackingStatus {
  final String steps;
  bool isDone;
  TrackingStatus({this.isDone = false, required this.steps});
}

class AddressesModel {
  final String address;
  final String url;
  AddressesModel({required this.address, required this.url});
}

abstract class Addresses {
  static List<AddressesModel> adresses = [
    AddressesModel(address: "Манаса, 41а", url: "https://go.2gis.com/ugclb"),
    AddressesModel(address: "Манаса, 41а", url: "https://go.2gis.com/ugclb"),
    AddressesModel(address: "Манаса, 41а", url: "https://go.2gis.com/ugclb"),
    AddressesModel(address: "Манаса, 41а", url: "https://go.2gis.com/ugclb"),
    AddressesModel(address: "Манаса, 41а", url: "https://go.2gis.com/ugclb"),
    AddressesModel(address: "Манаса, 41а", url: "https://go.2gis.com/ugclb"),
    AddressesModel(address: "Манаса, 41а", url: "https://go.2gis.com/ugclb")
  ];
}

abstract class TrackingStatusData {
  static List<TrackingStatus> data = [
    TrackingStatus(steps: "Оплата первой части заказа", isDone: true),
    TrackingStatus(steps: "Закуп ткани и крой"),
    TrackingStatus(steps: "Пошив"),
    TrackingStatus(steps: "Отдел контроля качества"),
    TrackingStatus(steps: "Готово к отгрузке"),
    TrackingStatus(steps: "Отгружено"),
    TrackingStatus(steps: "Оплата второй части заказа"),
    TrackingStatus(steps: "Приемка заказа"),
  ];
}

class CustomProgressBar extends StatefulWidget {
  final String? text;
  final int progress;
  const CustomProgressBar({super.key, required this.progress, this.text});

  @override
  _CustomProgressBarState createState() => _CustomProgressBarState();
}

class _CustomProgressBarState extends State<CustomProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    _setAnimation();
    _animationController.forward();
  }

  @override
  void didUpdateWidget(CustomProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.progress != widget.progress) {
      _setAnimation();
      _animationController.forward(from: 0.0);
    }
  }

  void _setAnimation() {
    // Animate from the current progress to the new progress
    _animation = Tween<double>(
      begin: 0.0,
      end: (widget.progress.toDouble()) / 100.0,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.text ?? "",
            style: AppFonts.w400s14,
          ),
          SizedBox(height: 10.h),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.centerLeft,
            children: [
              // Linear Progress Bar Background
              Container(
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Container(
                    height: 8,
                    width: MediaQuery.of(context).size.width * _animation.value,
                    decoration: BoxDecoration(
                      color: AppColors.accentTextColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  );
                },
              ),
              // Animated Checkmark
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Positioned(
                    left: (MediaQuery.of(context).size.width - 40) *
                        _animation.value,
                    child: SvgPicture.asset(
                      SvgImages.check,
                      height: 20.h,
                      width: 20.w,
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
