
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class CustomWalletButton extends StatelessWidget {
  final Function onTap;
  final String text;
  final String icon;
  const CustomWalletButton({
    super.key, required this.onTap, required this.text, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            onTap();
          },
          child: CircleAvatar(
            radius: 18.r,
            backgroundColor: Colors.white,
            child: SvgPicture.asset(icon),
          ),
        ),
        Text(text, style: AppFonts.w400s16,)
      ],
    );
  }
}
