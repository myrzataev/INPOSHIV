import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomePageScreen extends StatelessWidget {
  const WelcomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final preferences = locator<SharedPreferences>();
    final String? userName = preferences.getString("userName");
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 300.h),
              child: Text(
                "Спасибо за регистрацию! \nВаше имя пользователя $userName",
                style:
                    AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.h, bottom: 10.h),
              child: Text(
                "Давайте найдем вам лучший цех  по выгодным ценам",
                style: AppFonts.w700s36,
              ),
            ),
            Text(
              "Вы готовы создать свой первый заказ?",
              style:
                  AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20.h,
              ),
              child: InkWell(
                onTap: () {
                  GoRouter.of(context).goNamed("main");
                },
                child: Text(
                  "Пропустить",
                  style: AppFonts.w400s16.copyWith(
                      color: AppColors.accentTextColor,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            const Spacer(),
            CustomButton(text: "Готов!", onPressed: () {
              GoRouter.of(context).pushNamed("chooseImageSource");
            })
          ],
        ),
      )),
    );
  }
}
