import 'package:flutter/material.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class ChangePasswordTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final String? Function(String? value)? validator;
  const ChangePasswordTextField({
    super.key,
    required this.labelText,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: AppFonts.w500s18,
      cursorColor: AppColors.grey,
      validator: (value) => validator!(value),
      decoration: InputDecoration(
          labelText: labelText,
          labelStyle: AppFonts.w400s16,
          hintText: "*********",
          hintStyle: AppFonts.w400s16.copyWith(color: AppColors.grey),
          disabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.grey)),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.grey)),
          border: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.grey))),
    );
  }
}
