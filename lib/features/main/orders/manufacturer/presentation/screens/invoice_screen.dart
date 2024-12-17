import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/chat/presentation/providers/chat_provider.dart';
import 'package:inposhiv/features/main/chat/presentation/widgets/custom_order_row_withoutextfield.dart';
import 'package:inposhiv/features/main/chat/presentation/widgets/custom_order_withouttextfield.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/custom_dialog.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/search_widget.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/orders_bloc/orders_bloc.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/blocs/current_currency_bloc/current_currency_bloc.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/number_format_service.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InvoiceScreen extends StatefulWidget {
  final String orderId;
  final String chatUuid;
  const InvoiceScreen(
      {super.key, required this.orderId, required this.chatUuid});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreen();
}

class _InvoiceScreen extends State<InvoiceScreen> {
  List<PlatformFile>? filesForTech;
  List<PlatformFile>? filesForLecala;
  List<PlatformFile>? filesForDoc;
  TextEditingController amountController = TextEditingController();
  TextEditingController retailPriceController = TextEditingController();
  TextEditingController priceForLecalaController = TextEditingController();
  TextEditingController exampleController = TextEditingController();
  TextEditingController deliveryPriceController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController discountController = TextEditingController();

  double currentCurrency = 0;
  double totalPriceWithoutAdditional = 0;
  double totalPriceWithAdditional = 0;
  double totalPriceWithoutAdditionalInRuble = 0;
  double totalPriceWithAdditionalDiscount = 0;
  double totalPriceWithoutAdditionalInRubleDiscount = 0;
  double totalPriceWithAdditionalInRuble = 0;
  double amount = 0;
  double amountWithAdditional = 0;
  bool isShown = false;
  final preferences = locator<SharedPreferences>();

  @override
  void dispose() {
    amountController.dispose();
    priceForLecalaController.dispose();
    exampleController.dispose();
    deliveryPriceController.dispose();
    addressController.dispose();
    retailPriceController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    BlocProvider.of<CurrentCurrencyBloc>(context)
        .add(const CurrentCurrencyEvent.getCurrentCurrencyEvent());
    super.initState();
    _addListeners();
  }

  void _addListeners() {
    amountController.addListener(_recalculate);
    retailPriceController.addListener(_recalculate);
    priceForLecalaController.addListener(_recalculate);
    exampleController.addListener(_recalculate);
    deliveryPriceController.addListener(_recalculate);
    discountController.addListener(_recalculate);
  }

