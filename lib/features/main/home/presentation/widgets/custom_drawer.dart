import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchWidget(
                  onTap: () {
                    Scaffold.of(context).closeDrawer();
                  },
                  child: SvgPicture.asset(SvgImages.close)),
              Padding(
                padding: EdgeInsets.only(top: 60.h),
                child: TextButton(
                    onPressed: () {
                      GoRouter.of(context).pushNamed("aboutAppScreen");
                    },
                    child: Text(
                      "О приложении",
                      style: AppFonts.w400s16
                          .copyWith(color: AppColors.accentTextColor),
                    )),
              ),
              TextButton(
                  onPressed: () {
                    GoRouter.of(context).pushNamed("settings");
                  },
                  child: Text(
                    "Настройки",
                    style: AppFonts.w400s16
                        .copyWith(color: AppColors.accentTextColor),
                  )),
              TextButton(
                  onPressed: () {
                    GoRouter.of(context).pushNamed("faqScreen");
                  },
                  child: Text(
                    "Помощь",
                    style: AppFonts.w400s16
                        .copyWith(color: AppColors.accentTextColor),
                  )),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 20.h),
                child: InkWell(
                  onTap: () {
                    GoRouter.of(context).pushNamed("walletScreen");
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.containersGrey,
                        radius: 15.r,
                        child: Image.asset(
                          Images.money,
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Text(
                          "Кошелек",
                          style: AppFonts.w400s16
                              .copyWith(color: AppColors.accentTextColor),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  GoRouter.of(context).pushNamed("profileScreen");
                },
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 15.r,
                        backgroundColor: AppColors.containersGrey,
                        backgroundImage: const AssetImage(
                          Images.logo1,
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Text(
                        "Профиль",
                        style: AppFonts.w400s16
                            .copyWith(color: AppColors.accentTextColor),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
