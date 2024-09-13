import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSplashScreen.fadeIn(
        backgroundColor: AppColors.buttonGreenColor,
        onInit: () {
          debugPrint("On Init");
        },
        onEnd: () {
          GoRouter.of(context).pushReplacementNamed("onBoarding");
        },
        childWidget: SizedBox(
          height: 100.h,
          width: 200.w,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "INPOSHIV",
                style: AppFonts.w700s36,
              ),
              Text(
                "by Berdi Begmenov",
                style:
                    AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
              )
            ],
          ),
        ),
        onAnimationEnd: () => debugPrint("On Fade In End"),
        // nextScreen: const OnboardingScreen(),
      ),
    );
  }
}
