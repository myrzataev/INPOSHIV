import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_choice_container.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/orders_screen.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/widgets/comment_column.dart';
import 'package:inposhiv/resources/resources.dart';

class FinishTrackingScreen extends StatefulWidget {
  const FinishTrackingScreen({super.key});

  @override
  State<FinishTrackingScreen> createState() => _FinishTrackingScreen();
}

class _FinishTrackingScreen extends State<FinishTrackingScreen> {
  int currentIndex = 0;
  double progress = 0;

  int currentIndexOfData = 75;

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
                  GoRouter.of(context).pop();
                },
                child: SvgPicture.asset(SvgImages.goback),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.containersGrey,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Padding(
                    padding: EdgeInsets.all(10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          Images.tick,
                          height: 40.h,
                          width: 40.w,
                        ),
                        Text(
                          "Поздравляем с завершением заказа!",
                          style: AppFonts.w700s36,
                        ),
                        Center(
                          child: TextButton(
                              onPressed: () {
                               GoRouter.of(context).pushNamed("main");
                              },
                              child: Text(
                                "Перейти на главную",
                                style: AppFonts.w400s16.copyWith(
                                  color: AppColors.accentTextColor,
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: CustomButton(
                            text: "Создать новый заказ",
                            onPressed: () {
                               GoRouter.of(context).pushNamed("chooseImage");
                            },
                            sizedTemporary: true,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPaymentRow(String title, String usdAmount, String rubAmount) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
              ),
              Text(
                usdAmount,
                style:
                    AppFonts.w700s20.copyWith(color: AppColors.accentTextColor),
              ),
            ],
          ),
          Text(
            rubAmount,
            style: AppFonts.w700s20,
          ),
        ],
      ),
    );
  }
}
