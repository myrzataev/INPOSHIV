import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';
import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/get_auction_members_bloc/get_auction_members_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/get_detailed_auction_info_bloc/get_detailed_auction_info_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/screens/auction_screen.dart';
import 'package:inposhiv/features/main/chat/presentation/blocs/chat_bloc/chat_bloc.dart';
import 'package:inposhiv/features/main/chat/presentation/blocs/create_chat_room_bloc/create_chat_room_bloc.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/blocs/current_currency_bloc/current_currency_bloc.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/calculate_service.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailedViewScreen extends StatefulWidget {
  final String auctionUuid;
  const DetailedViewScreen({super.key, required this.auctionUuid});

  @override
  State<DetailedViewScreen> createState() => _DetailedViewScreenState();
}

class _DetailedViewScreenState extends State<DetailedViewScreen> {
  SharedPreferences preferences = locator<SharedPreferences>();
  double? currency;
  CalculateService calculateService = CalculateService();
  double? totalPriceInDollar;
  AuctionModel? auctionModel;
  @override
  void initState() {
    getAuctionDetails();
    callBloc();
    getCurrency();
    super.initState();
  }

  getAuctionDetails() {
    BlocProvider.of<GetDetailedAuctionInfoBloc>(context).add(
        GetDetailedAuctionInfoEvent.getAuctionDetails(
            auctionUuid: widget.auctionUuid));
  }

  callBloc() {
    BlocProvider.of<GetAuctionMembersBloc>(context).add(
        GetAuctionMembersEvent.getAuctionMembersEvent(
            auctionId: widget.auctionUuid));
  }

  getCurrency() {
    BlocProvider.of<CurrentCurrencyBloc>(context)
        .add(const CurrentCurrencyEvent.getCurrentCurrencyEvent());
  }

