import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/auction_bloc/auction_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/get_detailed_auction_info_bloc/get_detailed_auction_info_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/screens/auction_screen.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_dialog.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/blocs/current_currency_bloc/current_currency_bloc.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/calculate_service.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:inposhiv/services/showdialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailedViewForManufacturerScreen extends StatefulWidget {
  final String auctionId;
  const DetailedViewForManufacturerScreen({super.key, required this.auctionId});

  @override
  State<DetailedViewForManufacturerScreen> createState() =>
      _DetailedViewForManufacturerScreenState();
}

class _DetailedViewForManufacturerScreenState
    extends State<DetailedViewForManufacturerScreen> {
  double? currency;
  double? totalPriceInDollar;
  CalculateService calculateService = CalculateService();
  final TextEditingController bidPriceController = TextEditingController();
  final preferences = locator<SharedPreferences>();
  String? auctionUid;
  int? auctionid;

  @override
  void initState() {
    getAuctionDetail();
    getCurrentCurrency();
    super.initState();
  }

  getCurrentCurrency() {
    BlocProvider.of<CurrentCurrencyBloc>(context)
        .add(const CurrentCurrencyEvent.getCurrentCurrencyEvent());
  }

  getAuctionDetail() {
    BlocProvider.of<GetDetailedAuctionInfoBloc>(context).add(
        GetDetailedAuctionInfoEvent.getAuctionDetails(
            auctionUuid: widget.auctionId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomSearchWidget(
                              onTap: () {
                                GoRouter.of(context).pop();
                              },
                              child: SvgPicture.asset(SvgImages.goback)),
                          CustomSearchWidget(
                              onTap: () {},
                              child: SvgPicture.asset(SvgImages.search))
                        ],
                      ),
                    ),
                    BlocListener<CurrentCurrencyBloc, CurrentCurrencyState>(
                      listener: (context, state) {
                        state.maybeWhen(
                            currencyLoaded: (model) {
                              setState(() {
                                currency = model.rate ?? 0;
                              });
                            },
                            orElse: () {});
                      },
                      child: const SizedBox.shrink(),
                    ),
                    BlocListener<AuctionBloc, AuctionState>(
                      listener: (context, state) {
                        state.maybeWhen(
                            loading: () => Showdialog.showLoaderDialog(context),
                            makeBidSuccess: (model) {
                              router.pop();
                              List<AuctionProcess>? auctionProcess =
                                  (model.auctionProcesses?.isNotEmpty ?? false)
                                      ? filterAuctionProccess(
                                          auctionProcesses:
                                              model.auctionProcesses ?? [],
                                          id: auctionid ?? 0)
                                      : null;
                              showDialog(
                                  context: context,
                                  builder: (context) => CustomDialog(
                                      title: "Ставка сделана!",
                                      description:
                                          "Благодарим за участие в аукционе! У вас осталось ${3 - ((auctionProcess != null) ? (auctionProcess.last.bidCount ?? 0) : 3)} клика. Заказчик свяжется с вами в случае выбора Вас.",
                                      button: CustomButton(
                                          text: "Понятно",
                                          onPressed: () {
                                            router.pop();
                                          })));
                            },
                            makeBidError: (errorText) {
                              router.pop();
                            },
                            orElse: () {});
                      },
                      child: const SizedBox.shrink(),
                    ),
                    BlocConsumer<GetDetailedAuctionInfoBloc,
                        GetDetailedAuctionInfoState>(
                      listener: (context, state) {
                       
                        state.maybeWhen(
                            loaded: (auctionModel) => setState(() {
                                  auctionUid = auctionModel.auctionUuid;
                                  if ((auctionModel
                                          .auctionProcesses?.isNotEmpty ??
                                      false)) {
                                    auctionid = auctionModel.auctionProcesses
                                            ?.first.auctionId ??
                                        0;
                                  }
                                }),
                            orElse: () {});
                      },
                      builder: (context, state) {
                        return state.maybeWhen(
                            loading: () => const Center(
                                  child: CircularProgressIndicator.adaptive(),
                                ),
                            error: (errorText) {
                              return Text(errorText);
                            },
                            loaded: (auctionModel) {
                              return Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 10.h),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: AppColors.cardsColor,
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(10.r)),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.w, vertical: 10.h),
                                          child: SingleChildScrollView(
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
                                                        itemCount: 1,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                            width: 10.w,
                                                          );
                                                        },
                                                        itemBuilder: (context,
                                                            indexForPhotos) {
                                                          final List<String>
                                                              fullPhotoUrls =
                                                              auctionModel
                                                                      .productsList
                                                                      ?.first
                                                                      .photos
                                                                      ?.map((url) =>
                                                                          "${UrlRoutes.baseUrl}$url")
                                                                      .toList() ??
                                                                  [];
                                                          return InkWell(
                                                            onTap: () {
                                                              GoRouter.of(
                                                                      context)
                                                                  .pushNamed(
                                                                      "seeImage",
                                                                      extra:
                                                                          fullPhotoUrls);
                                                            },
                                                            child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(6
                                                                            .r),
                                                                child: Image
                                                                    .network(""
                                                                        "${UrlRoutes.baseUrl}${auctionModel.productsList?.first.photos?[indexForPhotos]}")),
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
                                                        auctionModel
                                                                .productsList
                                                                ?.first
                                                                .name ??
                                                            "",
                                                        style: AppFonts.w700s16,
                                                      ),
                                                    ),
                                                    Text(
                                                      "${auctionModel.productsList?.first.quantity ?? 0} штук",
                                                      style: AppFonts.w400s16
                                                          .copyWith(
                                                              color: AppColors
                                                                  .accentTextColor),
                                                    )
                                                  ],
                                                ),
                                                Text(
                                                  "${auctionModel.productsList?.first.priceRub?.toStringAsFixed(1)} руб за ед. , итого ${calculateService.calculateTotalPriceInRuble(ruble: auctionModel.productsList?.first.priceRub ?? 0, totalCount: auctionModel.productsList?.first.quantity ?? 0).toStringAsFixed(2)} руб",
                                                  style: AppFonts.w400s16,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: RefreshIndicator.adaptive(
                                        onRefresh: () => getAuctionDetail(),
                                        child: ListView.separated(
                                            itemBuilder: (context, index) {
                                              final currentItem = auctionModel
                                                  .auctionProcesses?[index];
                                              return Container(
                                                decoration: BoxDecoration(
                                                    color: AppColors.cardsColor,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10.r))),
                                                child: Padding(
                                                  padding: EdgeInsets.all(10.h),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          const CircleAvatar(
                                                            backgroundImage:
                                                                AssetImage(Images
                                                                    .sewingMachine),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 5.w),
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(60
                                                                              .r),
                                                                  border: Border.all(
                                                                      width: 1.w,
                                                                      color: AuctionScreen
                                                                          .statusColor(
                                                                              status:
                                                                                  1))),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(8.0
                                                                            .w),
                                                                child: Text(
                                                                  AuctionScreen
                                                                      .trustStatus(
                                                                          status:
                                                                              1),
                                                                  style: AppFonts.w400s16.copyWith(
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
                                                        padding:
                                                            EdgeInsets.symmetric(
                                                                vertical: 10.h),
                                                        child: Row(
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          5.w),
                                                              child: SvgPicture
                                                                  .asset(
                                                                SvgImages.star,
                                                                height: 16.h,
                                                                width: 16.w,
                                                              ),
                                                            ),
                                                            Text(
                                                              "${40 ?? 0}",
                                                              style: AppFonts
                                                                  .w700s16,
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Text(
                                                        "Выполнено в Inposhiv ${40} заказов.",
                                                        style: AppFonts.w400s16
                                                            .copyWith(
                                                                color: AppColors
                                                                    .accentTextColor),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "${currentItem?.bidPrice}\$",
                                                                style: AppFonts
                                                                    .w700s18,
                                                              ),
                                                              Text(
                                                                "${((currency ?? 0) * (currentItem?.bidPrice ?? 0)).toStringAsFixed(2)} руб",
                                                                style: AppFonts
                                                                    .w400s16,
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 40.w),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "${currentItem?.bidPrice}\$",
                                                                  style: AppFonts
                                                                      .w700s18,
                                                                ),
                                                                Text(
                                                                  "${((currency ?? 0) * (currentItem?.bidPrice ?? 0)).toStringAsFixed(2)} руб",
                                                                  style: AppFonts
                                                                      .w400s16,
                                                                ),
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                height: 10.h,
                                              );
                                            },
                                            itemCount: auctionModel
                                                    .auctionProcesses?.length ??
                                                0),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            orElse: () {
                              return const SizedBox.shrink();
                            });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 1.w, color: AppColors.borderColorGrey),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r))),
              child: Padding(
                padding: EdgeInsets.only(top: 10.h, left: 15.w, right: 15.w),
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
                      keyboardType: TextInputType.number,
                      onChanged: (value) {},
                      controller: bidPriceController,
                      textAlign: TextAlign.center,
                      style: AppFonts.w700s20
                          .copyWith(color: AppColors.accentTextColor),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: CustomButton(
                          text: "Отправить",
                          onPressed: () {
                            BlocProvider.of<AuctionBloc>(context).add(
                                AuctionEvent.makeBid(
                                    auctionId: auctionUid ?? "",
                                    manufacturerId:
                                        preferences.getString("customerId") ??
                                            "",
                                    bidPrice: double.tryParse(
                                            bidPriceController.text) ??
                                        0,
                                    currencyCode: "USD"));
                          }),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<AuctionProcess> filterAuctionProccess(
      {required List<AuctionProcess> auctionProcesses, required int id}) {
    return auctionProcesses
        .where((auctionProcess) => auctionProcess.auctionId == id)
        .toList();
  }
}