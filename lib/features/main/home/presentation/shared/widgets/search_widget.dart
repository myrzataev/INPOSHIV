
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';

class CustomSearchWidget extends StatelessWidget {
  final Function onTap;
  final Widget child;
  const CustomSearchWidget({
    super.key,
    required this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      excludeFromSemantics: true,
      borderRadius: BorderRadius.circular(22.r),
      onTap: () {
        onTap();
      },
      child: CircleAvatar(
          radius: 22.h,
          backgroundColor: AppColors.containersGrey,
          child: child),
    );
  }
}
