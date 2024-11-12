import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_appbar.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/confirm_tracking_stage_bloc/confirm_tracking_stage_bloc.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/order_tracking_bloc/order_tracking_bloc.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/orders_screen.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/widgets/comment_column.dart';
import 'package:inposhiv/features/tracking/presentation/screens/tracking_screen.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/end_of_tracking.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/stage1.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/stage2.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/stage3.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/stage4.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/stage5.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/stage6.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/stage7.dart';
import 'package:inposhiv/resources/resources.dart';

class DetailedTrackingScreen extends StatefulWidget {
  final String invoiceUuid;
  const DetailedTrackingScreen({super.key, required this.invoiceUuid});

  @override
  State<DetailedTrackingScreen> createState() => _DetailedTrackingScreenState();
}

class _DetailedTrackingScreenState extends State<DetailedTrackingScreen> {
  bool openedDetailedView = false;
  List<TrackingStatus> mockData = TrackingStatusData.data;
  int currentIndex = 0;
  TextEditingController firstStageCommentController = TextEditingController();
  final PageController _pageController = PageController();
  @override
  void initState() {
    orderTracking();
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
                    listener: (context, state) {},
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return const SizedBox.shrink();
                        },
                        loading: () => const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                        error: (errorText) => Center(
                          child: Text(errorText),
                        ),
                        loaded: (model) {
                          return Expanded(
                            child: openedDetailedView
                                ? Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 65.h, top: 20.h),
                                    child: PageView(
                                      controller: _pageController,
                                      onPageChanged: (index) {
                                        setState(() {
                                          currentIndex = index;
                                        });
                                      },
                                      children: [
                                        Stage1(
                                          controller:
                                              firstStageCommentController,
                                          onTap: () {
                                            confirmTrackingStage(
                                                invoiceId: widget.invoiceUuid,
                                                body: {
                                                  "invoiceUuid": "string",
                                                  "orderId": 1,
                                                  "activeStage": "STAGE1",
                                                  "allChecks": ["string"],
                                                  "allComments": [
                                                    {
                                                      "orderStage": "STAGE1",
                                                      "content": "string"
                                                    }
                                                  ]
                                                });
                                            if (currentIndex < 1) {
                                              _pageController.nextPage(
                                                duration: const Duration(
                                                    milliseconds: 300),
                                                curve: Curves.easeInOut,
                                              );
                                            } else {}
                                          },
                                        ),
                                        Stage2(
                                          currentIndexOfData: 10,
                                          onTap: () {
                                            if (currentIndex < 1) {
                                              _pageController.nextPage(
                                                duration: const Duration(
                                                    milliseconds: 300),
                                                curve: Curves.easeInOut,
                                              );
                                            } else {}
                                          },
                                        ),
                                        Stage3(
                                          currentIndexOfData: 20,
                                          onTap: () {
                                            if (currentIndex < 1) {
                                              _pageController.nextPage(
                                                duration: const Duration(
                                                    milliseconds: 300),
                                                curve: Curves.easeInOut,
                                              );
                                            } else {}
                                          },
                                        ),
                                        Stage4(
                                          currentIndexOfData: 30,
                                          onTap: () {
                                            if (currentIndex < 1) {
                                              _pageController.nextPage(
                                                duration: const Duration(
                                                    milliseconds: 300),
                                                curve: Curves.easeInOut,
                                              );
                                            } else {}
                                          },
                                        ),
                                        Stage5(
                                          currentIndexOfData: 40,
                                          onTap: () {
                                            if (currentIndex < 1) {
                                              _pageController.nextPage(
                                                duration: const Duration(
                                                    milliseconds: 300),
                                                curve: Curves.easeInOut,
                                              );
                                            } else {}
                                          },
                                        ),
                                        Stage6(
                                          currentIndexOfData: 50,
                                          onTap: () {
                                            if (currentIndex < 1) {
                                              _pageController.nextPage(
                                                duration: const Duration(
                                                    milliseconds: 300),
                                                curve: Curves.easeInOut,
                                              );
                                            } else {}
                                          },
                                        ),
                                        Stage7(
                                          onTap: () {
                                            if (currentIndex < 1) {
                                              _pageController.nextPage(
                                                duration: const Duration(
                                                    milliseconds: 300),
                                                curve: Curves.easeInOut,
                                              );
                                            } else {}
                                          },
                                        ),
                                        const EndOfTracking()
                                        // Добавьте другие этапы по мере необходимости
                                      ],
                                    ),
                                  )
                                : Column(
                                    children: [
                                      Text("Отслеживайте ваш заказ",
                                          style: AppFonts.w700s36),
                                      Expanded(
                                        child: ListView.separated(
                                          itemCount:
                                              TrackingStatusData.data.length,
                                          separatorBuilder: (context, index) =>
                                              const Divider(
                                                  color: AppColors
                                                      .borderColorGrey),
                                          itemBuilder: (context, index) {
                                            final currentItem = mockData[index];
                                            return Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 8.h,
                                                  horizontal: 10.w),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    currentItem.steps,
                                                    style: AppFonts.w400s16
                                                        .copyWith(
                                                      color: index < 5
                                                          ? AppColors
                                                              .accentTextColor
                                                          : AppColors
                                                              .regularGreyColor,
                                                    ),
                                                  ),
                                                  SvgPicture.asset(
                                                    SvgImages.progress,
                                                    color: currentItem.isDone
                                                        ? AppColors
                                                            .accentTextColor
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
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
              Positioned(
                bottom: 10.h,
                left: 0.w, // Adding some padding if needed
                right: 0.w,
                child: CustomButton(
                  text: openedDetailedView
                      ? "Показать все этапы"
                      : "Показать подробно",
                  onPressed: () {
                    setState(() {
                      openedDetailedView = !openedDetailedView;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void confirmTrackingStage(
      {required String invoiceId, required Map<String, dynamic> body}) {
    BlocProvider.of<ConfirmTrackingStageBloc>(context).add(
        ConfirmTrackingStageEvent.confirmStage(
            invoiceUuid: invoiceId, body: body));
  }
}
