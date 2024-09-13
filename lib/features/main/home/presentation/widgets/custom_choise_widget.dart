import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class CustomChoiceWidget extends StatelessWidget {
  final String text;
  final Function onTap;
  final bool isSelelected;
  const CustomChoiceWidget({
    super.key,
    required this.isSelelected,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.r)),
      onTap: () {
        onTap();
      },
      child: Container(
          decoration: isSelelected
              ? BoxDecoration(
                  color: AppColors.buttonGreenColor,
                  borderRadius: BorderRadius.circular(60.r))
              : const BoxDecoration(),
          child: Padding(
            padding: EdgeInsets.all(10.h),
            child: Center(
                child: Text(
              text,
              style: AppFonts.w400s16.copyWith(
                  color: isSelelected
                      ? AppColors.accentTextColor
                      : AppColors.regularGreyColor,
                  fontFamily: "SF Pro"),
            )),
          )),
    );
  }
}
