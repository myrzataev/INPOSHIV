import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/platform/platform_provider.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:provider/provider.dart';

class FourthOnboardingScreen extends StatelessWidget {
  const FourthOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(),
            const Spacer(),
            Image.asset(
              Images.switchIcon,
              height: 53.h,
              width: 87.w,
            ),
            Text(
              "Безопасная сделка. С нами вы можете быть уверены, что все пройдет гладко",
              style: AppFonts.w700s36
                  .copyWith(height: 0.8, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Что такое безопасная сделка",
                    style: AppFonts.w400s16.copyWith(
                        color: AppColors.accentTextColor,
                        decoration: TextDecoration.underline),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h, top: 113.h),
              child: CustomButton(
                text: "Дальше",
                onPressed: () {
                  GoRouter.of(context).pushNamed("fifthOnboarding");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
