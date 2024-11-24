import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/orders_screen.dart';
import 'package:inposhiv/resources/resources.dart';

class Stage2ForCustomer extends StatelessWidget {
  final Function onTap;
  final double currentIndexOfData;

  final List<Map<String, String?>> allComments;

  const Stage2ForCustomer({
    super.key,
    required this.currentIndexOfData,
    required this.onTap,

  
    required this.allComments,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40.h, width: 40.w, child: Image.asset(Images.tick)),
        Text(
          "Оплата прошла успешно!",
          style: AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
        ),
        Text(
          "Отслеживайте ваш заказ",
          style: AppFonts.w700s36,
          textScaler: const TextScaler.linear(0.75),
        ),
      Container(
  decoration: BoxDecoration(
    color: AppColors.containersGrey,
    borderRadius: BorderRadius.circular(15.r),
  ),
  child: Padding(
    padding: EdgeInsets.all(10.h),
    child: Column(
      mainAxisSize: MainAxisSize.max, // Ensure the Column takes all available space
      children: [
        // This will take the initial fixed space
        Text("Этап 2", style: AppFonts.w400s16),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 4.h),
          child: Text("Закуп ткани и крой", style: AppFonts.w700s18),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: CustomProgressBar(
              progress: currentIndexOfData.toInt(),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: SizedBox(
            height: 65.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.asset(Images.good1),
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 5.w),
              itemCount: 3,
            ),
          ),
        ),
        Text("Комментарии от производителя", style: AppFonts.w400s14),

        // Use Expanded to make this ListView take the remaining space
        SizedBox(
          height: 200.h,
          child: ListView.separated(
            shrinkWrap: true, // Ensures this ListView doesn't overflow
            itemBuilder: (context, index) {
              final currentItem = allComments[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currentItem["comment"] ?? "",
                    style: AppFonts.w400s16.copyWith(
                        color: AppColors.accentTextColor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: Text(currentItem["date"] ?? "",
                        style: AppFonts.w400s12),
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 3.h);
            },
            itemCount: allComments.length,
          ),
        ),

        // The button stays at the bottom and is not affected by scrolling
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: CustomButton(
            text: "Подтвердить",
            onPressed: () => onTap(),
            sizedTemporary: true,
            height: 50,
          ),
        ),
      ],
    ),
  ),
),

      ],
    );
  }
}
