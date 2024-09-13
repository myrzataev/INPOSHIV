import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/resources/resources.dart';

class SetPriceScreen extends StatefulWidget {
  final String quantityOfGoods;
  const SetPriceScreen({super.key, required this.quantityOfGoods});

  @override
  State<SetPriceScreen> createState() => _ChooseCategoryScreenState();
}

class _ChooseCategoryScreenState extends State<SetPriceScreen> {
  bool _isUpdating = false; // Flag to avoid recursive calls
  double totalSum = 0;
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Add a listener to the text field controller to modify input.
    controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    controller.dispose();
    controller.removeListener(_onTextChanged);
    super.dispose();
  }

  void calculateTotalSum({required String value}) {
    if (value.isNotEmpty) {
      setState(() {
        totalSum = double.tryParse(value) != null
            ? double.parse(value) * (double.tryParse(widget.quantityOfGoods) ?? 0)
            : 0;
      });
    } else {
      setState(() {
        totalSum = 0;
      });
    }
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
              Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: InkWell(
                  customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r)),
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                  child: SvgPicture.asset(
                    SVGImages.goback,
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
                          fontFamily: "SF Pro", color: const Color(0xff324D19)),
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
                style: AppFonts.w700s36
                    .copyWith(height: 0.8, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Text(
                  "Средняя цена на блузки 600 рублей за единицу товара",
                  style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                ),
              ),
              TextField(
                controller: controller,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.start,
                style:
                    AppFonts.w700s20.copyWith(color: AppColors.accentTextColor),
                decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: const Row(
                      children: [
                        Text("Цена за единицу"),
                        Spacer(),
                        Text("Итого"),
                      ],
                    ),
                    suffixText: "$totalSum ₽",
                    labelStyle: AppFonts.w400s16,
                    focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0xffA0A0A0))),
                    hintText: "0 ₽",
                    hintStyle: AppFonts.w700s20
                        .copyWith(color: const Color(0xffA0A0A0)),
                    border: const UnderlineInputBorder(
                        borderSide: BorderSide(width: 1))),
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    calculateTotalSum(value: value.replaceAll("₽", "").trim());
                  } else {
                    setState(() {
                      totalSum = 0;
                    });
                  }
                },
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: CustomButton(
                    text: "Дальше",
                    onPressed: () {
                        GoRouter.of(context).pushReplacementNamed("main");
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onTextChanged() {
    if (_isUpdating) return;

    String currentText = controller.text;

    // Allow the user to delete the whole content
    if (currentText.isEmpty || currentText == "₽") {
      return;
    }

    if (!controller.text.endsWith('₽')) {
      setState(() {
        _isUpdating = true;

        // Remove any existing ₽ signs if present
        currentText = currentText.replaceAll('₽', '');

        // Only append a ₽ sign if the user input is a valid number
        if (double.tryParse(currentText) != null) {
          controller.value = TextEditingValue(
            text: "$currentText ₽",
            selection: TextSelection.fromPosition(
              TextPosition(offset: currentText.length),
            ),
          );
        }

        _isUpdating = false;
      });
    }
  }
}
