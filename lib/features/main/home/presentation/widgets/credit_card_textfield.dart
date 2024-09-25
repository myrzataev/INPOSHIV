
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class CreditCardTextField extends StatelessWidget {
  final String name;
  final String hintText;
  final List<TextInputFormatter> textInputFormatter;
  final TextEditingController controller;
  final TextInputType textInputType;
  const CreditCardTextField({
    super.key,
    required this.name,
    required this.hintText,
    required this.textInputFormatter,
    required this.controller,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            name,
            style: AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
          ),
          TextField(
            controller: controller,
            cursorColor: AppColors.regularGreyColor,
            keyboardType: textInputType,

            style: AppFonts.w700s20,
            inputFormatters: textInputFormatter,

            // MaskedInputFormatter("#### #### #### ####"),

            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: AppFonts.w700s20,
                border: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.regularGreyColor)),
                focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.regularGreyColor))),
          )
        ],
      ),
    );
  }
}