  @override
  Widget build(BuildContext context) {
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
              BlocConsumer<GetDetailedAuctionInfoBloc,
                  GetDetailedAuctionInfoState>(
                listener: (context, state) {
                  state.maybeWhen(
                      loaded: (loadedAuctionModel) {
                        setState(() {
                          auctionModel = loadedAuctionModel;
                        });
                      },
                      orElse: () {});
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () => const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                    error: (errorText) => Center(
                      child: Text(errorText),
                    ),
                    loaded: (auctionModel) {
                      return BlocListener<CreateChatRoomBloc,
                          CreateChatRoomState>(
                        listener: (context, state) {
                          state.maybeWhen(
                              createdChatRoomSuccess: (createChatModel) {
                                GoRouter.of(context)
                                    .pushNamed("chatScreen", queryParameters: {
                                  "orderId": createChatModel.orderId.toString(),
                                  "receipentUuid":
                                      createChatModel.recipientUuid,
                                  "chatUuid": createChatModel.chatUuid
                                });
                              },
                              orElse: () {});
                        },
                        child: BlocListener<CurrentCurrencyBloc,
                            CurrentCurrencyState>(
                          listener: (context, state) {
                            state.maybeWhen(
                                currencyLoaded: (model) => setState(() {
                                      currency = model.rate ?? 0;
                                      totalPriceInDollar = calculateService
                                          .calculateTotalPriceInRuble(
                                              ruble: auctionModel.productsList
                                                      ?.first.priceUsd
                                                      ?.toDouble() ??
                                                  0,
                                              totalCount: auctionModel
                                                      .productsList
                                                      ?.first
                                                      .quantity ??
                                                  0);
                                    }),
                                orElse: () {});
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.cardsColor,
                                borderRadius:
                                    BorderRadiusDirectional.circular(10.r),
                              ),
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
                                          itemCount: auctionModel.productsList
                                                  ?.first.photos?.length ??
                                              0,
                                          separatorBuilder:
                                              (context, indexForPhotos) {
                                            return SizedBox(width: 10.w);
                                          },
                                          itemBuilder:
                                              (context, indexForPhotos) {
                                            final List<String> fullPhotoUrls =
                                                auctionModel.productsList?.first
                                                        .photos
                                                        ?.map((url) =>
                                                            "${UrlRoutes.baseUrl}$url")
                                                        .toList() ??
                                                    [];

                                            return InkWell(
                                              onTap: () {
                                                GoRouter.of(context).pushNamed(
                                                    "seeImage",
                                                    extra: fullPhotoUrls);
                                              },
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(6.r),
                                                child: CachedNetworkImage(
                                                  imageUrl:
                                                      "${UrlRoutes.baseUrl}${auctionModel.productsList?.first.photos?[indexForPhotos]}",
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            auctionModel
                                                    .productsList?.first.name ??
                                                "",
                                            style: AppFonts.w700s16,
                                          ),
                                        ),
                                        Text(
                                          "${auctionModel.productsList?.first.quantity ?? 0} штук",
                                          style: AppFonts.w400s16.copyWith(
                                            color: AppColors.accentTextColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "${auctionModel.productsList?.first.priceUsd?.toStringAsFixed(2) ?? ""} \$",
                                          style: AppFonts.w400s16.copyWith(
                                              color: AppColors.accentTextColor),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 84.w),
                                          child: Text(
                                            "${calculateService.calculateTotalPriceInRuble(ruble: auctionModel.productsList?.first.priceUsd?.toDouble() ?? 0, totalCount: auctionModel.productsList?.first.quantity ?? 0).toStringAsFixed(2)} \$",
                                            style: AppFonts.w400s16.copyWith(
                                                color:
                                                    AppColors.accentTextColor),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "${auctionModel.productsList?.first.priceRub?.toStringAsFixed(2) ?? ""} руб",
                                          style: AppFonts.w400s16,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 48.w),
                                          child: Text(
                                            "${calculateService.calculateTotalPriceInRuble(ruble: auctionModel.productsList?.first.priceRub?.toDouble() ?? 0, totalCount: totalPriceInDollar?.toInt() ?? 0).toStringAsFixed(2)} руб",
                                            style: AppFonts.w400s16,
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "${auctionModel.productsList?.first.description.toString()}",
                                      style: AppFonts.w400s16.copyWith(
                                          color: AppColors.accentTextColor),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    orElse: () {
                      return const SizedBox.shrink();
                    },
                  );
                },
              ),
              Expanded(child:
                  BlocBuilder<GetAuctionMembersBloc, GetAuctionMembersState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      loading: () => const Center(
                            child: CircularProgressIndicator.adaptive(),
                          ),
                      auctionMembersError: (errorText) => Text(errorText),
                      auctionMembersLoaded: (auctionMembersModel) {
                        if (auctionMembersModel.isEmpty) {
                          return const Center(
                            child: Text("Пока никто не откликался"),
                          );
                        } else {
                          return RefreshIndicator.adaptive(
                            onRefresh: () async => callBloc(),
                            child: ListView.separated(
                                itemBuilder: (context, index) {
                                  final currentItem =
                                      auctionMembersModel[index];
                                  return Container(
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
                                                padding:
                                                    EdgeInsets.only(left: 5.w),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              60.r),
                                                      border: Border.all(
                                                          width: 1.w,
                                                          color: AuctionScreen
                                                              .statusColor(
                                                                  status: 1))),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(8.0.w),
                                                    child: Text(
                                                      AuctionScreen.trustStatus(
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
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 5.w),
                                                  child: SvgPicture.asset(
                                                    SvgImages.star,
                                                    height: 16.h,
                                                    width: 16.w,
                                                  ),
                                                ),
                                                Text(
                                                  "${currentItem.rating ?? 0}",
                                                  style: AppFonts.w700s16,
                                                )
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "Выполнено в Inposhiv ${currentItem.ordersQuantity} заказов.",
                                            style: AppFonts.w400s16.copyWith(
                                                color:
                                                    AppColors.accentTextColor),
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "${currentItem.orderPrice}\$",
                                                    style: AppFonts.w700s18,
                                                  ),
                                                  Text(
                                                    "${((currency ?? 0) * (currentItem.orderPrice ?? 0)).toStringAsFixed(2)} руб",
                                                    style: AppFonts.w400s16,
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 40.w),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "${currentItem.orderSumPrice}\$",
                                                      style: AppFonts.w700s18,
                                                    ),
                                                    Text(
                                                      "${((currency ?? 0) * (currentItem.orderSumPrice ?? 0)).toStringAsFixed(2)} руб",
                                                      style: AppFonts.w400s16,
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          BlocListener<CreateChatRoomBloc,
                                              CreateChatRoomState>(
                                            listener: (context, state) {
                                              state.maybeWhen(
                                                  createdChatRoomSuccess:
                                                      (model) {
                                                    context.goNamed(
                                                        "chatScreen",
                                                        queryParameters: {
                                                          "receipentUuid": model
                                                              .recipientUuid,
                                                          "chatUuid":
                                                              model.chatUuid,
                                                          "orderId":
                                                              auctionModel
                                                                  ?.orderId
                                                                  .toString()
                                                        });
                                                  },
                                                  orElse: () {});
                                            },
                                            child: Padding(
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
                                                        .add(CreateChatRoomEvent
                                                            .createChatRoom(
                                                                chatData: {
                                                          "userUid": preferences
                                                              .getString(
                                                                  "userId"),
                                                          "senderUuid":
                                                              preferences
                                                                  .getString(
                                                                      "userId"),
                                                          "recipientUuid":
                                                              currentItem
                                                                  .manufacturerUuid,
                                                          "orderId":
                                                              auctionModel
                                                                  ?.orderId
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
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: 5.h,
                                  );
                                },
                                itemCount: auctionMembersModel.length),
                          );
                        }
                      },
                      orElse: () {
                        return InkWell(
                          onTap: () => print(state),
                          child: Container(
                            color: Colors.red,
                            child: Text("Or else"),
                          ),
                        );
                      });
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
