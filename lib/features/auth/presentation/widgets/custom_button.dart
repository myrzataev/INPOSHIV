import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final int? height;
  final bool sizedTemporary;
  final bool isActive;
  final double? textSize;
  const CustomButton(
      {super.key,
      this.textSize,
      required this.text,
      this.height,
      required this.onPressed,
      this.sizedTemporary = false,
      this.isActive = true});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(sizedTemporary ? 10.r : 20.r),
      onTap: () {
        isActive ? onPressed() : null;
      },
      child: Container(
        width: double.infinity,
        height: sizedTemporary ? height?.h : 60.h,
        decoration: BoxDecoration(
            color: isActive
                ? AppColors.buttonGreenColor
                : AppColors.borderColorGrey,
            borderRadius: BorderRadius.circular(sizedTemporary ? 10.r : 20.r)),
        child: Center(
          child: Text(
            text,
            style: AppFonts.w400s16
                .copyWith(color: AppColors.accentTextColor, fontSize: textSize),
          ),
        ),
      ),
    );
  }
}
