import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required TabController tabController,
    required this.tabs,
  }) : _tabController = tabController;

  final TabController _tabController;
  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0.r),
      ),
      child: TabBar(
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        padding: EdgeInsetsDirectional.zero,
        controller: _tabController,
        dividerHeight: 0,
        tabs: tabs
            .map((element) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Tab(
                    text: element,
                  ),
                ))
            .toList(),
        indicator: BoxDecoration(
          color: AppColors.buttonGreenColor,
          borderRadius: BorderRadius.circular(25.0.r),
        ),
        labelColor: Colors.black,
        labelStyle: AppFonts.w400s16,
        unselectedLabelColor: Colors.black,
        indicatorPadding: EdgeInsets.zero,
      ),
    );
  }
}
