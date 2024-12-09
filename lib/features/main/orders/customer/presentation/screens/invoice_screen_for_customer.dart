import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/core/widgets/custom_error_widget.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/chat/data/models/create_chat_room_model.dart';
import 'package:inposhiv/features/main/chat/presentation/blocs/chat_rooms_bloc/chat_rooms_bloc.dart';
import 'package:inposhiv/features/main/chat/presentation/providers/chat_provider.dart';
import 'package:inposhiv/features/main/chat/presentation/widgets/custom_order_withouttextfield.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/custom_dialog.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/search_widget.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/invoice_model.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/get_invoice_details_bloc/get_invoice_details_bloc.dart';
import 'package:inposhiv/features/main/orders/manufacturer/presentation/widgets/choose_payment.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/blocs/current_currency_bloc/current_currency_bloc.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InvoiceScreenForCustomer extends StatefulWidget {
  final InvoiceModel? model;
  final String? orderId;
  const InvoiceScreenForCustomer(
      {super.key, required this.model, this.orderId});

  @override
  State<InvoiceScreenForCustomer> createState() => _InvoiceScreenForCustomer();
}

class _InvoiceScreenForCustomer extends State<InvoiceScreenForCustomer> {
  final preferences = locator<SharedPreferences>();
  double? currency;
  CreateChatRoomModel? currentChatRoom;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    getCurrency();
    getUserChatRooms();
    if (widget.model == null && widget.orderId != null) {
      getInvoiceDetails();
    }
    super.initState();
  }

  getCurrency() {
    BlocProvider.of<CurrentCurrencyBloc>(context)
        .add(const CurrentCurrencyEvent.getCurrentCurrencyEvent());
  }

  getInvoiceDetails() {
    BlocProvider.of<GetInvoiceDetailsBloc>(context)
        .add(GetInvoiceDetailsEvent.started(orderId: widget.orderId ?? ""));
  }

  void getUserChatRooms() {
    BlocProvider.of<ChatRoomsBloc>(context).add(ChatRoomsEvent.getChatRoomsList(
        userUuid: preferences.getString("userId") ?? ""));
  }

  @override
  Widget build(BuildContext context) {
    bool alreadySended = preferences.getBool(
            Provider.of<ChatProvider>(context, listen: false).chatRoomId ??
                "") ??
        false;
    return BlocListener<ChatRoomsBloc, ChatRoomsState>(
      listener: (context, state) {
        state.maybeWhen(
            chatRoomsLoaded: (model) {
              final filteredChatRoom = model.firstWhere(
                (element) => element.orderId.toString() == widget.orderId,
              );
              setState(() {
                currentChatRoom = filteredChatRoom;
              });
              // print("Filtered Chat Room: $currentChatRoom");
            },
            orElse: () {});
      },
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              // ElevatedButton(
              //     onPressed: () {
              //       // getUserChatRooms();
              //       print(currentChatRoom?.chatUuid);
              //     },
              //     child: Text("data")),
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
                    child: BlocConsumer<GetInvoiceDetailsBloc,
                        GetInvoiceDetailsState>(
                      listener: (context, state) {
                        // TODO: implement listener
                      },
                      builder: (context, state) {
                        return state.maybeWhen(
                            loading: () => const Center(
                                  child: CircularProgressIndicator.adaptive(),
                                ),
                            error: (error) {
                              return Expanded(
                                child: CustomErrorWidget(
                                    description: error.userMessage,
                                    onRefresh: () {
                                      getInvoiceDetails();
                                    }),
                              );
                            },
                            loaded: (model) {
                              final invoiceModel = widget.model ?? model;
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomSearchWidget(
                                      onTap: () {
                                        GoRouter.of(context).pop();
                                      },
                                      child:
                                          SvgPicture.asset(SvgImages.goback)),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 20.h),
                                    child: Text(
                                      "Счет на оплату",
                                      style: AppFonts.w700s20.copyWith(
                                          color: AppColors.accentTextColor),
                                    ),
                                  ),
                                  CustomOrderRowWithoutTextfield(
                                    title: "Примерное количество товара",
                                    value:
                                        "${invoiceModel.preliminaryQuantity} шт",
                                  ),
                                  CustomOrderRowWithoutTextfield(
                                    title: "Цена за ед. товара",
                                    value: "${invoiceModel.pricePerUnit}\$",
                                  ),
                                  CustomOrderRowWithoutTextfield(
                                    title: "Итоговая примерная сумма",
                                    value: "${invoiceModel.preliminaryAmount}",
                                    additionalValue:
                                        "${calculateretailInRuble(currency: currency ?? 0, totalSumInDollar: invoiceModel.totalAmount?.toDouble() ?? 0).toStringAsFixed(2)} руб",
                                  ),
                                  CustomOrderRowWithoutTextfield(
                                    title: "Цена за разработку лекал",
                                    value: "+${invoiceModel.lekalaCost}",
                                  ),
                                  CustomOrderRowWithoutTextfield(
                                    title: "Образец",
                                    value: "+${invoiceModel.sampleCost}",
                                  ),
                                  CustomOrderRowWithoutTextfield(
                                    title: "Доставка",
                                    value: "+${invoiceModel.deliveryCost}",
                                  ),
                                  CustomOrderRowWithoutTextfield(
                                    title:
                                        "Итоговая примерная сумма + доп. расходы",
                                    value: "${invoiceModel.totalAmount}\$",
                                    additionalValue:
                                        "${calculateretailInRuble(currency: currency ?? 0, totalSumInDollar: invoiceModel.totalAmount?.toDouble() ?? 0).toStringAsFixed(2)} руб",
                                  ),
                                  BlocListener<ChatRoomsBloc, ChatRoomsState>(
                                    listener: (context, state) {
                                      state.maybeWhen(
                                          chatRoomsLoaded: (model) {
                                            final filteredChatRoom =
                                                model.firstWhere((elemet) =>
                                                    elemet.orderId.toString() ==
                                                    widget.orderId);
                                            setState(() {
                                              currentChatRoom =
                                                  filteredChatRoom;
                                            });
                                          },
                                          orElse: () {});
                                    },
                                    child: const SizedBox.shrink(),
                                  )
                                ],
                              );
                            },
                            orElse: () {
                              return const SizedBox.shrink();
                            });
                      },
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
                  alreadySended
                      ? const SizedBox.shrink()
                      : Padding(
                          padding: EdgeInsets.only(bottom: 20.h),
                          child: CustomButton(
                              text: "Подтвердить и перейти к оплате",
                              onPressed: () {
                                _showAuctionDetail();
                                // BlocProvider.of<OrdersBloc>(context)
                                //     .add(OrdersEvent.sendInvoice(invoice: {
                                //   "orderId": widget.orderId,
                                //   "preliminaryQuantity": 1000,
                                //   "pricePerUnit": retailPriceController.text,
                                //   "preliminaryAmount": totalPriceWithoutAdditionalInRuble,
                                //   "lekalaCost": exampleController.text,
                                //   "sampleCost": priceForLecalaController.text,
                                //   "deliveryCost": deliveryPriceController.text,
                                //   "discount": discountController.text,
                                //   "totalAmount": totalPriceWithAdditionalInRuble
                                // }, orderId: widget.orderId));
                              }),
                        )
                ],
              )
            ],
          ),
        )),
      ),
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

  void _showAuctionDetail() {
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
                      "Выберите способ оплаты",
                      style: AppFonts.w700s36.copyWith(height: 0.5),
                    ),
                    CustomChoosePaymentWidget(
                        text:
                            "Через платформу Наиболее безопасный способ\nЕще в разработке",
                        icon: SvgImages.lock,
                        isActive: false,
                        onTap: () {
                          // GoRouter.of(context).pushNamed("payScreen");
                        }),
                    CustomChoosePaymentWidget(
                        isActive: true,
                        text: "Запросить реквизиты",
                        icon: SvgImages.lock,
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => CustomDialog(
                                  title:
                                      "При выборе этого способа оплаты платформа не несет ответственности за оплату",
                                  description:
                                      "Все риски, связанные с оплатой вы берете на себя",
                                  button: CustomButton(
                                      text: "Запросить реквизиты",
                                      onPressed: () {
                                        context.goNamed("chatScreen",
                                            queryParameters: {
                                              "receipentUuid": currentChatRoom
                                                  ?.recipientUuid,
                                              // Provider.of<ChatProvider>(
                                              //         context,
                                              //         listen: false)
                                              //     .receipentId,
                                              "chatUuid":
                                                  currentChatRoom?.chatUuid,
                                              // Provider.of<ChatProvider>(
                                              //         context,
                                              //         listen: false)
                                              //     .chatRoomId,
                                              "autoMessage":
                                                  "Пришлите, пожалуйста, свои реквизиты"
                                            });
                                      })));

                          // GoRouter.of(context).pushNamed("payScreen");
                        }),
                    // CustomChoosePaymentWidget(
                    //   isActive: true,
                    //     text: "Оплата физ. лицу",
                    //     icon: SvgImages.lock,
                    //     onTap: () {
                    //       GoRouter.of(context).pushNamed("payScreen");
                    //     }),
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
