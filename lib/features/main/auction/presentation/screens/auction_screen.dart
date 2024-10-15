import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/auction/data/mocked_aution_data.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/auction_bloc/auction_bloc.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_drawer.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/main_appbar.dart';
import 'package:inposhiv/resources/resources.dart';
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
  final TextEditingController controller = TextEditingController();
  @override
  void initState() {
    BlocProvider.of<AuctionBloc>(context)
        .add(const AuctionEvent.getAuctionsList());
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<MockedAuctionModel> data = MockedAutionData.data;
    int value = 0;
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
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: value == 1
                  ? Container(
                      decoration: BoxDecoration(
                          color: AppColors.cardsColor,
                          borderRadius: BorderRadiusDirectional.circular(10.r)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10.h),
                              child: SizedBox(
                                height: 60.h,
                                child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 7,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                        width: 10.w,
                                      );
                                    },
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          GoRouter.of(context)
                                              .pushNamed("seeImage", extra: [
                                            Images.good1,
                                            Images.girl,
                                            Images.good2
                                          ]);
                                        },
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(6.r),
                                            child: Image.asset(Images.good1)),
                                      );
                                    }),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Хлопковая блузка",
                                  style: AppFonts.w700s16,
                                ),
                                Text(
                                  "580 штук",
                                  style: AppFonts.w400s16.copyWith(
                                      color: AppColors.accentTextColor),
                                )
                              ],
                            ),
                            Text(
                              "600 руб за единицу, итого 348 000 руб",
                              style: AppFonts.w400s16,
                            )
                          ],
                        ),
                      ),
                    )
                  : Text(
                      "Мои аукционы",
                      style: AppFonts.w700s36,
                    ),
            ),
            BlocConsumer<AuctionBloc, AuctionState>(
              listener: (context, state) {
                state.maybeWhen(
                    makeBidSuccess: (model) {
                      GoRouter.of(context).pop();
                      BlocProvider.of<AuctionBloc>(context)
                          .add(const AuctionEvent.getAuctionsList());
                    },
                    orElse: () {});
              },
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => const Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                  getAuctionsLoaded: (model) {
                    return Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            final item = model[index];
                            return value == 1
                                ? Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.cardsColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.r))),
                                    // child: Padding(
                                    //   padding: EdgeInsets.all(10.h),
                                    //   child: Column(
                                    //     crossAxisAlignment:
                                    //         CrossAxisAlignment.start,
                                    //     children: [
                                    //       Row(
                                    //         children: [
                                    //           CircleAvatar(
                                    //             backgroundImage:
                                    //                 AssetImage(item.logo),
                                    //           ),
                                    //           Padding(
                                    //             padding:
                                    //                 EdgeInsets.only(left: 5.w),
                                    //             child: Container(
                                    //               decoration: BoxDecoration(
                                    //                   borderRadius:
                                    //                       BorderRadius.circular(
                                    //                           60.r),
                                    //                   border: Border.all(
                                    //                       width: 1.w,
                                    //                       color: AuctionScreen
                                    //                           .statusColor(
                                    //                               status: item
                                    //                                   .trustStatuses))),
                                    //               child: Padding(
                                    //                 padding:
                                    //                     EdgeInsets.all(8.0.w),
                                    //                 child: Text(
                                    //                   AuctionScreen.trustStatus(
                                    //                       status: item
                                    //                           .trustStatuses),
                                    //                   style: AppFonts.w400s16.copyWith(
                                    //                       color: AuctionScreen
                                    //                           .statusColor(
                                    //                               status: item
                                    //                                   .trustStatuses),
                                    //                       fontFamily: "SF Pro"),
                                    //                 ),
                                    //               ),
                                    //             ),
                                    //           ),
                                    //         ],
                                    //       ),
                                    //       Padding(
                                    //         padding: EdgeInsets.symmetric(
                                    //             vertical: 10.h),
                                    //         child: Row(
                                    //           children: [
                                    //             Text(
                                    //               item.location,
                                    //               style: AppFonts.w700s20
                                    //                   .copyWith(
                                    //                       color: AppColors
                                    //                           .accentTextColor),
                                    //             ),
                                    //             const Spacer(),
                                    //             Padding(
                                    //               padding: EdgeInsets.symmetric(
                                    //                   horizontal: 5.w),
                                    //               child: SvgPicture.asset(
                                    //                 SvgImages.star,
                                    //                 height: 16.h,
                                    //                 width: 16.w,
                                    //               ),
                                    //             ),
                                    //             Text(
                                    //               "${4.96}",
                                    //               style: AppFonts.w700s16,
                                    //             )
                                    //           ],
                                    //         ),
                                    //       ),
                                    //       Text(
                                    //         "Выполнено в Inposhiv ${item.quantityOfOrders} заказов.",
                                    //         style: AppFonts.w400s16.copyWith(
                                    //             color:
                                    //                 AppColors.accentTextColor),
                                    //       ),
                                    //       Row(
                                    //         children: [
                                    //           Column(
                                    //             crossAxisAlignment:
                                    //                 CrossAxisAlignment.start,
                                    //             children: [
                                    //               Text(
                                    //                 "${item.retailPrice}\$",
                                    //                 style: AppFonts.w700s18,
                                    //               ),
                                    //               Text(
                                    //                 "580 руб",
                                    //                 style: AppFonts.w400s16,
                                    //               ),
                                    //             ],
                                    //           ),
                                    //           Padding(
                                    //             padding:
                                    //                 EdgeInsets.only(left: 40.w),
                                    //             child: Column(
                                    //               crossAxisAlignment:
                                    //                   CrossAxisAlignment.start,
                                    //               children: [
                                    //                 Text(
                                    //                   "${3018}\$",
                                    //                   style: AppFonts.w700s18,
                                    //                 ),
                                    //                 Text(
                                    //                   "312 000 руб",
                                    //                   style: AppFonts.w400s16,
                                    //                 ),
                                    //               ],
                                    //             ),
                                    //           )
                                    //         ],
                                    //       ),
                                    //       Padding(
                                    //         padding: EdgeInsets.symmetric(
                                    //             vertical: 10.h),
                                    //         child: SizedBox(
                                    //           height: 40.h,
                                    //           width: double.infinity,
                                    //           child: MaterialButton(
                                    //             onPressed: () {},
                                    //             color:
                                    //                 AppColors.buttonGreenColor,
                                    //             shape: RoundedRectangleBorder(
                                    //                 borderRadius:
                                    //                     BorderRadius.circular(
                                    //                         10.r)),
                                    //             child: Text(
                                    //               "Связаться",
                                    //               style: AppFonts.w400s16
                                    //                   .copyWith(
                                    //                       color: AppColors
                                    //                           .accentTextColor),
                                    //             ),
                                    //           ),
                                    //         ),
                                    //       )
                                    //     ],
                                    //   ),
                                    // ),
                                  )
                                : InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedAuction = item;
                                      });
                                      _showAuctionDetail(
                                          context: context,
                                          auctionId:
                                              selectedAuction?.auctionUuid ??
                                                  "",
                                          manufacturerId:
                                              preferences.getString("userId") ??
                                                  "",
                                          bidPrice: double.tryParse(
                                                  controller.text) ??
                                              0,
                                          currencyCode: "USD");
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: AppColors.cardsColor,
                                          borderRadius:
                                              BorderRadiusDirectional.circular(
                                                  10.r)),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.w, vertical: 10.h),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 10.h),
                                              child: SizedBox(
                                                height: 60.h,
                                                child: ListView.separated(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount: 7,
                                                    separatorBuilder:
                                                        (context, index) {
                                                      return SizedBox(
                                                        width: 10.w,
                                                      );
                                                    },
                                                    itemBuilder:
                                                        (context, index) {
                                                      return InkWell(
                                                        onTap: () {
                                                          GoRouter.of(context)
                                                              .pushNamed(
                                                                  "seeImage",
                                                                  extra: [
                                                                Images.good1,
                                                                Images.girl,
                                                                Images.good2
                                                              ]);
                                                        },
                                                        child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6.r),
                                                            child: Image.asset(
                                                                Images.good1)),
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
                                                  "Хлопковая блузка",
                                                  style: AppFonts.w700s16,
                                                ),
                                                Text(
                                                  "580 штук",
                                                  style: AppFonts.w400s16
                                                      .copyWith(
                                                          color: AppColors
                                                              .accentTextColor),
                                                )
                                              ],
                                            ),
                                            Text(
                                              "600 руб за единицу, итого 348 000 руб",
                                              style: AppFonts.w400s16,
                                            ),
                                            TextButton(
                                                onPressed: () {
                                                  GoRouter.of(context)
                                                      .pushNamed("chatScreen",
                                                          queryParameters: {
                                                        "orderId": model[index]
                                                            .orderId
                                                            .toString()
                                                      });
                                                },
                                                child: Text(
                                                  "Связаться",
                                                  style: AppFonts.w400s16
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
                    ));
                  },
                  orElse: () {
                    return const SizedBox.shrink();
                  },
                );
              },
            )
          ],
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
                                    bidPrice: bidPrice,
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
