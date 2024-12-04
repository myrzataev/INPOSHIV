import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:intl/intl.dart';

class MoneyWidget extends StatelessWidget {
  final int balance;
  const MoneyWidget({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    final String formattedBalance =
        NumberFormat("###,###", "en_US").format(balance).replaceAll(",", " ");
        final String concatenatedText = formattedBalance.length>8? "${formattedBalance.substring(0, 7)}...": formattedBalance;
    return Container(
      height: 44.h,
      decoration: BoxDecoration(
        color: AppColors.containersGrey,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              Images.money,
              height: 29.h,
              width: 29.w,
            ),
            Text(
              "$concatenatedText ₽",
              style:
                  AppFonts.w700s20.copyWith(color: AppColors.accentTextColor),
            ),
            const Icon(Icons.add)
          ],
        ),
      ),
    );
  }
}
