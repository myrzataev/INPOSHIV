import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/chat/presentation/providers/chat_provider.dart';
import 'package:inposhiv/features/main/chat/presentation/widgets/custom_order_withouttextfield.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_dialog.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/invoice_model.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/order_details_model.dart';
import 'package:inposhiv/features/main/orders/manufacturer/presentation/blocs/get_order_details_bloc/get_order_details_bloc.dart';
import 'package:inposhiv/features/main/orders/manufacturer/presentation/widgets/choose_payment.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/blocs/current_currency_bloc/current_currency_bloc.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OrderDetailsScreenForManufacturer extends StatefulWidget {
  final String orderId;
  const OrderDetailsScreenForManufacturer({super.key, required this.orderId});

  @override
  State<OrderDetailsScreenForManufacturer> createState() =>
      _OrderDetailsScreenForManufacturer();
}

class _OrderDetailsScreenForManufacturer
    extends State<OrderDetailsScreenForManufacturer> {
  final preferences = locator<SharedPreferences>();
  double? currency;
  @override
  void dispose() {
    super.dispose();
  }

  getOrderDetails() {
    BlocProvider.of<GetOrderDetailsBloc>(context)
        .add(GetOrderDetailsEvent.getOrderDetails(orderId: widget.orderId));
  }

  @override
  void initState() {
    BlocProvider.of<CurrentCurrencyBloc>(context)
        .add(const CurrentCurrencyEvent.getCurrentCurrencyEvent());
    getOrderDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: BlocBuilder<GetOrderDetailsBloc, GetOrderDetailsState>(
          builder: (context, state) {
            return state.maybeWhen(
                loading: () => const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                error: (errorText) => Center(
                      child: Text(errorText),
                    ),
                loaded: (model) {
                  return Column(
                    children: [
                      BlocListener<CurrentCurrencyBloc, CurrentCurrencyState>(
                        listener: (context, state) {
                          state.maybeWhen(
                              currencyLoaded: (model) => setState(() {
                                    currency = model.rate;
                                  }),
                              orElse: () {});
                        },
                        child: Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomSearchWidget(
                                    onTap: () {
                                      GoRouter.of(context).pop();
                                    },
                                    child: SvgPicture.asset(SvgImages.goback)),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 20.h),
                                  child: Text(
                                    "Данные заказа",
                                    style: AppFonts.w700s20.copyWith(
                                        color: AppColors.accentTextColor),
                                  ),
                                ),
                                CustomOrderRowWithoutTextfield(
                                  title: "Наименование товара",
                                  value: "${model.productName}",
                                ),
                                CustomOrderRowWithoutTextfield(
                                  title: "Материал",
                                  value: "${model.material}",
                                ),
                                CustomOrderRowWithoutTextfield(
                                  title: "Цвет ткани",
                                  value: "${model.color}",
                                ),
                                CustomOrderRowWithoutTextfield(
                                    title: "Сроки",
                                    value: "${model.deadline}",
                                    additionalValue: ""
                                    // "${calculateretailInRuble(currency: currency ?? 0, totalSumInDollar: widget.model.totalAmount?.toDouble() ?? 0)} руб",
                                    ),
                                CustomOrderRowWithoutTextfield(
                                  title: "Пункт доставки",
                                  value: "${model.deliveryPoint}",
                                ),
                                CustomOrderRowWithoutTextfield(
                                  title: "Договор",
                                  value: "+${model.lekalaDocuments?.first}",
                                ),
                                CustomOrderRowWithoutTextfield(
                                    title: "Тех. задание",
                                    value:
                                        "${model.technicalDocumentUrls?.first}",
                                    additionalValue: ""
                                    // "${calculateretailInRuble(currency: currency ?? 0, totalSumInDollar: widget.model.totalAmount?.toDouble() ?? 0)} руб",
                                    ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          TextButton(
                              onPressed: () {
                                GoRouter.of(context).pushNamed("chatScreen");
                              },
                              child: Text(
                                "Задать вопросы",
                                style: AppFonts.w400s16
                                    .copyWith(color: AppColors.accentTextColor),
                              )),
                          CustomButton(
                              text: "Подтвердите и оформите счет на оплату",
                              onPressed: () {
                                GoRouter.of(context).pushNamed("invoiceScreen",
                                    queryParameters: {
                                      "orderId": widget.orderId
                                    });
                              }),
                        ],
                      )
                    ],
                  );
                },
                orElse: () {
                  return const SizedBox.shrink();
                });
          },
        ),
      )),
    );
  }

  double calculateAmount({required double amount, required double price}) {
    return amount * price;
  }

  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          Container(
              margin: const EdgeInsets.only(left: 7),
              child: const Text("Загрузка")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  double calculateAmountWithAdditional(
      {required double totalAmount, required double additional}) {
    return totalAmount + additional;
  }

  double calculateretailInRuble(
      {required double totalSumInDollar, required double currency}) {
    return totalSumInDollar * currency;
  }

  // void _showAuctionDetail() {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
  //     ),
  //     builder: (BuildContext context) {
  //       return DraggableScrollableSheet(
  //         expand: false,
  //         initialChildSize: 0.3, // adjust the height as needed
  //         minChildSize: 0.3,
  //         maxChildSize: 0.5,
  //         builder: (context, scrollController) {
  //           return SingleChildScrollView(
  //             controller: scrollController,
  //             child: Padding(
  //               padding: const EdgeInsets.all(16.0),
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   Text(
  //                     "Выберите способ оплаты",
  //                     style: AppFonts.w700s36,
  //                   ),
  //                   CustomChoosePaymentWidget(
  //                       text:
  //                           "Через платформуНаиболее безопасный способ\nЕще в разработке",
  //                       icon: SvgImages.lock,
  //                       isActive: false,
  //                       onTap: () {
  //                         // GoRouter.of(context).pushNamed("payScreen");
  //                       }),
  //                   CustomChoosePaymentWidget(
  //                       isActive: true,
  //                       text: "Запросить реквизиты",
  //                       icon: SvgImages.lock,
  //                       onTap: () {
  //                         showDialog(
  //                             context: context,
  //                             builder: (context) => CustomDialog(
  //                                 title:
  //                                     "При выборе этого способа оплаты платформа не несет ответственности за оплату",
  //                                 description:
  //                                     "Все риски, связанные с оплатой вы берете на себя",
  //                                 button: CustomButton(
  //                                     text: "Запросить реквизиты",
  //                                     onPressed: () {
  //                                       context.goNamed("chatScreen",
  //                                           queryParameters: {
  //                                             "receipentUuid":
  //                                                 // "8ba821e4-249e-4847-b86a-2af23097bb41",
  //                                                 Provider.of<ChatProvider>(
  //                                                         context,
  //                                                         listen: false)
  //                                                     .receipentId,
  //                                             "chatUuid":
  //                                                 // "8ba821e4-249e-4847-b86a-2af23097bb41_b52bbbc4-cdfc-4c61-bfa3-36b5ea37029c",
  //                                                 Provider.of<ChatProvider>(
  //                                                         context,
  //                                                         listen: false)
  //                                                     .chatRoomId,
  //                                             "autoMessage":
  //                                                 "Пришлите, пожалуйста, свои реквизиты"
  //                                           });
  //                                     })));

  //                         // GoRouter.of(context).pushNamed("payScreen");
  //                       }),
  //                   // CustomChoosePaymentWidget(
  //                   //   isActive: true,
  //                   //     text: "Оплата физ. лицу",
  //                   //     icon: SvgImages.lock,
  //                   //     onTap: () {
  //                   //       GoRouter.of(context).pushNamed("payScreen");
  //                   //     }),
  //                 ],
  //               ),
  //             ),
  //           );
  //         },
  //       );
  //     },
  //   );
  // }
}
