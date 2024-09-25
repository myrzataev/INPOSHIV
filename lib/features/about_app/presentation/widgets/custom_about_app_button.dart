import 'package:flutter/material.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class CustomAboutAppButton extends StatelessWidget {
  final Function onTap;
  final String text;

  const CustomAboutAppButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style:
                  AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
            ),
            const Divider(
              color: AppColors.regularGreyColor,
            ),
          ],
        ),
      ),
    );
  }
}
