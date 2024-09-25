
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class CustomChooseImageButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final IconData icon;
  const CustomChooseImageButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Ink(
          height: 80.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(width: 1, color: AppColors.borderColor),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: Icon(
                    icon,
                    size: 24.w,
                  ),
                ),
                Text(
                  text,
                  style:
                      AppFonts.w700s20.copyWith(color: Colors.black),
                ),
              ],
            ),
          )),
    );
  }
}
