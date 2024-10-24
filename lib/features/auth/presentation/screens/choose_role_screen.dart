import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/providers/role_provider.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_choice_container.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/screens/second_onboarding_screen_for_customer.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:provider/provider.dart';

class ChooseRoleScreen extends StatefulWidget {
  const ChooseRoleScreen({super.key});

  @override
  State<ChooseRoleScreen> createState() => _ChooseRoleScreenState();
}

class _ChooseRoleScreenState extends State<ChooseRoleScreen> {
  int role = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 35.h),
              child: Image.asset(
                Images.onboardingimages1,
                height: 88.h,
                width: 206.w,
              ),
            ),
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
                    isChoosed: role == 0,
                    onTap: () {
                      setState(() {
                        role = 0;
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
                        role = 1;
                      });
                    },
                    isChoosed: role == 1,
                    text: "Заказчик",
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(bottom: 20.h, top: 113.h),
                child: CustomButton(
                  text: "Создать заказ",
                  onPressed: () {
                    Provider.of<RoleProvider>(context, listen: false)
                        .changeRole(role);
                    role == 1
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SecondOnboardingScreenForCustomer()))
                        : GoRouter.of(context).pushNamed("secondOnBoarding");
                  },
                )),
          ],
        ),
      ),
    );
  }
}
