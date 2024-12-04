
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class CustomHistoryCard extends StatelessWidget {
  final String status;
  final String nameOfGood;
  final int quantity;
  final String startDate;
  final String endDate;
  final int index;
  const CustomHistoryCard({
    super.key,
    required this.status,
    required this.nameOfGood,
    required this.quantity,
    required this.startDate,
    required this.endDate,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60.r),
              border: Border.all(width: 1.w, color: statusColor(status: status))),
          child: Padding(
            padding: EdgeInsets.all(8.0.w),
            child: Text(
              status,
              style: AppFonts.w400s16.copyWith(
                  color: statusColor(status: status), fontFamily: "SF Pro"),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "0$index.$nameOfGood",
              style:
                  AppFonts.w700s20.copyWith(color: AppColors.accentTextColor),
            ),
            Text(
              "$quantity шт",
              style: AppFonts.w400s16.copyWith(
                  color: AppColors.accentTextColor, fontFamily: "SF Pro"),
            )
          ],
        ),
        Text(
          "от $startDate – до $endDate",
          style: AppFonts.w400s16.copyWith(
              color: AppColors.regularGreyColor, fontFamily: "SF Pro"),
        )
      ],
    );
  }

  Color statusColor({required String status}) {
    switch (status) {
      case "Успешно":
        return AppColors.accentTextColor;
      case "Возврат":
        return AppColors.orange;
      case "Отказ":
        return AppColors.red;
      default:
        return AppColors.accentTextColor;
    }
  }
}
