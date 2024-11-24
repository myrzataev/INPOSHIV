import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_choice_container.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/features/main/orders/manufacturer/presentation/widgets/choose_payment.dart';
import 'package:inposhiv/resources/resources.dart';

class PayScreen extends StatefulWidget {
  const PayScreen({super.key});

  @override
  State<PayScreen> createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchWidget(
                onTap: () {
                  router.pop();
                }, child: SvgPicture.asset(SvgImages.goback)),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomChooseRoleWidget(
                        isChoosed: currentIndex == 0,
                        text: "Рассрочка",
                        onTap: () {
                          setState(() {
                            currentIndex = 0;
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.r)),
                              ),
                              builder: (BuildContext context) {
                                return DraggableScrollableSheet(
                                  expand: false,
                                  initialChildSize:
                                      0.3, // adjust the height as needed
                                  minChildSize: 0.3,
                                  maxChildSize: 0.5,
                                  builder: (context, scrollController) {
                                    return SingleChildScrollView(
                                      controller: scrollController,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Выберите срок рассрочки",
                                              style: AppFonts.w700s36,
                                            ),
                                            SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                children: [
                                                  CustomChoosePaymentWidget(
                                                    isActive: true,
                                                      text: "30 дней",
                                                      icon: SvgImages.lock,
                                                      onTap: () {
                                                        GoRouter.of(context)
                                                            .pop();
                                                      }),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10.w),
                                                    child:
                                                        CustomChoosePaymentWidget(
                                                          isActive: true,
                                                            text: "60 дней",
                                                            icon:
                                                                SvgImages.lock,
                                                            onTap: () {
                                                              GoRouter.of(
                                                                      context)
                                                                  .pop();
                                                            }),
                                                  ),
                                                  CustomChoosePaymentWidget(
                                                    isActive: true,
                                                      text: "90 дней",
                                                      icon: SvgImages.lock,
                                                      onTap: () {
                                                        GoRouter.of(context)
                                                            .pop();
                                                      }),
                                                ],
                                              ),
                                            ),
                                            CustomButton(
                                                text: 'Выбрать',
                                                onPressed: () {
                                                  GoRouter.of(context).pop();
                                                })
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          });
                        }),
                    SizedBox(
                      width: 10.w,
                    ),
                    CustomChooseRoleWidget(
                        text: "30% / 70%",
                        onTap: () {
                          setState(() {
                            currentIndex = 1;
                          });
                        },
                        isChoosed: currentIndex == 1),
                    SizedBox(
                      width: 10.w,
                    ),
                    CustomChooseRoleWidget(
                        text: "50% / 50%",
                        onTap: () {
                          setState(() {
                            currentIndex = 2;
                          });
                        },
                        isChoosed: currentIndex == 2),
                    SizedBox(
                      width: 10.w,
                    ),
                    CustomChooseRoleWidget(
                        text: "70% / 30%",
                        onTap: () {
                          setState(() {
                            currentIndex = 3;
                          });
                        },
                        isChoosed: currentIndex == 3)
                  ],
                ),
              ),
            ),
            Text(
              "Оплатите сумму",
              style: AppFonts.w700s36,
            ),
            Text(
              "Производитель получит первую часть сразу, а вторую - после отгрузки товара транспортной компании",
              style: AppFonts.w400s16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "3018 \$",
                        style: AppFonts.w700s20
                            .copyWith(color: AppColors.accentTextColor),
                      ),
                      Text(
                        "93600 ₽",
                        style: AppFonts.w700s20,
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "905,4 \$",
                        style: AppFonts.w700s20
                            .copyWith(color: AppColors.accentTextColor),
                      ),
                      Text(
                        "82912,01 ₽",
                        style: AppFonts.w700s20,
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "2112,6 \$",
                        style: AppFonts.w700s20
                            .copyWith(color: AppColors.accentTextColor),
                      ),
                      Text(
                        "193461,36  ₽",
                        style: AppFonts.w700s20,
                      )
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            CustomButton(
                text: "Оплатить",
                onPressed: () {
                  GoRouter.of(context).pushNamed("trackingFirst");
                })
          ],
        ),
      )),
    );
  }
}
