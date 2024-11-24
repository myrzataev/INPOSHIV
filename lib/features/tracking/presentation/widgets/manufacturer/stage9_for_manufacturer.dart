import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/orders_screen.dart';

class Stage9ForManufacturer extends StatelessWidget {
  final Function onTap;
  final Function onFeedBackButtonPressed;
  final Function(double rating) onQualityRating;
  const Stage9ForManufacturer({
    super.key,
    required this.currentIndexOfData,
    required this.onTap,
    required this.onFeedBackButtonPressed,
    required this.onQualityRating,
  });

  final int currentIndexOfData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.containersGrey,
          borderRadius: BorderRadius.circular(15.r)),
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Этап 9",
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
                child: const CustomProgressBar(
                  progress: 70,
                  text: "Закрытие заказа",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text(
                "Выберите уровень надежности заказчика",
                style: AppFonts.w700s18,
              ),
            ),
            Text(
              "Оцените уровень надежности производителя",
              style: AppFonts.w400s16,
            ),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 10.w),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: onQualityRating,
            ),
            const Spacer(),
            Center(
              child: TextButton(
                  onPressed: () => onFeedBackButtonPressed(),
                  child: Text(
                    "Оставить отзыв",
                    style: AppFonts.w400s16
                        .copyWith(color: AppColors.accentTextColor),
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: CustomButton(
                text: "Подтвердить",
                onPressed: () {
                  onTap();
                },
                sizedTemporary: true,
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
