import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
    @override
  void initState() {
    super.initState();
    _initializeApp();
  }
    Future<void> _initializeApp() async {
    await Future.delayed(const Duration(seconds: 3)); // Simulate splash delay
    final preferences = locator<SharedPreferences>();
    bool isAuthorized = preferences.getString("userId") != null;
    if (mounted) {
      router.goNamed(isAuthorized ? "main" : "onBoarding");
    }
  }

  @override
  Widget build(BuildContext context) {
    // final preferences = locator<SharedPreferences>();
    // bool isAuthorized = preferences.getString("userId") != null;
    return Scaffold(
      body: FlutterSplashScreen.fadeIn(
        backgroundColor: AppColors.buttonGreenColor,
        onInit: () {
          // debugPrint("On Init");
        },
        onEnd: () {
          // isAuthorized
          //     ? router.pushReplacementNamed("main")
          //     : router.pushReplacementNamed("onBoarding");
        },
        childWidget: SizedBox(
          // height: 100.h,
          // width: 200.w,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                Images.logo,
                height: 125.h,
                width: 285.w,
              ),
              // Text(
              //   "by Berdi Begmenov",
              //   style:
              //       AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
              // )
            ],
          ),
        ),
        onAnimationEnd: () => debugPrint("On Fade In End"),
        // nextScreen: const OnboardingScreen(),
      ),
    );
  }
}
