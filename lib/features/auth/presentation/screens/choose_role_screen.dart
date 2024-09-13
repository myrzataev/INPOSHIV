import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_choice_container.dart';

class ChooseRoleScreen extends StatefulWidget {
  const ChooseRoleScreen({super.key});

  @override
  State<ChooseRoleScreen> createState() => _ChooseRoleScreenState();
}

class _ChooseRoleScreenState extends State<ChooseRoleScreen> {
  String? role;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: MediaQuery.of(context).size.height * 0.4,
            bottom: 30.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Выберите роль",
                  style: AppFonts.w700s36.copyWith(height: 0.8),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
                  child: Text(
                    "Войти как:",
                    style: AppFonts.w400s16.copyWith(height: 0.8),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomChooseRoleWidget(
                        isChoosed: role == "Производитель",
                        onTap: () {
                          setState(() {
                            role = "Производитель";
                          });
                        },
                        text: "Производитель",
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ), // Spacing between the containers
                    Expanded(
                      child: CustomChooseRoleWidget(
                        onTap: () {
                          setState(() {
                            role = "Заказчик";
                          });
                        },
                        isChoosed: role == "Заказчик",
                        text: "Заказчик",
                      ),
                    ),
                  ],
                )
              ],
            ),
            CustomButton(
              text: "Создать заказ",
              onPressed: () {
                GoRouter.of(context).pushNamed("takeSurvey");
              },
            )
          ],
        ),
      ),
    );
  }
}
