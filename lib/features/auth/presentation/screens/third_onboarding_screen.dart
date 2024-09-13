import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ThirdOnboardingScreen extends StatelessWidget {
  const ThirdOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                Text(
                  "Пройдите быструю регистрацию через telegram",
                  style: AppFonts.w700s36.copyWith(height: 0.8),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: InkWell(
                      onTap: () {
                        var url = Uri.parse("https://t.me/InposhivBot");
                        try {
                          launchUrl(url);
                        } catch (e) {
                          debugPrint(e.toString());
                        }
                      },
                      child: Text(
                        "Правила использования",
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
               GoRouter.of(context).pushNamed("chooseRole");
              },
            )
          ],
        ),
      ),
    );
  }
}
