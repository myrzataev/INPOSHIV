import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/payment_row.dart';
import 'package:inposhiv/resources/resources.dart';

class FirstTrackingScreen extends StatefulWidget {
  const FirstTrackingScreen({super.key});

  @override
  State<FirstTrackingScreen> createState() => _FirstTrackingScreen();
}

class _FirstTrackingScreen extends State<FirstTrackingScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
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
                  child: SvgPicture.asset(SvgImages.goback),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: 10.h),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.containersGrey,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Padding(
                      padding: EdgeInsets.all(10.h),
                      child: Expanded(
                        // Wrap with Expanded
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Этап 1",
                                style: AppFonts.w400s16,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 20.h, top: 5.h),
                                child: Text(
                                  "Оплата первой части заказа",
                                  style: AppFonts.w700s18,
                                ),
                              ),
                              Text(
                                "Чек об оплате",
                                style: AppFonts.w400s16.copyWith(
                                  decoration: TextDecoration.underline,
                                  color: AppColors.accentTextColor,
                                ),
                              ),
                              Text(
                                "Комментарии от заказчика",
                                style: AppFonts.w400s14,
                              ),
                              Text(
                                "Прикрепил чеки об оплате",
                                style: AppFonts.w400s16.copyWith(
                                  color: AppColors.accentTextColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 20.h),
                                child: Text(
                                  "16.04.2024",
                                  style: AppFonts.w400s12,
                                ),
                              ),
                              // Add vertical padding to each section
                              PaymentRow(title: "30%", usdAmount: "905,4 \$", rubAmount: "82912,01 ₽"),
                              PaymentRow(title: "70%", usdAmount: "2112,6 \$", rubAmount: "193461,36 ₽"),
                              PaymentRow(title: "Общая сумма", usdAmount: "3018 \$", rubAmount: "276373,4 ₽"),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.h),
                                child: Text(
                                  "Добавьте комментарии и фотографии для производителя",
                                  style: AppFonts.w400s14,
                                ),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(SvgImages.document),
                                  SizedBox(width: 10.w),
                                  Expanded(
                                    // Use Expanded to prevent overflow
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5.w),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: "Сообщение",
                                          hintStyle: AppFonts.w400s16,
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    Images.send,
                                    height: 40.h,
                                    width: 40.w,
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5.h),
                                child: CustomButton(
                                  text: "Оплатить",
                                  onPressed: () {
                                    GoRouter.of(context)
                                        .pushNamed("secondTrackingScreen");
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
