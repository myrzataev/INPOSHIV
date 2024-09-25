import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

import 'package:inposhiv/features/about_app/presentation/widgets/custom_about_app_button.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: CustomSearchWidget(
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                  child: SvgPicture.asset(SvgImages.goback)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.h),
              child: CustomAboutAppButton(
                text: "Оферта",
                onTap: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: CustomAboutAppButton(
                text: "Безопасная сделка",
                onTap: () {
                  GoRouter.of(context).pushNamed("securedDealScreen");
                },
              ),
            ),
        
            CustomAboutAppButton(
              text: "Политика конфиденциальности",
              onTap: () {},
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Версия приложения",
                  style: AppFonts.w400s16,
                ),
                Text(
                  "1.0",
                  style: AppFonts.w400s16,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Center(
                child: Text(
                  "Разработано компанией",
                  style: AppFonts.w400s16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: Center(
                child: InkWell(
                  onTap: () {
                    launchUrl(Uri.parse("https://fortylines.io/home"));
                  },
                  child: Text(
                    "Fortylines",
                    style: AppFonts.w700s20.copyWith(
                        color: AppColors.accentTextColor,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
