
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/resources/resources.dart';

class EndOfTracking extends StatelessWidget {
  const EndOfTracking({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
          color: AppColors.containersGrey,
          borderRadius: BorderRadius.circular(15.r)),
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Images.tick,
              height: 40.h,
              width: 40.w,
            ),
            Text(
              "Поздравляем с завершением заказа!",
              textScaler: TextScaler.linear(0.8),
              style: AppFonts.w700s36,
            ),
            Spacer(),
            Center(
              child: TextButton(
                  onPressed: () {
                   GoRouter.of(context).goNamed("main");
                  },
                  child: Text(
                    "Перейти на главную",
                    style: AppFonts.w400s16.copyWith(
                      color: AppColors.accentTextColor,
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: CustomButton(
                text: "Создать новый заказ",
                onPressed: () {
                   GoRouter.of(context).goNamed("chooseImage");
                },
                sizedTemporary: true,
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
