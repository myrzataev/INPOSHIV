import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/resources/resources.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String description;
  final Widget button;
  const CustomDialog({
    super.key,
    required this.title,
    required this.description,
    required this.button,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.cardsColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(SvgImages.info),
                IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: SvgPicture.asset(SvgImages.close))
              ],
            ),
            Text(
              title,
              style: AppFonts.w700s22
                  .copyWith(color: AppColors.accentTextColor, height: 1.2),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text(
                description,
                style:
                    AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
              ),
            ),
            button
          ],
        ),
      ),
    );
  }
}
