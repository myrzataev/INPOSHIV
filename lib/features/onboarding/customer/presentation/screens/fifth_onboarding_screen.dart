import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/providers/role_provider.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:provider/provider.dart';

class FifthOnboardingScreen extends StatelessWidget {
  const FifthOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int role = Provider.of<RoleProvider>(context, listen: true).role;
    bool isCustomer = role == 0;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(),
              const Spacer(),
              Image.asset(
                Images.onboarding,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.only(top: 68.h),
                child: Text(
                  isCustomer
                      ? "А теперь давайте найдем для вас лучший швейный цех  по самым выгодным ценам! "
                      : "А теперь давайте создадим ваш профиль",
                  style: AppFonts.w700s36
                      .copyWith(height: 0.8, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: InkWell(
                    onTap: () {},
                    child: Text(
                      isCustomer
                          ? "Вы готовы сделать свой первый заказ?"
                          : "Для того, чтобы вы могли найти лучшие заказы на аукционе по самым выгодным ценам! Вы готовы?",
                      style: AppFonts.w400s16,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.h, top: 113.h),
                child: CustomButton(
                  text: "Да!",
                  onPressed: () {
                    GoRouter.of(context).pushNamed("navigateToTelegramScreen");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
