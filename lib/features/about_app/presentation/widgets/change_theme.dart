import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class ChangeThemeWidget extends StatelessWidget {
  final String text;
  final String photo;
  final bool isChoosed;
  final Function onTap;
  const ChangeThemeWidget({
    super.key,
    required this.text,
    required this.photo,
    required this.isChoosed,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
       canRequestFocus: false,
      onTap: () {
        onTap();
      },
      child: SizedBox(
        width: 76.w,
        child: Column(
          children: [
            SvgPicture.asset(
              photo,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: isChoosed
                        ? AppColors.buttonGreenColor
                        : AppColors.containersGrey,
                    borderRadius: BorderRadius.circular(15.r)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 7.h,
                  ),
                  child: Center(
                    child: Text(
                      text,
                      style:
                          AppFonts.w400s16.copyWith(color: AppColors.mainBlack),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
