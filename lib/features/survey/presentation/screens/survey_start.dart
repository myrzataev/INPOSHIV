import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/providers/role_provider.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SurveyStartScreen extends StatelessWidget {
  const SurveyStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int role = Provider.of<RoleProvider>(context, listen: true).role;
    bool isCustomer = role == 1;
    final preferences = locator<SharedPreferences>();
   final ScrollController scrollController = ScrollController();
    final String? userName = preferences.getString("userName");
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(),
            const Spacer(),
            Text(
              "Спасибо за регистрацию! Ваше имя пользователя - $userName ",
              style: AppFonts.w400s16,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Text(
                "Для того, чтобы мы могли найти для вас подходящих ${isCustomer ? "производителей" : "заказчиков"}, пожалуйста, ответьте на несколько вопросов",
                style: AppFonts.w700s36
                    .copyWith(height: 1, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 113.h),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Пропустить",
                    style: AppFonts.w400s16
                        .copyWith(color: AppColors.accentTextColor),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h),
              child: CustomButton(
                text: "Начать",
                onPressed: () {
                  GoRouter.of(context).pushNamed("chooseSpecializationScreen");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
