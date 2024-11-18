import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/confirm_tracking_stage_bloc/confirm_tracking_stage_bloc.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/order_tracking_bloc/order_tracking_bloc.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/orders_screen.dart';

import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailedTrackingScreen extends StatefulWidget {
  final String invoiceUuid;
  const DetailedTrackingScreen({super.key, required this.invoiceUuid});

  @override
  State<DetailedTrackingScreen> createState() => _DetailedTrackingScreenState();
}

class _DetailedTrackingScreenState extends State<DetailedTrackingScreen> {
  bool openedDetailedView = false;
  List<TrackingStatus> mockData = TrackingStatusData.data;

  TextEditingController firstStageCommentController = TextEditingController();

  PlatformFile? paymentCheck;
  final preferences = locator<SharedPreferences>();
  bool? isCustomer;

  @override
  void initState() {
    print("invoice Id is ${widget.invoiceUuid}");
    orderTracking();
    isCustomer = preferences.getBool("isCustomer");
    super.initState();
  }

  void orderTracking() {
    BlocProvider.of<OrderTrackingBloc>(context)
        .add(OrderTrackingEvent.orderTracking(invoiceId: widget.invoiceUuid));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSearchWidget(
                      onTap: () {
                        GoRouter.of(context).pop();
                      },
                      child: SvgPicture.asset(SvgImages.goback)),
                  BlocConsumer<OrderTrackingBloc, OrderTrackingState>(
                    listener: (context, state) {
                      state.maybeWhen(
                          loaded: (model) {
                            final activeStageId = model.activeStageId ?? 0;

                            setState(() {
                              for (var item in mockData) {
                                item.isDone = false;
                              }

                              for (int i = 0;
                                  i < activeStageId && i < mockData.length;
                                  i++) {
                                mockData[i].isDone = true;
                              }
                            });
                          },
                          orElse: () {});
                    },
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return Expanded(
                              child: Padding(
                            padding: EdgeInsets.only(bottom: 65.h, top: 20.h),
                            child: IntrinsicHeight(
                              child: Column(
                                children: [
                                  Text("Отслеживайте ваш заказ",
                                      style: AppFonts.w700s36),
                                  Expanded(
                                    child: ListView.separated(
                                      itemCount: mockData.length,
                                      separatorBuilder: (context, index) =>
                                          const Divider(
                                              color: AppColors.borderColorGrey),
                                      itemBuilder: (context, index) {
                                        final currentItem = mockData[index];
                                        return Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 8.h, horizontal: 10.w),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                currentItem.steps,
                                                style:
                                                    AppFonts.w400s16.copyWith(
                                                  color: currentItem.isDone
                                                      ? AppColors
                                                          .accentTextColor
                                                      : AppColors
                                                          .regularGreyColor,
                                                ),
                                              ),
                                              SvgPicture.asset(
                                                SvgImages.progress,
                                                color: currentItem.isDone
                                                    ? AppColors.accentTextColor
                                                    : AppColors
                                                        .regularGreyColor,
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ));
                        },
                        loading: () => const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                        error: (errorText) => Center(
                          child: Text(errorText),
                        ),
                        loaded: (model) {
                          // return Text("test");
                          return Expanded(
                            child: Column(
                              children: [
                                Text("Отслеживайте ваш заказ",
                                    style: AppFonts.w700s36),
                                Expanded(
                                  child: ListView.separated(
                                    itemCount: mockData.length,
                                    separatorBuilder: (context, index) =>
                                        const Divider(
                                            color: AppColors.borderColorGrey),
                                    itemBuilder: (context, index) {
                                      final currentItem = mockData[index];
                                      return InkWell(
                                        onTap: () {
                                          currentItem.isDone
                                              ? GoRouter.of(context).pushNamed(
                                                  "orderTracking",
                                                  extra: model)
                                              : null;
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 8.h, horizontal: 10.w),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                currentItem.steps,
                                                style:
                                                    AppFonts.w400s16.copyWith(
                                                  color: currentItem.isDone
                                                      ? AppColors
                                                          .accentTextColor
                                                      : AppColors
                                                          .regularGreyColor,
                                                ),
                                              ),
                                              SvgPicture.asset(
                                                SvgImages.progress,
                                                color: currentItem.isDone
                                                    ? AppColors.accentTextColor
                                                    : AppColors
                                                        .regularGreyColor,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
              // Positioned(
              //   bottom: 10.h,
              //   left: 0.w, // Adding some padding if needed
              //   right: 0.w,
              //   child: CustomButton(
              //     text: openedDetailedView
              //         ? "Показать все этапы"
              //         : "Показать подробно",
              //     onPressed: () {
              //       setState(() {
              //         openedDetailedView = !openedDetailedView;
              //       });
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  // void confirmTrackingStage(
  //     {required String invoiceId, required Map<String, dynamic> body}) {
  //   BlocProvider.of<ConfirmTrackingStageBloc>(context).add(
  //       ConfirmTrackingStageEvent.confirmStage(
  //           invoiceUuid: invoiceId, body: body));
  // }
}
