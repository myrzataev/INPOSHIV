import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/link_credit_card_screen.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/credit_card_textfield.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';

class TopUpBalanceScreen extends StatelessWidget {
  const TopUpBalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController cardsNumberController = TextEditingController();
    TextEditingController expirationDateController = TextEditingController();
    TextEditingController cvvController = TextEditingController();
    TextEditingController cardsOwnerController = TextEditingController();
    TextEditingController moneyController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                  padding: EdgeInsets.only(top: 30.h),
                  child: CreditCardTextField(
                    name: "Номер карты",
                    hintText: "0000 0000 0000 0000",
                    textInputType: TextInputType.number,
                    textInputFormatter: [
                      MaskedInputFormatter("#### #### #### ####"),
                    ],
                    controller: cardsNumberController,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: CreditCardTextField(
                        textInputType: TextInputType.number,
                        name: "Дата",
                        hintText: "ММ / ГГ",
                        textInputFormatter: [
                          MaskedInputFormatter("## / ##"),
                        ],
                        controller: expirationDateController,
                      ),
                    ),
                    VerticalDivider(
                      color: AppColors.regularGreyColor,
                      thickness: 10.w,
                      width: 20.w,
                    ),
                    Expanded(
                      child: CreditCardTextField(
                        name: "CVV",
                        hintText: "123",
                        textInputType: TextInputType.number,
                        textInputFormatter: [
                          MaskedInputFormatter("###"),
                        ],
                        controller: cvvController,
                      ),
                    ),
                  ],
                ),
                CreditCardTextField(
                  name: "Владелец карты",
                  hintText: "HENRY CAVILL",
                  textInputType: TextInputType.text,
                  textInputFormatter:  [UpperCaseTextFormatter()],
                  controller: cardsOwnerController,
                ),
                CreditCardTextField(
                  name: "Сумма пополнения",
                  hintText: "3400\$",
                  textInputType: TextInputType.number,
                  textInputFormatter: [],
                  controller: moneyController,
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 200.h),
                  child: CustomButton(text: "Пополнить баланс", onPressed: () {}),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
