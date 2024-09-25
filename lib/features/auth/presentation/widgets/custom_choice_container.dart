
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class CustomChooseRoleWidget extends StatelessWidget {
  final String text;
  final bool? isChoosed;
  final Function onTap;
  const CustomChooseRoleWidget(
      {super.key, required this.text, required this.onTap, this.isChoosed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r),),
      onTap: () {
        onTap();
      },
      child: Ink(
          height: 50.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
                width: 1,
                color: (isChoosed?? false)
                    ? Colors.black
                    : AppColors.borderColorGrey),
          ),
          child: Center(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.w),
              child: Text(
                text,
                style: AppFonts.w400s16.copyWith(color: const Color(0xff101010)),
              ),
            ),
          )),
    );
  }
}
