import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class CustomOrderDetailRow extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final String value;
  const CustomOrderDetailRow({
    super.key,
    required this.title,
    required this.controller,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                title,
                style: AppFonts.w400s16,
              ),
              SizedBox(
                width: 50.w,
              ),
              Expanded(
                child: TextField(
                  controller: controller,
                  // value,
                  style: AppFonts.w400s16
                      .copyWith(color: AppColors.accentTextColor),
                ),
              )
            ],
          ),
          const Divider(
            color: AppColors.borderColorGrey,
          ),
        ],
      ),
    );
  }
}
