import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/confirm_tracking_stage_bloc/confirm_tracking_stage_bloc.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/order_tracking_bloc/order_tracking_bloc.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/orders_screen.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/end_of_tracking.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/part2stage6.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage1.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage2.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage3.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage4.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage5.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage6.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage7.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/stage7part2.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/manufacturer/end_of_tracking_for_manufacturer.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/manufacturer/stage1_for_manufacturer.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/manufacturer/stage2_for_manufacturer.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/manufacturer/stage3_for_manufacturer.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/manufacturer/stage4_for_manufacturer.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/manufacturer/stage5_for_manufacturer.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/manufacturer/stage6_for_manufacturer.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/manufacturer/stage7_for_manufacturer.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/manufacturer/stage8_for_manufacturer.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/pick_file_service.dart';
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
  int currentIndex = 0;
  TextEditingController firstStageCommentController = TextEditingController();
  final PageController _pageController = PageController();
  PlatformFile? paymentCheck;
  final preferences = locator<SharedPreferences>();
  bool? isCustomer;

  @override
  void initState() {
    // orderTracking();
    isCustomer = preferences.getBool("isCustomer");
    super.initState();
  }

  // void orderTracking() {
  //   BlocProvider.of<OrderTrackingBloc>(context)
  //       .add(OrderTrackingEvent.orderTracking(invoiceId: widget.invoiceUuid));
  // }

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
                          return Expanded(
                              child: Padding(
                            padding: EdgeInsets.only(bottom: 65.h, top: 20.h),
                            child: IntrinsicHeight(
                              child: PageView(
                                controller: _pageController,
                                onPageChanged: (index) {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                },
                                children: (isCustomer ?? true)
                                    ? customerWidgets()
                                        .map((widget) => Center(child: widget))
                                        .toList()
                                    : manufacturerWidgets()
                                        .map((widget) => Center(child: widget))
                                        .toList(),
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
                          return Text("test");
                          // return Expanded(
                          //   child: openedDetailedView
                          //       ? Padding(
                          //           padding: EdgeInsets.only(
                          //               bottom: 65.h, top: 20.h),
                          //           child: PageView(
                          //             controller: _pageController,
                          //             onPageChanged: (index) {
                          //               setState(() {
                          //                 currentIndex = index;
                          //               });
                          //             },
                          //             children: [
                          //               Stage1(
                          //                 controller:
                          //                     firstStageCommentController,
                          //                 onTap: () {
                          //                   confirmTrackingStage(
                          //                       invoiceId: widget.invoiceUuid,
                          //                       body: {
                          //                         "invoiceUuid": "string",
                          //                         "orderId": 1,
                          //                         "activeStage": "STAGE1",
                          //                         "allChecks": ["string"],
                          //                         "allComments": [
                          //                           {
                          //                             "orderStage": "STAGE1",
                          //                             "content": "string"
                          //                           }
                          //                         ]
                          //                       });
                          //                   if (currentIndex < 1) {
                          //                     _pageController.nextPage(
                          //                       duration: const Duration(
                          //                           milliseconds: 300),
                          //                       curve: Curves.easeInOut,
                          //                     );
                          //                   } else {}
                          //                 },
                          //               ),
                          //               Stage2ForCustomer(
                          //                 currentIndexOfData: 10,
                          //                 onTap: () {
                          //                   if (currentIndex < 1) {
                          //                     _pageController.nextPage(
                          //                       duration: const Duration(
                          //                           milliseconds: 300),
                          //                       curve: Curves.easeInOut,
                          //                     );
                          //                   } else {}
                          //                 },
                          //               ),
                          //               Stage3ForCustomer(
                          //                 currentIndexOfData: 20,
                          //                 onTap: () {
                          //                   if (currentIndex < 1) {
                          //                     _pageController.nextPage(
                          //                       duration: const Duration(
                          //                           milliseconds: 300),
                          //                       curve: Curves.easeInOut,
                          //                     );
                          //                   } else {}
                          //                 },
                          //               ),
                          //               Stage4ForCustomer(
                          //                 currentIndexOfData: 30,
                          //                 onTap: () {
                          //                   if (currentIndex < 1) {
                          //                     _pageController.nextPage(
                          //                       duration: const Duration(
                          //                           milliseconds: 300),
                          //                       curve: Curves.easeInOut,
                          //                     );
                          //                   } else {}
                          //                 },
                          //               ),
                          //               Stage5ForCustomer(
                          //                 currentIndexOfData: 40,
                          //                 onTap: () {
                          //                   if (currentIndex < 1) {
                          //                     _pageController.nextPage(
                          //                       duration: const Duration(
                          //                           milliseconds: 300),
                          //                       curve: Curves.easeInOut,
                          //                     );
                          //                   } else {}
                          //                 },
                          //               ),
                          //               Stage6ForCustomer(
                          //                 currentIndexOfData: 50,
                          //                 onTap: () {
                          //                   if (currentIndex < 1) {
                          //                     _pageController.nextPage(
                          //                       duration: const Duration(
                          //                           milliseconds: 300),
                          //                       curve: Curves.easeInOut,
                          //                     );
                          //                   } else {}
                          //                 },
                          //               ),
                          //               Stage7ForCustomer(
                          //                 onTap: () {
                          //                   if (currentIndex < 1) {
                          //                     _pageController.nextPage(
                          //                       duration: const Duration(
                          //                           milliseconds: 300),
                          //                       curve: Curves.easeInOut,
                          //                     );
                          //                   } else {}
                          //                 },
                          //               ),
                          //               const EndOfTracking()
                          //               // Добавьте другие этапы по мере необходимости
                          //             ],
                          //           ),
                          //         )
                          //       : Column(
                          //           children: [
                          //             Text("Отслеживайте ваш заказ",
                          //                 style: AppFonts.w700s36),
                          //             Expanded(
                          //               child: ListView.separated(
                          //                 itemCount:
                          //                     TrackingStatusData.data.length,
                          //                 separatorBuilder: (context, index) =>
                          //                     const Divider(
                          //                         color: AppColors
                          //                             .borderColorGrey),
                          //                 itemBuilder: (context, index) {
                          //                   final currentItem = mockData[index];
                          //                   return Padding(
                          //                     padding: EdgeInsets.symmetric(
                          //                         vertical: 8.h,
                          //                         horizontal: 10.w),
                          //                     child: Row(
                          //                       mainAxisAlignment:
                          //                           MainAxisAlignment
                          //                               .spaceBetween,
                          //                       children: [
                          //                         Text(
                          //                           currentItem.steps,
                          //                           style: AppFonts.w400s16
                          //                               .copyWith(
                          //                             color: index < 5
                          //                                 ? AppColors
                          //                                     .accentTextColor
                          //                                 : AppColors
                          //                                     .regularGreyColor,
                          //                           ),
                          //                         ),
                          //                         SvgPicture.asset(
                          //                           SvgImages.progress,
                          //                           color: currentItem.isDone
                          //                               ? AppColors
                          //                                   .accentTextColor
                          //                               : AppColors
                          //                                   .regularGreyColor,
                          //                         ),
                          //                       ],
                          //                     ),
                          //                   );
                          //                 },
                          //               ),
                          //             ),
                          //           ],
                          //         ),
                          // );
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

  List<Widget> manufacturerWidgets() {
    return [
      Stage1ForManufacturer(
        onTapForTextButton: () {},
        onTapForCheck: () {
          paymentCheck != null
              ? GoRouter.of(context).pushNamed("seeDoc",
                  queryParameters: {"path": paymentCheck!.path})
              : null;
        },
        comment: "Прикрепил чеки об оплате",
        controller: firstStageCommentController,
        onTap: () {
          confirmTrackingStage(invoiceId: widget.invoiceUuid, body: {
            "invoiceUuid": "string",
            "orderId": 1,
            "activeStage": "STAGE1",
            "allChecks": ["string"],
            "allComments": [
              {"orderStage": "STAGE1", "content": "string"}
            ]
          });
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage2ForManufacturer(
        currentIndexOfData: 10,
        controller: TextEditingController(),
        attachDocument: () async {
          final result = await PickFileService.pickFile();
          setState(() {
            paymentCheck = result;
          });
        },
        onTap: () {
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage3ForManufacturer(
        currentIndexOfData: 20,
        onTap: () {
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage4ForManufacturer(
        currentIndexOfData: 30,
        onTap: () {
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage5ForManufacturer(
        currentIndexOfData: 40,
        onTap: () {
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage6ForManufacturer(
        currentIndexOfData: 50,
        onTap: () {
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage7ForManufacturer(
        onTap: () {
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage8ForManufacturer(currentIndexOfData: 70, onTap: () {}),
      const EndOfTrackingForManufacturer()
    ];
  }

  List<Widget> customerWidgets() {
    return [
      Stage1(
        controller: firstStageCommentController,
        comment: "Прикрепил чеки об оплате",
        onTap: () {
          confirmTrackingStage(invoiceId: widget.invoiceUuid, body: {
            "invoiceUuid": "string",
            "orderId": 1,
            "activeStage": "STAGE1",
            "allChecks": ["string"],
            "allComments": [
              {"orderStage": "STAGE1", "content": "string"}
            ]
          });
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
        attachDocument: () async {
          final result = await PickFileService.pickFile();
          setState(() {
            paymentCheck = result;
          });
        },
        onTapForCheck: () {
          paymentCheck != null
              ? GoRouter.of(context).pushNamed("seeDoc",
                  queryParameters: {"path": paymentCheck!.path})
              : null;
        },
        check: paymentCheck,
      ),
      Stage2ForCustomer(
        currentIndexOfData: 10,
        comment: "При раскройке получилось 520шт",
        date: "16.04.2024",
        onTap: () {
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage3ForCustomer(
        currentIndexOfData: 20,
        onTap: () {
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage4ForCustomer(
        currentIndexOfData: 30,
        onTap: () {
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage5ForCustomer(
        currentIndexOfData: 40,
        onTap: () {
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage6ForCustomer(
        currentIndexOfData: 50,
        onTap: () {
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      Stage7ForCustomer(
        controller: TextEditingController(),
        onTap: () {
          if (currentIndex < 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {}
        },
      ),
      const Part2Stage6(),
      Stage7part2(
        onTap: () {},
        controller: TextEditingController(),
      ),
      const EndOfTracking()
    ];
  }
}
