import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/providers/size_provider.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_textfield.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:provider/provider.dart';

class SetQuantityWithoutSizeScreen extends StatelessWidget {
  const SetQuantityWithoutSizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController quantityController = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
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
                            "Шаг 4 ",
                            style: AppFonts.w400s16.copyWith(
                                fontFamily: "SF Pro",
                                color: const Color(0xff324D19)),
                          ),
                          Text(
                            "из 5",
                            style:
                                AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Укажите размерный ряд и количество товара",
                      style: AppFonts.w700s36
                          .copyWith(height: 0.8, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: Text(
                        "Минимальное количество товара равно 49 ед",
                        style: AppFonts.w400s16.copyWith(fontFamily: "SF Pro"),
                      ),
                    ),
                    CustomTextForm(
                      hintText: "49",
                      controller: quantityController,
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            CustomButton(
                text: "Дальше",
                onPressed: () {
                  if ((int.tryParse(quantityController.text) ?? 0) < 49) {
                    showDialog(
                        context: context,
                        builder: (context) => Dialog(
                              backgroundColor: AppColors.cardsColor,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.w, vertical: 20.h),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SvgPicture.asset(SvgImages.info),
                                        IconButton(
                                            onPressed: () {
                                              GoRouter.of(context).pop();
                                            },
                                            icon: SvgPicture.asset(
                                                SvgImages.close))
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.h),
                                      child: Text(
                                        "Минимальное количество товара равно 49 ед",
                                        style: AppFonts.w700s20.copyWith(
                                            color: AppColors.accentTextColor),
                                      ),
                                    ),
                                    InkWell(
                                      borderRadius: BorderRadius.circular(10.r),
                                      onTap: () {
                                        GoRouter.of(context).pop();
                                      },
                                      child: Ink(
                                        height: 40.h,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                            border: Border.all(
                                                color: Colors.green)),
                                        child: Center(
                                          child: Text(
                                            "Понятно",
                                            style: AppFonts.w400s16.copyWith(
                                                color:
                                                    AppColors.accentTextColor),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ));
                  } else {
                     Provider.of<SizeProvider>(context, listen: false)
                            .setTotalQuantity(
                          total: (int.tryParse(quantityController.text) ?? 0),
                        );
                    GoRouter.of(context).pushNamed("setPriceScreen",
                        queryParameters: {"quantity": quantityController.text});
                  }
                })
          ],
        ),
      )),
    );
  }
}
