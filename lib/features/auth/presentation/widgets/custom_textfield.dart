import 'package:flutter/material.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class CustomTextForm extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  const CustomTextForm(
      {super.key,
      required this.hintText,
      required this.controller,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: (keyboardType == null) ? TextInputType.text : keyboardType,
      textAlign: TextAlign.center,
      style: AppFonts.w700s20.copyWith(color: const Color(0xffA0A0A0)),
      decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xffA0A0A0))),
          hintText: hintText,
          hintStyle: AppFonts.w700s20.copyWith(color: const Color(0xffA0A0A0)),
          border: const UnderlineInputBorder(borderSide: BorderSide(width: 1))),
    );
  }
}
