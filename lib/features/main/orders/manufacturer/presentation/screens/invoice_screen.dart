import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/chat/presentation/widgets/custom_order_row_withoutextfield.dart';
import 'package:inposhiv/features/main/chat/presentation/widgets/custom_order_withouttextfield.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_dialog.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/orders_bloc/orders_bloc.dart';
import 'package:inposhiv/features/main/orders/manufacturer/presentation/widgets/choose_payment.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/blocs/create_order_bloc/create_order_bloc.dart';
import 'package:inposhiv/resources/resources.dart';

class InvoiceScreen extends StatefulWidget {
  final String orderId;
  const InvoiceScreen({super.key, required this.orderId});

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
  double totalPriceWithAdditionalInRuble = 0;
  double amount = 0;
  double amountWithAdditional = 0;
  bool isShown = false;
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
    BlocProvider.of<CreateOrderBloc>(context)
        .add(const CreateOrderEvent.getCurrentCurrencyEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocListener<CreateOrderBloc, CreateOrderState>(
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
                  GoRouter.of(context).pop();
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
                          onChanged: (value) => setState(() {
                            amount = double.tryParse(value) ?? 0;
                            totalPriceWithoutAdditional = calculateAmount(
                                amount: double.tryParse(value) ?? 0,
                                price: double.tryParse(
                                        retailPriceController.text) ??
                                    0);
                            calculateretailInRuble(
                                currency: currentCurrency,
                                totalSumInDollar: totalPriceWithoutAdditional);
                          }),
                          title:
                              "Примерное количество товара\nТочное кол-во будет указано после раскроя ткани",
                          value: "шт",
                          textInputType:
                              const TextInputType.numberWithOptions(),
                          hintText: "500",
                          controller: amountController,
                        ),
                        CustomOrderRowWithTextfield(
                          onChanged: (value) => setState(() {
                            totalPriceWithoutAdditional = calculateAmount(
                                amount: amount,
                                price: double.tryParse(value) ?? 0);
                            totalPriceWithoutAdditionalInRuble =
                                calculateretailInRuble(
                                    currency: currentCurrency,
                                    totalSumInDollar:
                                        totalPriceWithoutAdditional);
                          }),
                          title:
                              "Примерное количество товара\nТочное кол-во будет указано после раскроя ткани",
                          value: "\$",
                          textInputType:
                              const TextInputType.numberWithOptions(),
                          hintText: "5",
                          controller: retailPriceController,
                        ),
                        CustomOrderRowWithoutTextfield(
                          title: "Итоговая примерная сумма",
                          value: "$totalPriceWithoutAdditional\$",
                          additionalValue:
                              "$totalPriceWithoutAdditionalInRuble руб",
                        ),
                        CustomOrderRowWithTextfield(
                          onChanged: (value) => setState(() {
                            totalPriceWithAdditional =
                                calculateAmountWithAdditional(
                                    totalAmount: totalPriceWithoutAdditional,
                                    additional: double.tryParse(value) ?? 0);
                            totalPriceWithAdditionalInRuble =
                                calculateretailInRuble(
                                    currency: currentCurrency,
                                    totalSumInDollar: totalPriceWithAdditional);
                          }),
                          title: "Цена за разработку лекал",
                          controller: priceForLecalaController,
                          value: "\$",
                          hintText: "100+",
                          textInputType: TextInputType.number,
                        ),
                        CustomOrderRowWithTextfield(
                            title: "Скидка",
                            onChanged: (value) {},
                            value: "%",
                            textInputType:
                                const TextInputType.numberWithOptions(),
                            hintText: "",
                            controller: discountController),
                        CustomOrderRowWithTextfield(
                          onChanged: (value) => setState(() {
                            totalPriceWithAdditional =
                                calculateAmountWithAdditional(
                                    totalAmount: totalPriceWithoutAdditional,
                                    additional: double.tryParse(value) ?? 0);
                            totalPriceWithAdditionalInRuble =
                                calculateretailInRuble(
                                    currency: currentCurrency,
                                    totalSumInDollar: totalPriceWithAdditional);
                          }),
                          title: "Образец",
                          value: "\$",
                          hintText: "50+",
                          textInputType: TextInputType.number,
                          controller: exampleController,
                        ),
                        CustomOrderRowWithTextfield(
                          onChanged: (value) => setState(() {
                            totalPriceWithAdditional =
                                calculateAmountWithAdditional(
                                    totalAmount: totalPriceWithoutAdditional,
                                    additional: double.tryParse(value) ?? 0);
                            totalPriceWithAdditionalInRuble =
                                calculateretailInRuble(
                                    currency: currentCurrency,
                                    totalSumInDollar: totalPriceWithAdditional);
                          }),
                          controller: deliveryPriceController,
                          textInputType: TextInputType.number,
                          hintText: "50+",
                          title: "Доставка",
                          value: "\$",
                        ),
                        CustomOrderRowWithoutTextfield(
                          title: "Итоговая примерная сумма + доп. расходы",
                          value: "$totalPriceWithAdditional\$",
                          additionalValue:
                              "$totalPriceWithAdditionalInRuble руб",
                        ),
                      ],
                    ),
                  ),
                ),
                CustomButton(
                    text: "Подтвердить и перейти к оплате",
                    onPressed: () {
                      // _showAuctionDetail();
                      BlocProvider.of<OrdersBloc>(context)
                          .add(OrdersEvent.sendInvoice(invoice: {
                        "orderId": 1,
                        "preliminaryQuantity": 0,
                        "pricePerUnit": retailPriceController.text,
                        "preliminaryAmount": totalPriceWithoutAdditionalInRuble,
                        "lekalaCost": exampleController.text,
                        "sampleCost": priceForLecalaController.text,
                        "deliveryCost": deliveryPriceController.text,
                        "discount": discountController.text,
                        "totalAmount": totalPriceWithAdditionalInRuble
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
                      style: AppFonts.w700s36,
                    ),
                    CustomChoosePaymentWidget(
                        text: "Через платформу Наиболее безопасный способ",
                        icon: SvgImages.lock,
                        onTap: () {
                          GoRouter.of(context).pushNamed("payScreen");
                        }),
                    CustomChoosePaymentWidget(
                        text: "Оплата на расчетный счет",
                        icon: SvgImages.lock,
                        onTap: () {
                          GoRouter.of(context).pushNamed("payScreen");
                        }),
                    CustomChoosePaymentWidget(
                        text: "Оплата физ. лицу",
                        icon: SvgImages.lock,
                        onTap: () {
                          GoRouter.of(context).pushNamed("payScreen");
                        }),
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