  void _recalculate() {
    setState(() {
      // Parsing values from controllers
      amount = double.tryParse(amountController.text) ?? 0;
      double retailPrice = double.tryParse(retailPriceController.text) ?? 0;
      double lekalaCost = double.tryParse(priceForLecalaController.text) ?? 0;
      double exampleCost = double.tryParse(exampleController.text) ?? 0;
      double deliveryCost = double.tryParse(deliveryPriceController.text) ?? 0;
      double discountPercentage = double.tryParse(discountController.text) ?? 0;

      // Calculating totals
      totalPriceWithoutAdditional = calculateAmount(
        amount: amount,
        price: retailPrice,
      );

      totalPriceWithoutAdditionalInRuble = calculateretailInRuble(
        currency: currentCurrency,
        totalSumInDollar: totalPriceWithoutAdditional,
      );

      totalPriceWithAdditional =
          totalPriceWithoutAdditional + lekalaCost + exampleCost + deliveryCost;

      totalPriceWithAdditionalInRuble = calculateretailInRuble(
        currency: currentCurrency,
        totalSumInDollar: totalPriceWithAdditional,
      );

      totalPriceWithAdditionalDiscount = totalPriceWithAdditional -
          (totalPriceWithAdditional * (discountPercentage / 100));

      totalPriceWithoutAdditionalInRubleDiscount = calculateretailInRuble(
        currency: currentCurrency,
        totalSumInDollar: totalPriceWithAdditionalDiscount,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    bool alreadySended = preferences.getBool(
            Provider.of<ChatProvider>(context, listen: false).chatRoomId ??
                "") ??
        false;
    return Scaffold(
      body: SafeArea(
          child: BlocListener<CurrentCurrencyBloc, CurrentCurrencyState>(
        listener: (context, state) {
          state.maybeWhen(
              currencyLoaded: (model) {
                setState(() {
                  currentCurrency = model.rate ?? 0;
                });
              },
              orElse: () {});
        },
        child: BlocListener<OrdersBloc, OrdersState>(
          listener: (context, state) {
            state.maybeWhen(
                loading: () => showLoaderDialog(context),
                invoiceSended: (model) {
                  router.pop();
                  preferences.setBool(
                      "invoice${model.orderId.toString()}", true);
                  showDialog(
                      context: context,
                      builder: (context) => CustomDialog(
                            title: "Мы отправили на подтверждение",
                            description:
                                "Мы уведомим вас, когда заказчик подтвердит счет на оплату",
                            button: CustomButton(
                                text: "Закрыть",
                                onPressed: () {
                                  GoRouter.of(context).pop();
                                }),
                          ));
                },
                invoiceError: (errorText) {
                  router.pop();
                },
                changeInvoiceSuccess: (model) {
                  router.pop();

                  showDialog(
                      context: context,
                      builder: (context) => CustomDialog(
                            title: "Мы отправили Заказчику на подтверждение",
                            description:
                                "Мы уведомим вас, когда он подтвердит счет на оплату",
                            button: CustomButton(
                                text: "Закрыть",
                                onPressed: () {
                                  GoRouter.of(context).pop();
                                }),
                          ));
                },
                changeInvoiceError: (error) {
                  router.pop();
                },
                orElse: () {});
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                Expanded(
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
                            "Счет на оплату",
                            style: AppFonts.w700s20
                                .copyWith(color: AppColors.accentTextColor),
                          ),
                        ),
                        CustomOrderRowWithTextfield(
                          onChanged: (value) => (),
                          title:
                              "Примерное количество товара\nТочное кол-во будет указано после раскроя ткани",
                          value: "шт",
                          textInputType:
                              const TextInputType.numberWithOptions(),
                          hintText: " 0 ",
                          controller: amountController,
                        ),
                        CustomOrderRowWithTextfield(
                          onChanged: (value) => (),
                          title: "Примерная цена за ед",
                          value: "\$",
                          textInputType:
                              const TextInputType.numberWithOptions(),
                          hintText: " 0 ",
                          controller: retailPriceController,
                        ),
                        CustomOrderRowWithoutTextfield(
                          title: "Итоговая примерная сумма",
                          value:
                              " ${formatNumber(totalPriceWithoutAdditional)} \$ ",
                          additionalValue:
                              "${formatNumber(totalPriceWithoutAdditionalInRuble)} руб",
                        ),
                        CustomOrderRowWithTextfield(
                          onChanged: (value) => (),
                          title: "Цена за разработку лекал",
                          controller: priceForLecalaController,
                          value: "\$",
                          hintText: " 0+",
                          textInputType: TextInputType.number,
                        ),
                        CustomOrderRowWithTextfield(
                          onChanged: (value) => (),
                          title: "Образец",
                          value: "\$",
                          hintText: " 0+",
                          textInputType: TextInputType.number,
                          controller: exampleController,
                        ),
                        CustomOrderRowWithTextfield(
                          onChanged: (value) => (),
                          controller: deliveryPriceController,
                          textInputType: TextInputType.number,
                          hintText: " 0+",
                          title: "Доставка",
                          value: "\$",
                        ),
                        CustomOrderRowWithTextfield(
                            title: "Скидка",
                            onChanged: (value) {},
                            value: "%",
                            textInputType:
                                const TextInputType.numberWithOptions(),
                            hintText: "",
                            controller: discountController),
                        CustomOrderRowWithoutTextfield(
                          title: "Итоговая примерная сумма + доп. расходы",
                          value:
                              "${formatNumber(totalPriceWithAdditionalDiscount)}\$",
                          additionalValue:
                              "${formatNumber(totalPriceWithoutAdditionalInRubleDiscount)} руб",
                        ),
                      ],
                    ),
                  ),
                ),
                // Elevat

                CustomButton(
                    text: "Подтвердить и перейти к оплате",
                    onPressed: () {
                      (preferences.getBool(
                                  "invoice${widget.orderId.toString()}") ??
                              false)
                          ? BlocProvider.of<OrdersBloc>(context)
                              .add(OrdersEvent.changeInvoice(invoice: {
                              "manufacturerUuid":
                                  preferences.getString("customerId"),
                              "orderId": widget.orderId,
                              //  widget.orderId,
                              "preliminaryQuantity": amountController.text,
                              "pricePerUnit": retailPriceController.text,
                              "preliminaryAmount":
                                  totalPriceWithoutAdditionalInRuble,
                              "lekalaCost": exampleController.text,
                              "sampleCost": priceForLecalaController.text,
                              "deliveryCost": deliveryPriceController.text,
                              "discount": discountController.text,
                              "totalAmount": totalPriceWithAdditionalInRuble,
                              "chatUuid": widget.chatUuid
                            }, orderId: widget.orderId))
                          : BlocProvider.of<OrdersBloc>(context)
                              .add(OrdersEvent.sendInvoice(invoice: {
                              "manufacturerUuid":
                                  preferences.getString("customerId"),
                              "orderId": widget.orderId,
                              //  widget.orderId,
                              "preliminaryQuantity": amountController.text,
                              "pricePerUnit": retailPriceController.text,
                              "preliminaryAmount":
                                  totalPriceWithoutAdditionalInRuble,
                              "lekalaCost": exampleController.text,
                              "sampleCost": priceForLecalaController.text,
                              "deliveryCost": deliveryPriceController.text,
                              "discount": discountController.text,
                              "totalAmount":
                                  totalPriceWithoutAdditionalInRubleDiscount,
                              "chatUuid": widget.chatUuid
                            }, orderId: widget.orderId));
                    })
              ],
            ),
          ),
        ),
      )),
    );
  }

  Future<void> _pickFiles(int id) async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result == null) {
      print("not selected");
    } else {
      setState(() {
        if (id == 0) {
          filesForTech = result.files;
        } else if (id == 1) {
          filesForLecala = result.files;
        } else {
          filesForDoc = result.files;
        }
      });
    }
  }

  Future<void> pickDate() async {
    final result = await showDatePicker(
        locale: const Locale("ru", "RU"),
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));

    if (result != null) {
      setState(() {
        // expirationController.text = result.toString().split(" ")[0];
      });
    }
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
}
