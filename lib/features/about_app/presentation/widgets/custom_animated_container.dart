import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class CustomAnimatedContainer extends StatelessWidget {
  final String title;
  final String description;
  final Function onTap;
  final bool expanded;
  const CustomAnimatedContainer({
    super.key,
    required this.expanded,
    required this.title,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 250.w,
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: AppFonts.w700s16,
                  maxLines: 3,
                ),
              ),
              IconButton(
                icon: Icon(expanded ? Icons.remove : Icons.add),
                onPressed: () {
                  onTap();
                },
              )
            ],
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
            child: expanded
                ? Text(
                    description,
                    style: AppFonts.w400s16
                        .copyWith(color: AppColors.accentTextColor),
                  )
                : const SizedBox(),
          ),
          const Divider()
        ],
      ),
    );
  }
}
