import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/resources/resources.dart';

class SecondOnboardingScreen extends StatelessWidget {
  const SecondOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: MediaQuery.of(context).size.height * 0.3,
            bottom: 30.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  SVGImages.switchjusticon,
                  height: 53.h,
                  width: 87.h,
                ),
                Text(
                  "Все ваши транзакции защищены безопасной сделкой",
                  style: AppFonts.w700s36
                      .copyWith(height: 0.8, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Подробная информация о функции",
                        style: AppFonts.w400s16.copyWith(
                            color: AppColors.accentTextColor,
                            decoration: TextDecoration.underline),
                      )),
                ),
              ],
            ),
            CustomButton(
              text: "Начать регистрацию",
              onPressed: () {
                GoRouter.of(context).pushNamed("thirdOnBoarding");
              },
            )
          ],
        ),
      ),
    );
  }
}
