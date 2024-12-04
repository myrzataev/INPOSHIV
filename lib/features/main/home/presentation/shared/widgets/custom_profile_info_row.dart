
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class CustomProfileInfoRow extends StatelessWidget {
  final String name;
  final String value;
  const CustomProfileInfoRow({
    super.key,
    required this.name,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 5.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: AppFonts.w400s16,
              ),
              SelectableText(
                value,
                style:
                    AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
              )
            ],
          ),
          const Divider(
            color: AppColors.borderColor,
          )
        ],
      ),
    );
  }
}
