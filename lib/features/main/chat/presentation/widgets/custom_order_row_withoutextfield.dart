import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class CustomOrderRowWithTextfield extends StatelessWidget {
  final String title;
  final TextInputType textInputType;
  final String hintText;
  final String value;
  final TextEditingController controller;
  final Function(String value) onChanged;
  const CustomOrderRowWithTextfield({
    super.key,
    required this.title,
    required this.onChanged,
    required this.value,
    required this.textInputType,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: AppFonts.w400s16,
                ),
              ),
              SizedBox(
                width: 52.w,
                child: TextField(
                  onChanged: (value) => onChanged(value),
                  controller: controller,
                  keyboardType: textInputType,
                  textAlign: TextAlign.right,
                  style: AppFonts.w400s16
                      .copyWith(color: AppColors.accentTextColor),
                  decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.containersGrey)),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.containersGrey)),
                      hintText: hintText,
                      hintTextDirection: TextDirection.rtl,
                      hintStyle: AppFonts.w400s16
                          .copyWith(color: AppColors.accentTextColor),
                      border: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.containersGrey))),
                ),
              ),
              Text(
                value,
                style:
                    AppFonts.w400s16.copyWith(color: AppColors.accentTextColor),
              ),
            ],
          ),
          const Divider(
            color: AppColors.borderColorGrey,
          ),
        ],
      ),
    );
  }
}
