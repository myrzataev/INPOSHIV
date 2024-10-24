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
import 'package:inposhiv/features/tracking/presentation/screens/finish_tracking_screen.dart';
import 'package:inposhiv/resources/resources.dart';

class SeventhTrackingScreen extends StatefulWidget {
  const SeventhTrackingScreen({super.key});

  @override
  State<SeventhTrackingScreen> createState() => _SeventhTrackingScreen();
}

class _SeventhTrackingScreen extends State<SeventhTrackingScreen> {
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
                        Text(
                          "Этап 7",
                          style: AppFonts.w400s16,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.h),
                          child: Text(
                            "Закрытие заказа",
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
                              text: "Финиш!",
                            ),
                          ),
                        ),
                        Text(
                          "Подтвердите и оцените качество заказа",
                          style: AppFonts.w700s18,
                        ),
                        Text(
                          "Насколько вы бы оценили сроки выполнения заказа?",
                          style: AppFonts.w400s16
                              .copyWith(color: AppColors.accentTextColor),
                        ),
                        RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: false,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 10.w),
                            itemBuilder: (context, index) {
                              return SvgPicture.asset(SvgImages.rating);
                            },
                            onRatingUpdate: (value) {}),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Text(
                            "Выберите уровень качества товара",
                            style: AppFonts.w400s16
                                .copyWith(color: AppColors.accentTextColor),
                          ),
                        ),
                        RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: false,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 10.w),
                            itemBuilder: (context, index) {
                              return SvgPicture.asset(SvgImages.rating);
                            },
                            onRatingUpdate: (value) {}),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Text(
                            "Оцените уровень надежности производителя",
                            style: AppFonts.w400s16
                                .copyWith(color: AppColors.accentTextColor),
                          ),
                        ),
                        RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: false,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 10.w),
                            itemBuilder: (context, index) {
                              return SvgPicture.asset(SvgImages.rating);
                            },
                            onRatingUpdate: (value) {}),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.h),
                          child: CustomButton(
                              text: "Подтвердить завершение",
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FinishTrackingScreen()));
                              }),
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
