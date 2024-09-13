// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/resources/resources.dart';

class AppBottomNavigationBar extends StatefulWidget {
  final Widget child;
  const AppBottomNavigationBar({super.key, required this.child});

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        selectedIconTheme: const IconThemeData(color: AppColors.accentTextColor),
        iconSize: 18.w,
        selectedFontSize: 18.w,
        selectedItemColor: AppColors.accentTextColor,
        selectedLabelStyle: AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
        unselectedItemColor: AppColors.regularGreyColor,
        unselectedFontSize: 16.sp,
        unselectedLabelStyle: AppFonts.w400s16.copyWith(color: AppColors.regularGreyColor),
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            changeTab(value);
          },
          items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SVGImages.home,
              color: currentIndex == 0
                  ? AppColors.accentTextColor
                  : AppColors.regularGreyColor, // Control the color
            ),
            label: "Главная",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SVGImages.auctiion,
              color: currentIndex == 1
                  ? AppColors.accentTextColor
                  : AppColors.regularGreyColor,
            ),
            label: "Аукцион",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SVGImages.chat,
              color: currentIndex == 2
                  ? AppColors.accentTextColor
                  : AppColors.regularGreyColor,
            ),
            label: "Чат",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SVGImages.orders,
              color: currentIndex == 3
                  ? AppColors.accentTextColor
                  : AppColors.regularGreyColor,
            ),
            label: "Заказы",
          ),
          ]),
    );
  }

  void changeTab(int index) {
    switch (index) {
      case 0:
        context.go('/');

        break;
      case 1:
        context.go('/auction');
        break;
      case 2:
        context.go("/chat");
        break;
      case 3:
        context.go("/orders");
        break;
      default:
        context.go("/main");
        break;
    }
    setState(() {
      currentIndex = index;
    });
  }
}
