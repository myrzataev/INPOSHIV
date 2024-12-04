
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class NotificationCard extends StatelessWidget {
  final String title;
  final String description;
  final Function onTap;
  const NotificationCard({
    super.key,
    required this.title,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.containersGrey,
            borderRadius: BorderRadius.circular(10.r)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppFonts.w700s16,
              ),
              Text(
                description,
                maxLines: 3,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: AppFonts.w400s12,
              )
            ],
          ),
        ),
      ),
    );
  }
}
