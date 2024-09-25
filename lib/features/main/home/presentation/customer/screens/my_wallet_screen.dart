import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_drawer.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_wallet_button.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';

class MyWalletScreen extends StatelessWidget {
  const MyWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<TransactionModel> data = TransactionData.data;
    return Scaffold(
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Builder(
                builder: (context) => Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: CustomSearchWidget(
                      onTap: () {
                        // Scaffold.of(context).openDrawer();
                        GoRouter.of(context).pop();
                      },
                      child: SvgPicture.asset(SvgImages.goback)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                child: Text(
                  "Кошелек",
                  style: AppFonts.w700s36,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.containersGrey,
                    borderRadius: BorderRadius.all(Radius.circular(15.r))),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22.r,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              Images.money,
                              height: 24.h,
                              width: 24.w,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "5400 USD",
                                  style: AppFonts.w700s20.copyWith(
                                      color: AppColors.accentTextColor),
                                ),
                                Text(
                                  "или 486 789.53 руб",
                                  style: AppFonts.w400s16,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomWalletButton(
                              text: "Пополнить",
                              icon: SvgImages.popolnit,
                              onTap: () {
                                GoRouter.of(context).pushNamed("banksScreen");
                              },
                            ),
                            CustomWalletButton(
                              text: "Добавить карту",
                              icon: SvgImages.add,
                              onTap: () {
                                GoRouter.of(context)
                                    .pushNamed("linkCreditCardScreen");
                              },
                            ),
                            CustomWalletButton(
                              text: "Вывести",
                              icon: SvgImages.export,
                              onTap: () {
                                GoRouter.of(context).pushNamed("banksScreen");
                              },
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Транзакции",
                      style: AppFonts.w700s20
                          .copyWith(color: AppColors.accentTextColor),
                    ),
                    Text(
                      "Все транзакции",
                      style: AppFonts.w400s16.copyWith(
                          color: AppColors.accentTextColor,
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.h),
                        child: const Divider(
                          color: AppColors.borderColor,
                        ),
                      );
                    },
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final item = data[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item.title,
                                style: AppFonts.w400s16
                                    .copyWith(color: AppColors.accentTextColor),
                              ),
                              Text(
                                "${item.balance} USD",
                                style: AppFonts.w400s16
                                    .copyWith(color: colorReturn(item.balance)),
                              ),
                            ],
                          ),
                          Text(
                            item.date,
                            style: AppFonts.w400s16,
                          )
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  Color colorReturn(int balance) {
    if (balance > 0) {
      return AppColors.positiveBalance;
    } else {
      return AppColors.red;
    }
  }
}

class TransactionModel {
  final String title;
  final String date;
  final int balance;

  TransactionModel(
      {required this.title, required this.date, required this.balance});
}

abstract class TransactionData {
  static List<TransactionModel> data = [
    TransactionModel(
        title: "Пополнение баланса", date: "Оплачено сегодня", balance: 504),
    TransactionModel(
        title: "Оплата заказ", date: "Оплачено 13.03.2024", balance: -312),
    TransactionModel(
        title: "Оплата заказа", date: "Оплачено 14.09.2024", balance: -3231),
    TransactionModel(
        title: "Пополнение баланса", date: "Оплачено сегодня", balance: 5024),
    TransactionModel(
        title: "Оплата заказ номер 169",
        date: "Оплачено сегодня",
        balance: -5114),
    TransactionModel(
        title: "Пополнение баланса", date: "Оплачено сегодня", balance: 504),
  ];
}
