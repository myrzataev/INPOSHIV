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
import 'package:inposhiv/features/tracking/presentation/screens/secon_part_tracking.dart';
import 'package:inposhiv/features/tracking/presentation/screens/second_part_tracking_screen.dart';
import 'package:inposhiv/features/tracking/presentation/screens/sixth_tracking_screen.dart';
import 'package:inposhiv/resources/resources.dart';

class FifthTrackingScreen extends StatefulWidget {
  const FifthTrackingScreen({super.key});

  @override
  State<FifthTrackingScreen> createState() => _FifthTrackingScreen();
}

class _FifthTrackingScreen extends State<FifthTrackingScreen> {
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
                          "Этап 5",
                          style: AppFonts.w400s16,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.h),
                          child: Text(
                            "Готово к отгрузке",
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
                              text: "Отгружается",
                            ),
                          ),
                        ),
                        Text(
                          "Комментарии от производителя",
                          style: AppFonts.w400s14.copyWith(),
                        ),
                        const CommentColumn(
                          comment: "Все готово к началу производства",
                          data: "18.04.2024",
                        ),
                        const CommentColumn(
                          comment:
                              "Было взято на проверку 500шт, все сделано хорошо",
                          data: "20.04.2024",
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
                                          SecondPartTrackingScreen()));
                            },
                            sizedTemporary: true,
                            height: 50,
                          ),
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
