import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/auction_bloc/auction_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/customer_auctions_bloc/customer_auctions_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/get_auctions_bloc/get_auctions_bloc.dart';
import 'package:inposhiv/features/main/chat/presentation/blocs/chat_bloc/chat_bloc.dart';
import 'package:inposhiv/features/main/chat/presentation/blocs/create_chat_room_bloc/create_chat_room_bloc.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_drawer.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/main_appbar.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/calculate_service.dart';
import 'package:inposhiv/services/shared_preferences.dart';
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
  @override
  void initState() {
    BlocProvider.of<GetAuctionsBloc>(context)
        .add(const GetAuctionsEvent.getAuctions());
    isCustomer = preferences.getBool("isCustomer");
    (isCustomer ?? false) ? callBloc() : print("object");
    null;

    super.initState();
  }

  @override
  void dispose() {
    bidPriceController.dispose();
    super.dispose();
  }

  void callBloc() {
    BlocProvider.of<CustomerAuctionsBloc>(context).add(
        CustomerAuctionsEvent.getCustomerAuctions(
            customerId: preferences.getString("customerId") ?? ""));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: SafeArea(
          child: BlocListener<ChatsBloc, ChatsState>(
        listener: (context, state) {
          state.maybeWhen(createChatRoomSuccess: (model) {
            GoRouter.of(context).pushNamed("chatScreen", queryParameters: {
              "receipentUuid": model.recipientUuid,
              "chatUuid": model.chatUuid,
            });
          }, orElse: () {
            callBloc();
          });
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: const MainAppBar(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: (isCustomer ?? false)
                    ? BlocBuilder<CustomerAuctionsBloc, CustomerAuctionsState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                              customerOrdersLoaded: (customerOrdersModel) {
                            return SizedBox(
                              height: 625.h,
                              child: RefreshIndicator.adaptive(
                                onRefresh: () async => callBloc(),
                                child: ListView.separated(
                                  itemCount: customerOrdersModel.length,
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                    height: 5.h,
                                  ),
                                  itemBuilder: (context, index) {
                                    final currentItem =
                                        customerOrdersModel[index];
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.h),
                                      child: InkWell(
                                        onTap: () {
                                          GoRouter.of(context).pushNamed(
                                              "detailedViewScreen",
                                              extra: currentItem);
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: AppColors.cardsColor,
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(10.r),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.w,
                                                vertical: 10.h),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 10.h),
                                                  child: SizedBox(
                                                    height: 60.h,
                                                    child: ListView.separated(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      itemCount: currentItem
                                                              .products
                                                              ?.first
                                                              .photos
                                                              ?.length ??
                                                          0,
                                                      separatorBuilder:
                                                          (context,
                                                              indexForPhotos) {
                                                        return SizedBox(
                                                            width: 10.w);
                                                      },
                                                      itemBuilder: (context,
                                                          indexForPhotos) {
                                                        final List<String>
                                                            fullPhotoUrls =
                                                            currentItem
                                                                    .products
                                                                    ?.first
                                                                    .photos
                                                                    ?.map((url) =>
                                                                        "${UrlRoutes.baseUrl}$url")
                                                                    .toList() ??
                                                                [];

                                                        return InkWell(
                                                          onTap: () {
                                                            GoRouter.of(context)
                                                                .pushNamed(
                                                                    "seeImage",
                                                                    extra:
                                                                        fullPhotoUrls);
                                                          },
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6.r),
                                                            child:
                                                                CachedNetworkImage(
                                                              imageUrl:
                                                                  "${UrlRoutes.baseUrl}${currentItem.products?.first.photos?[indexForPhotos]}",
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      currentItem.products
                                                              ?.first.name ??
                                                          "",
                                                      style: AppFonts.w700s16,
                                                    ),
                                                    Text(
                                                      "${currentItem.products?.first.quantity} штук",
                                                      style: AppFonts.w400s16
                                                          .copyWith(
                                                        color: AppColors
                                                            .accentTextColor,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  "${currentItem.products?.first.priceRub?.toStringAsFixed(2) ?? ""} руб за единицу, итого 348 000 руб",
                                                  style: AppFonts.w400s16,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            );
                          }, orElse: () {
                            return const Center(
                                child: CircularProgressIndicator.adaptive());
                          });
                        },
                      )
                    : Center(
                        child: Text(
                          "Мои аукционы",
                          style: AppFonts.w700s36,
                        ),
                      ),
              ),
              (isCustomer ?? false)
                  // ? const SizedBox.shrink()
                  ? BlocBuilder<CustomerAuctionsBloc, CustomerAuctionsState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                            customerOrdersLoaded: (customerOrdersModel) {
                              final currentItem = customerOrdersModel;
                              return Expanded(
                                child: RefreshIndicator.adaptive(
                                  onRefresh: () async {
                                    callBloc();
                                  },
                                  child: ListView.separated(
                                    itemCount: currentItem.length,
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                      height: 5.h,
                                    ),
                                    itemBuilder: (context, index) => Container(
                                      decoration: BoxDecoration(
                                          color: AppColors.cardsColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.r))),
                                      child: Padding(
                                        padding: EdgeInsets.all(10.h),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      Images.sewingMachine),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 5.w),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(60.r),
                                                        border: Border.all(
                                                            width: 1.w,
                                                            color: AuctionScreen
                                                                .statusColor(
                                                                    status:
                                                                        1))),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0.w),
                                                      child: Text(
                                                        AuctionScreen
                                                            .trustStatus(
                                                                status: 1),
                                                        style: AppFonts.w400s16
                                                            .copyWith(
                                                                color: AuctionScreen
                                                                    .statusColor(
                                                                        status:
                                                                            1),
                                                                fontFamily:
                                                                    "SF Pro"),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10.h),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5.w),
                                                    child: SvgPicture.asset(
                                                      SvgImages.star,
                                                      height: 16.h,
                                                      width: 16.w,
                                                    ),
                                                  ),
                                                  Text(
                                                    "${4.96}",
                                                    style: AppFonts.w700s16,
                                                  )
                                                ],
                                              ),
                                            ),
                                            Text(
                                              "Выполнено в Inposhiv ${40} заказов.",
                                              style: AppFonts.w400s16.copyWith(
                                                  color: AppColors
                                                      .accentTextColor),
                                            ),
                                            Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "${500}\$",
                                                      style: AppFonts.w700s18,
                                                    ),
                                                    Text(
                                                      "580 руб",
                                                      style: AppFonts.w400s16,
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 40.w),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "${3018}\$",
                                                        style: AppFonts.w700s18,
                                                      ),
                                                      Text(
                                                        "312 000 руб",
                                                        style: AppFonts.w400s16,
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10.h),
                                              child: SizedBox(
                                                height: 40.h,
                                                width: double.infinity,
                                                child: MaterialButton(
                                                  onPressed: () {
                                                    BlocProvider.of<
                                                                CreateChatRoomBloc>(
                                                            context)
                                                        .add(
                                                            const CreateChatRoomEvent
                                                                .createChatRoom(
                                                                chatData: {
                                                          "userUid":
                                                              "47fbf4ce-164e-459a-8c5b-ae70da36ac65",
                                                          "senderUuid":
                                                              "aa595ab9-e177-4566-af50-45a81650250d",
                                                          "recipientUuid":
                                                              "2cfc20f9-e5b4-4e4f-a2e6-f36460ee1609"
                                                        }));
                                                  },
                                                  color: AppColors
                                                      .buttonGreenColor,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.r)),
                                                  child: Text(
                                                    "Связаться",
                                                    style: AppFonts.w400s16
                                                        .copyWith(
                                                            color: AppColors
                                                                .accentTextColor),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            customerOrdersError: (errorText) => Center(
                                  child: Text(errorText),
                                ),
                            orElse: () {
                              callBloc();
                              return const SizedBox.shrink();
                            });
                      },
                    )
                  : BlocListener<AuctionBloc, AuctionState>(
                      listener: (context, state) {
                        state.maybeWhen(
                            makeBidSuccess: (model) {
                              GoRouter.of(context).pop();
                              BlocProvider.of<GetAuctionsBloc>(context)
                                  .add(const GetAuctionsEvent.getAuctions());
                              bidPriceController.clear();
                            },
                            orElse: () {});
                      },
                      child: BlocBuilder<GetAuctionsBloc, GetAuctionsState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                              loading: () => const Center(
                                    child: CircularProgressIndicator.adaptive(),
                                  ),
                              error: (errorText) => Center(
                                    child: Text(errorText),
                                  ),
                              loaded: (model) {
                                return Expanded(
                                    child: Padding(
                                  padding: EdgeInsets.only(top: 10.h),
                                  child: RefreshIndicator.adaptive(
                                    onRefresh: () async {
                                      BlocProvider.of<GetAuctionsBloc>(context)
                                          .add(const GetAuctionsEvent
                                              .getAuctions());
                                    },
                                    child: ListView.separated(
                                        itemBuilder: (context, index) {
                                          final item = model[index];
                                          return InkWell(
                                            onTap: () {
                                              setState(() {
                                                selectedAuction = item;
                                              });
                                              _showAuctionDetail(
                                                  context: context,
                                                  auctionId: selectedAuction
                                                          ?.auctionUuid ??
                                                      "",
                                                  manufacturerId:
                                                      preferences.getString(
                                                              "customerId") ??
                                                          "",
                                                  bidPrice: double.tryParse(
                                                          bidPriceController
                                                              .text) ??
                                                      0,
                                                  currencyCode: "USD");
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: AppColors.cardsColor,
                                                  borderRadius:
                                                      BorderRadiusDirectional
                                                          .circular(10.r)),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10.w,
                                                    vertical: 10.h),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 10.h),
                                                      child: SizedBox(
                                                        height: 60.h,
                                                        child:
                                                            ListView.separated(
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
                                                                    width: 10.w,
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
                                                                          ?.map((url) =>
                                                                              "${UrlRoutes.baseUrl}$url")
                                                                          .toList() ??
                                                                      [];
                                                                  return InkWell(
                                                                    onTap: () {
                                                                      GoRouter.of(context).pushNamed(
                                                                          "seeImage",
                                                                          extra:
                                                                              fullPhotoUrls);
                                                                    },
                                                                    child: ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(6
                                                                                .r),
                                                                        child: Image.network(
                                                                            "${UrlRoutes.baseUrl}${item.productsList?.first.photos?[indexForPhotos]}")),
                                                                  );
                                                                }),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          item
                                                                  .productsList
                                                                  ?.first
                                                                  .name ??
                                                              "",
                                                          style:
                                                              AppFonts.w700s16,
                                                        ),
                                                        Text(
                                                          "${item.productsList?.first.quantity ?? 580} штук",
                                                          style: AppFonts
                                                              .w400s16
                                                              .copyWith(
                                                                  color: AppColors
                                                                      .accentTextColor),
                                                        )
                                                      ],
                                                    ),
                                                    Text(
                                                      "${item.productsList?.first.priceRub?.toStringAsFixed(1)} руб за единицу, итого ${calculateService.calculateTotalPriceInRuble(ruble: item.productsList?.first.priceRub ?? 0, totalCount: item.productsList?.first.quantity ?? 0).toStringAsFixed(2)} руб",
                                                      style: AppFonts.w400s16,
                                                    ),
                                                    TextButton(
                                                        onPressed: () {
                                                          GoRouter.of(context)
                                                              .pushNamed(
                                                            "searchScreen",
                                                            //     queryParameters: {
                                                            //   "orderId":
                                                            //       model[index]
                                                            //           .orderId
                                                            //           .toString()
                                                            // }
                                                          );
                                                        },
                                                        child: Text(
                                                          "Связаться",
                                                          style: AppFonts
                                                              .w400s16
                                                              .copyWith(
                                                                  color: AppColors
                                                                      .accentTextColor),
                                                        ))
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
                                ));
                              },
                              orElse: () {
                                return const SizedBox.shrink();
                              });
                        },
                      ),
                    )
            ],
          ),
        ),
      )),
    );
  }

  void _showAuctionDetail(
      {required BuildContext context,
      required String auctionId,
      required String manufacturerId,
      required double bidPrice,
      required String currencyCode}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
      ),
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.3, // adjust the height as needed
          minChildSize: 0.3,
          maxChildSize: 0.5,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Сделайте вашу ставку",
                      style: AppFonts.w700s18,
                    ),
                    Text(
                      "Помните, вы можете сделать не более 3х ставок\nМинимальная ставка – 5.50\$",
                      style: AppFonts.w700s16.copyWith(
                          fontFamily: "SF Pro",
                          color: AppColors.regularGreyColor),
                    ),
                    TextField(
                      onChanged: (value) {
                        // print(value);
                        print(bidPriceController.text);
                      },
                      controller: bidPriceController,
                      textAlign: TextAlign.center,
                      style: AppFonts.w700s20
                          .copyWith(color: AppColors.accentTextColor),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: CustomButton(
                          text: "Отправить",
                          onPressed: () {
                            BlocProvider.of<AuctionBloc>(context).add(
                                AuctionEvent.makeBid(
                                    auctionId: auctionId,
                                    manufacturerId: manufacturerId,
                                    bidPrice: double.tryParse(
                                            bidPriceController.text) ??
                                        0,
                                    currencyCode: currencyCode));
                          }),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
