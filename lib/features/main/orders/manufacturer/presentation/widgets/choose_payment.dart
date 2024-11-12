import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class CustomChoosePaymentWidget extends StatelessWidget {
  final String text;
  final bool? isChoosed;
  final Function onTap;
  final String icon;
  final bool isActive;
  const CustomChoosePaymentWidget(
      {super.key,
      required this.text,
      required this.onTap,
      this.isChoosed,
      required this.icon,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        onTap: () {
          onTap();
        },
        child: Ink(
            height: 100.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(
                  width: 1,
                  color: (isChoosed ?? false)
                      ? Colors.black
                      : AppColors.borderColorGrey),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      icon,
                      color: isActive ? Colors.black : AppColors.borderColor,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    SizedBox(
                      width: 300.w,
                      child: Text(
                        text,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        style: AppFonts.w400s16.copyWith(
                            color: isActive
                                ? const Color(0xff101010)
                                : AppColors.regularGreyColor),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
