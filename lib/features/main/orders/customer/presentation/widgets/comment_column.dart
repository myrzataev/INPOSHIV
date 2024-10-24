
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class CommentColumn extends StatelessWidget {
  final String comment;
  final String data;
  const CommentColumn({
    super.key, required this.comment, required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            comment,
            style: AppFonts.w400s16.copyWith(
                color: AppColors
                    .accentTextColor),
          ),
          Text(
           data,
            style: AppFonts.w400s12,
          )
        ],
      ),
    );
  }
}