import 'package:flutter/material.dart';
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
import 'package:inposhiv/features/tracking/presentation/screens/seventh_tracking_screen.dart';
import 'package:inposhiv/resources/resources.dart';

class SixthTrackingScreen extends StatefulWidget {
  const SixthTrackingScreen({super.key});

  @override
  State<SixthTrackingScreen> createState() => _SixthTrackingScreen();
}

class _SixthTrackingScreen extends State<SixthTrackingScreen> {
  int currentIndex = 0;
  double progress = 0;

  int currentIndexOfData = 65;

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
                        Text(
                          "Этап 6",
                          style: AppFonts.w400s16,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.h),
                          child: Text(
                            "Приемка заказа",
                            style: AppFonts.w700s18,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.r)),
                            child: CustomProgressBar(
                              progress: currentIndexOfData,
                              text: "Заказ на месте",
                            ),
                          ),
                        ),
                        Text(
                          "Акт о выполненных работах",
                          style: AppFonts.w400s14.copyWith(
                              decoration: TextDecoration.underline,
                              color: AppColors.accentTextColor),
                        ),
                        Text(
                          "У вас 7 дней для оценки заказа",
                          style: AppFonts.w700s18,
                        ),
                        Text(
                          "Чтобы осмотреть его, оценить и написать в случае каких-то спорных моментов. ",
                          style: AppFonts.w400s16,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(SvgImages.document),
                            SizedBox(width: 10.w),
                            Expanded(
                              // Use Expanded to prevent overflow
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
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
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: CustomButton(
                            text: "Подтвердить",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SeventhTrackingScreen()));
                            },
                            sizedTemporary: true,
                            height: 50,
                          ),
                        ),
                        Center(
                          child: TextButton(
                              onPressed: () {
                                // showDialog(context: context, builder: (context)=> AlertDialog(
                                //   title: ,
                                // ));
                              },
                              child: Text(
                                "Подать апелляцию",
                                style: AppFonts.w400s16.copyWith(
                                    color: AppColors.accentTextColor,
                                    decoration: TextDecoration.underline),
                              )),
                        )
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
