import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/custom_dialog.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final prefs = locator<SharedPreferences>();
    return Row(
      children: [
        CustomSearchWidget(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: SvgPicture.asset(SvgImages.burgerMenu)),
        // CircleAvatar(
        //   radius: 22.h,
        //   backgroundColor: AppColors.circleAvatarsColor,
        //   child: Image.asset(Images.ava),
        // ),
        // Padding(
        //   padding: EdgeInsets.only(left: 6.w),
        //   child: const MoneyWidget(
        //     balance: 420000,
        //   ),
        // ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 6.w),
          child: CustomSearchWidget(
            onTap: () {
              // GoRouter.of(context).pushNamed("searchScreen");
              print(prefs.getString("userId"));
            },
            child: SvgPicture.asset(SvgImages.search),
          ),
        ),
        CustomSearchWidget(
          onTap: () {
            GoRouter.of(context).pushNamed("notifications");
          },
          child: const Icon(
            Icons.notifications_outlined,
            color: AppColors.accentTextColor,
          ),
        )
      ],
    );
  }
}
