import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/platform/platform_provider.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:provider/provider.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isAndroid = Provider.of<PlatformProvider>(context, listen: true)
            .platformIsAndroid ??
        false;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // The background image
            Positioned.fill(
              child: Image.asset(
                Images.map,
                fit: BoxFit.cover, // Cover the full width and height
              ),
            ),
            // The content at the bottom with rounded corners
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 310.h, // Height of the bottom container
                decoration: BoxDecoration(
                  color: Colors.white, // Background color for the container
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    
                    children: [
                      Text(
                        "С нами уже 6200 производств и более 1000 селлеров!",
                        style: AppFonts.w700s36.copyWith(height: 0.8),
                      ),
                      const Spacer(), // Pushes the button and link to the bottom
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "Пропустить ознакомление",
                            style: AppFonts.w400s16.copyWith(
                              color: AppColors.accentTextColor,
                              // decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      CustomButton(
                        text: "Начать",
                        onPressed: () {
                          GoRouter.of(context).pushNamed("secondOnBoarding");
                        },
                      ),
                      SizedBox(
                        height: isAndroid ? 10.h : 0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
