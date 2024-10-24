import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class CustomOrderRowWithoutTextfield extends StatelessWidget {
  final String title;

  final String value;
  final String? additionalValue;
  const CustomOrderRowWithoutTextfield({
    super.key,
    required this.title,
    this.additionalValue,
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
              Expanded(
                child: Text(
                  title,
                  style: AppFonts.w400s16,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    value,
                    style: AppFonts.w400s16
                        .copyWith(color: AppColors.accentTextColor),
                  ),
                  additionalValue != null
                      ? Text(
                          additionalValue ?? "",
                          style: AppFonts.w400s16,
                        )
                      : const SizedBox.shrink()
                ],
              ),
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
