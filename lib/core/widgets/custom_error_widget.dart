import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/resources/resources.dart';

class CustomErrorWidget extends StatelessWidget {
  final String? title;
  final String description;
  final VoidCallback onRefresh;

  const CustomErrorWidget(
      {super.key,
      this.title,
      required this.description,
      required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(SvgImages.sign),
              Text(
                title ?? "Что-то пошло не так",
                style: AppFonts.w700s36.copyWith(height: 0.9),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: AppFonts.w400s16
                      .copyWith(color: AppColors.accentTextColor),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(20.r),
                onTap: onRefresh,
                child: Ink(
                  height: 60.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all()),
                  child: IntrinsicWidth(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Center(
                        child: Text(
                          "Попробовать снова",
                          style: AppFonts.w400s16
                              .copyWith(color: AppColors.accentTextColor),
                        ),
                      ),
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
}
