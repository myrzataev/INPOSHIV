import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/providers/role_provider.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:provider/provider.dart';

class EndOfSurveyScreen extends StatelessWidget {
  const EndOfSurveyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final role = Provider.of<RoleProvider>(context).role;
    bool isCustomer = role == 1;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          // top: MediaQuery.of(context).size.height * 0.3,
          // bottom: 30.h
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h),
              child: Text(
                "Спасибо за ваши ответы!",
                style: AppFonts.w400s16,
              ),
            ),
            Text(
              isCustomer
                  ? "Давайте создадим ваш первый заказ!"
                  : "Давайте создадим ваш профиль!",
              style: AppFonts.w700s36
                  .copyWith(height: 0.8, fontWeight: FontWeight.bold),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 113.h),
                child: isCustomer
                    ? TextButton(
                        onPressed: () {},
                        child: Text(
                          "Пропустить",
                          style: AppFonts.w400s16
                              .copyWith(color: AppColors.accentTextColor),
                        ))
                    : const SizedBox(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 20.h,
              ),
              child: CustomButton(
                text: isCustomer ? "Создать заказ" : "Создать профиль",
                onPressed: () {
                  GoRouter.of(context).pushNamed("chooseImageSource");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
