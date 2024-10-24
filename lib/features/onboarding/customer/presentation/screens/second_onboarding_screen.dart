import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/platform/platform_provider.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/providers/role_provider.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/screens/third_onboarding_screen_manufacturer.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:provider/provider.dart';

class SecondOnboardingScreen extends StatelessWidget {
  const SecondOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int role = Provider.of<RoleProvider>(context, listen: true).role;
    bool isCustomer = role == 1;
    bool isAndroid = Provider.of<PlatformProvider>(context, listen: true)
            .platformIsAndroid ??
        false;
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
          children: [
            const SizedBox(),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 35.h),
              child: Image.asset(
                Images.onboardingimages,
                height: 350.h,
                width: 300.w,
              ),
            ),
            Text(
              "Система рекомендаций подберет для вас наиболее подходящего партнера",
              style: AppFonts.w700s36
                  .copyWith(height: 0.8, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h, top: 113.h),
              child: CustomButton(
                text: "Дальше",
                onPressed: () {
                  isCustomer
                      ? GoRouter.of(context).pushNamed("thirdOnBoarding")
                      : Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ThirdOnboardingScreenManufacturer()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
