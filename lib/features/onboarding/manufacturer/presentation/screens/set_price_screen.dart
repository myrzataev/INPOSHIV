import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/blocs/create_order_bloc/create_order_bloc.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/providers/order_provider.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:provider/provider.dart';

class SetPriceScreen extends StatefulWidget {
  final String quantityOfGoods;
  const SetPriceScreen({super.key, required this.quantityOfGoods});

  @override
  State<SetPriceScreen> createState() => _ChooseCategoryScreenState();
}

class _ChooseCategoryScreenState extends State<SetPriceScreen> {
  bool _isUpdating = false; // Flag to avoid recursive calls
  double totalDollarSum = 0;
  double totalSumRuble = 0;
  double retailPriceInRuble = 0;
  double currentCurrency = 0;
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    callBloc();

    // Add a listener to the text field controller to modify input.
    // controller.addListener(_onTextChanged);
  }

  void callBloc() {
    BlocProvider.of<CreateOrderBloc>(context)
        .add(const CreateOrderEvent.getCurrentCurrencyEvent());
  }

  @override
  void dispose() {
    controller.dispose();
    // controller.removeListener(_onTextChanged);
    super.dispose();
  }

  // void _onTextChanged() {
  //   if (_isUpdating) return;
  //   print(controller.text.endsWith('\$'));
  //   String currentText = controller.text;

  //   // Allow the user to delete the whole content
  //   if (currentText.isEmpty || currentText == "\$") {
  //     return;
  //   }

  //   if (!controller.text.endsWith('\$')) {
  //     setState(() {
  //       _isUpdating = true;

  //       // Remove any existing $ signs if present
  //       currentText = currentText.replaceAll('\$', '');
  //       print("current text is $currentText");
  //       // Only append a $ sign if the user input is a valid number
  //       double? parsedValue = double.tryParse(currentText);
  //       if (parsedValue != null) {
  //         controller.value = TextEditingValue(
  //           text: "$currentText \$",
  //           selection: TextSelection.fromPosition(
  //             TextPosition(offset: currentText.length),
  //           ),
  //         );

  //         // Call the calculate method here
  //         _calculateTotalQuantity(parsedValue);
  //       }

  //       _isUpdating = false;
  //     });
  //   }
  // }

  _onTextChanged(String value) {
    setState(() {
      totalDollarSum =
          double.parse(value) * double.parse(widget.quantityOfGoods);
    });
  }

  void _calculateTotalQuantity(double unitPrice) {
    setState(() {
      totalDollarSum =
          unitPrice * (double.tryParse(widget.quantityOfGoods) ?? 0);
    });
  }

  void _calculateRetailQuantityInRuble(String values) {
    setState(() {
      retailPriceInRuble = double.parse(values) * currentCurrency;
    });
  }

  void _calculateTotalQuantityInRuble(String values) {
    setState(() {
      totalSumRuble = double.parse(values) *
          double.parse(widget.quantityOfGoods) *
          currentCurrency;
    });
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
                    Provider.of<OrderProvider>(context, listen: false)
                        .updateCurrency(newCurrency: currentCurrency);
                  });
                },
                orElse: () {});
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ElevatedButton(
                //   onPressed: () {
                //     print(totalDollarSum);
                //   },
                //   child: Text("data"),
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: InkWell(
                    customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                    child: SvgPicture.asset(
                      SvgImages.goback,
                      height: 40.h,
                      width: 40.w,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Row(
                    children: [
                      Text(
                        "Шаг 5 ",
                        style: AppFonts.w400s16.copyWith(
                          fontFamily: "SF Pro",
                          color: const Color(0xff324D19),
                        ),
                      ),
                      Text(
                        "из 5",
                        style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Укажите желаемую стоимость",
                  style: AppFonts.w700s36.copyWith(
                    height: 0.8,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Text(
                    "Средняя цена на блузки 600 рублей за единицу товара",
                    style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                  ),
                ),
                TextField(
                  onChanged: (value) {
                    _onTextChanged(value);
                    _calculateRetailQuantityInRuble(value);
                    _calculateTotalQuantityInRuble(value);
                  },
                  controller: controller,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.start,
                  style: AppFonts.w700s20.copyWith(
                    color: AppColors.accentTextColor,
                  ),
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: const Row(
                      children: [
                        Text("Цена за единицу"),
                        Spacer(),
                        Text("Итого"),
                      ],
                    ),
                    suffixText: "$totalDollarSum \$",
                    labelStyle: AppFonts.w400s16,
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xffA0A0A0),
                      ),
                    ),
                    hintText: "0 \$",
                    hintStyle: AppFonts.w700s20.copyWith(
                      color: const Color(0xffA0A0A0),
                    ),
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${retailPriceInRuble.toStringAsFixed(2)}₽",
                        style: AppFonts.w400s16,
                      ),
                      Text(
                        "${totalSumRuble.toStringAsFixed(2)}₽",
                        style: AppFonts.w400s16,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: CustomButton(
                    text: "Дальше",
                    onPressed: () {
                      Provider.of<OrderProvider>(context, listen: false)
                          .updatePrice(
                              priceInRuble: retailPriceInRuble.toInt(),
                              priceInUsd: int.tryParse(controller.text));
                      GoRouter.of(context)
                          .pushNamed("orderReady", queryParameters: {
                        "retaiPrice": retailPriceInRuble.toString(),
                        "totalPrice": totalSumRuble.toString()
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
