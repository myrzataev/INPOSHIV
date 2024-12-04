import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/core/widgets/custom_error_widget.dart';
import 'package:inposhiv/features/main/home/data/models/notification_model.dart';
import 'package:inposhiv/features/main/home/presentation/shared/blocs/notification_history_bloc/notification_history_bloc.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/notification_card.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NoticationsScreen extends StatefulWidget {
  const NoticationsScreen({super.key});

  @override
  State<NoticationsScreen> createState() => _NoticationsScreen();
}

class _NoticationsScreen extends State<NoticationsScreen> {
  final preferences = locator<SharedPreferences>();
  bool? isCustomer;

  @override
  void initState() {
    isCustomer = preferences.getBool("isCustomer");
    getNotifications();
    super.initState();
  }

  getNotifications() {
    BlocProvider.of<NotificationHistoryBloc>(context).add(
        NotificationHistoryEvent.started(
            userUid: preferences.getString("userId") ?? ""));
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSearchWidget(
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                    child: SvgPicture.asset(SvgImages.goback)),
                CustomSearchWidget(
                    onTap: () {}, child: SvgPicture.asset(SvgImages.search))
              ],
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(top: 30.h),
              child: BlocBuilder<NotificationHistoryBloc,
                  NotificationHistoryState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      loading: () => const Center(
                            child: CircularProgressIndicator.adaptive(),
                          ),
                      loaded: (model) {
                        if (model.history?.isNotEmpty ?? false) {
                          return RefreshIndicator.adaptive(
                            onRefresh: () async {},
                            child: ListView.separated(
                                itemBuilder: (context, index) {
                                  final currentItem = model.history?[index];
                                  return NotificationCard(
                                    title: currentItem?.title ?? "",
                                    onTap: () {
                                      clicAction(
                                          clicAction:
                                              currentItem?.clickAction ?? "",
                                          historyModel:
                                              currentItem ?? const History());
                                    },
                                    description: currentItem?.body ?? "",
                                  );
                                },
                                separatorBuilder: (index, context) {
                                  return SizedBox(
                                    height: 7.h,
                                  );
                                },
                                itemCount: model.history?.length ?? 0),
                          );
                        } else {
                          return RefreshIndicator.adaptive(
                            onRefresh: () async => (getNotifications()),
                            child: SingleChildScrollView(
                              physics: const AlwaysScrollableScrollPhysics(),
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
                                        vertical: 20.0.h), // Add some padding
                                    child: Text(
                                   "У вас пока нет никаких уведомлений",
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
                      },
                      error: (error) => Expanded(
                              child: Expanded(
                            child: CustomErrorWidget(
                              description: error.userMessage,
                              onRefresh: () {
                                getNotifications();
                              },
                            ),
                          )),
                      orElse: () {
                        return const SizedBox.shrink();
                      });
                },
              ),
            ))
          ],
        ),
      )),
    );
  }

  void clicAction({required String clicAction, required History historyModel}) {
    switch (clicAction) {
      case 'CLICK_AUCTION':
        router.push("/auction/detailedViewScreen",
            extra: historyModel.auctionUuid);
        break;
      case 'INVOICE_SENT':
        router.pushNamed("invoiceScreenForCustomer",
            queryParameters: {"orderId": historyModel.orderId.toString()});
        break;
      case 'SEND_AGREEMENT':
        // Handle SEND_AGREEMENT
        break;
      case "STAGE_CHANGED":
        router.pushNamed("detailedTrackingScreen",
            queryParameters: {"invoiceId": historyModel.invoiceUuid});
        break;
      case "TRACKING_STAGE_ACCEPTED":
        // router.goNamed("detailedTrackingScreen", queryParameters: {
        //   "invoiceId": payloadData["invoiceUuid"]
        // });
        router.pushNamed(
          "orderTracking",
          pathParameters: {
            "activeStage": historyModel.invoiceUuid ?? "",
          },
        );
        break;
      case 'ORDER_DETAILS_FULLED':
        router.push("/orders/orderDetailsForManufacturer",
            extra: historyModel.orderUuid);
        break;
      case 'SEND_PAY_DETAILS':
        router.pushNamed("orderDetailsForManufacturer",
            extra: historyModel.orderUuid);
        print("SEND_PAY_DETAILS is catching");
        break;

      default:
        print("Unknown click_action");
        break;
    }
  }
}
